require 'grape'

module API
  class PeopleController < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    resource :records do
      desc "Return a public timeline."
      get do
        Person.all.map(&:serialize)
      end
    end
  end
end