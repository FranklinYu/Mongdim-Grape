guard :rspec, cmd: 'rspec' do
  watch('app.rb') { 'spec' }
  watch('config.ru') { 'spec' }
  watch(%r{^spec/.+_spec\.rb$})
end
