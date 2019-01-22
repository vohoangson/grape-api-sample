module BookStore
  module V1
    class Books < Grape::API
      # helpers BookStore::Helpers::BookHelper
      version 'v1', using: :path
      format :json
      prefix :api

      params do
        requires :book, type: Hash do
          requires :isbn
          requires :title
          requires :stock
        end
      end

      resource :books do
        desc 'Return list of books'
        get do
          books = Book.all
          present books, with: Entities::Book
        end

        desc 'Create new book'
        post do
          { 'declared_params' => declared(params) }
          binding.pry
        end

        route_param :id do
          get do
            book = Book.find(params[:id])
            present book, with: Entities::Book
          end
        end
      end
    end
  end
end
