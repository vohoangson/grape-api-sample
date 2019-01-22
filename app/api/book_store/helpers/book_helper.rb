module BookStore
  module Helpers
    class BookHelper < Grape::API::Helpers
      def book_options
        binding.pry
        {
          title: params[:book][:title].uppercase
        }
      end
    end
  end
end
