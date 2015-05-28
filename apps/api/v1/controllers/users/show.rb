module ApiV1
  module Controllers
    module Users
      ##
      # Return user with id
      #
      # GET /api/v1/users
      #
      # example:
      #
      #   curl -i -H "Accept: application/json" http://0.0.0.0:2300/api/v1/users/:id
      #
      #   status
      #   => 200
      #
      class Show
        include ApiV1::Action
        accept :json

        def call(params)
          user = UserRepository.find(params[:id])
          self.body = ApiV1::Presenters::Users::Show.new(user).render
        end
      end
    end
  end
end
