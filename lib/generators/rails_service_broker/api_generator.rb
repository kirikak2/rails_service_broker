module RailsServiceBroker
  class ApiGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../../templates', __FILE__)
    argument :api_version, type: :string, default: "v2"
    argument :api_dir, type: :string, default: "apis"
    argument :service_id, default: SecureRandom.uuid
    argument :plan_id, default: SecureRandom.uuid

    def add_template_grape_files_and_spec
      template "apis/base.rb", "app/#{api_dir}/#{plural_name.singularize}/base.rb"
      template "apis/#{api_version}/base.rb", "app/#{api_dir}/#{plural_name.singularize}/#{api_version}/base.rb"
      template "apis/#{api_version}/catalog.rb", "app/#{api_dir}/#{plural_name.singularize}/#{api_version}/catalog.rb"
      template "apis/#{api_version}/service_binding.rb", "app/#{api_dir}/#{plural_name.singularize}/#{api_version}/service_binding.rb"
      template "apis/#{api_version}/service_instance.rb", "app/#{api_dir}/#{plural_name.singularize}/#{api_version}/service_instance.rb"
      template "specs/#{api_version}/service_broker_api_spec.rb", "spec/requests/#{api_dir}/#{plural_name.singularize}/#{api_version}/service_broker_api_spec.rb"
    end

    def add_template_service_yaml
      template "config/service.yml", "config/#{plural_name.singularize}_service.yml"
    end

    def add_template_jbuilder_files
      template "views/#{api_version}/catalog.json.jbuilder", "app/views/api/#{plural_name.singularize}/v2/catalog.json.jbuilder"
    end

    def add_routes
      route "mount #{plural_name.singularize.classify}::Base => '/#{plural_name.singularize}'"
    end
  end
end
