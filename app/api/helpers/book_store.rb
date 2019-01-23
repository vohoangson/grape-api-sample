module Helpers
  module BookHelper
    extend Grape::API::Helpers

    def book_options
      binding.pry
    end
  end
end
