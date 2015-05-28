require 'representative/json'

module ApiV1
  module Presenters
    module Users
      class Show

        def initialize(user)
          @user = user
        end

        def render
          Representative::Json.new do |r|
            r.element :user, @user do
              r.element :id
              r.element :name
              r.element :gender
              r.element :about
              r.element :image_url
            end
          end.to_s
        end
      end
    end
  end
end
