require 'grape'

module Mongdim
  class API < Grape::API
    version 'v1', using: :header, vendor: 'mongdim'
    format :json

    resource :items do
      desc 'Return list of items.'
      get do
        [
          {id: 1, name: 'blue shirt', price: 3}
        ]
      end

      desc 'Return an item.'
      params do
        requires :id, type: Integer, desc: 'Item id.'
      end
      route_param :id do
        get do
          {id: 1, name: 'blue shirt', price: 3}
        end
      end
    end
  end
end

run Mongdim::API
