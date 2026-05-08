module Api
  module V1
    class HelloController < ApplicationController
      def world
        render json: { message: 'Hello, World!' }
      end
    end
  end
end
