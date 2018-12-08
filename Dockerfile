FROM alpine:3.8

WORKDIR /srv
RUN apk add ruby ruby-bundler ruby-bigdecimal ruby-json
ADD gems.rb .
ADD gems.locked .
ENV RACK_ENV production
RUN apk add --virtual .build build-base ruby-dev libffi-dev && \
	bundle install --deployment --without development test && \
	apk del .build
ADD . .
CMD ["bundle", "exec", "rackup"]
EXPOSE 9292
