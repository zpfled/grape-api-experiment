require_relative 'config'
require 'sinatra'
require 'grape'


class GrapeApi < Grape::API
    version 'v1', using: :header, vendor: 'people'
    format :json
    prefix :api

    helpers do
    end

    resource :records do
      desc "Return a public timeline."
      get :index do
        Person.all
      end
    end
  end

# Terminal App
# app = PeopleController.new(ARGV[0])
# app.execute

# API
class Api < Sinatra::Base
  use GrapeApi
end

get "/" do
  render Api.index
end