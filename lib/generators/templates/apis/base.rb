module <%= plural_name.singularize.classify %>
  class Base < Grape::API
    mount V2::Base
  end
end
