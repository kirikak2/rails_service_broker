module <%= plural_name.singularize.classify %>
  module V2
    class Base < Grape::API
      version '<%= api_version %>'
      format :json
      formatter :json, Grape::Formatter::Jbuilder

      mount Catalog
      mount ServiceBinding
      mount ServiceInstance
    end
  end
end
