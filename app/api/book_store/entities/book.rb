module BookStore
  module Entities
    class Book < Grape::Entity
      expose :isbn
      expose :title #, if: lambda{ |user, option| binding.pry; 1 == 1}
      expose :stock, documentation: { type: "String", desc: "Status update text." }
    end
  end
end
