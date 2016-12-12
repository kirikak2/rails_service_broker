module <%= plural_name.singularize.classify %>
  module V2
    class Catalog < Grape::API
      resource :catalog do
        desc 'GET /v2/catalog'
        get '/', jbuilder: '<%= plural_name.singularize %>/v2/catalog.json' do
          @services = YAML.load_file(File.join(Rails.root, 'config', '<%= plural_name.singularize %>_service.yml'))
        end
      end
    end
  end
end

