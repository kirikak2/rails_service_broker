module <%= plural_name.singularize.classify %>
  module V2
    class ServiceBinding < Grape::API
      resource :service_instances do
        route_param :instance_id do
          resource :service_bindings do
            desc 'PUT /<%= plural_name.singularize %>/v2/service_instances/:instance_id/service_bindings/:binding_id'
            # Bind service
            # 201 Created Binding has been created.
            # 200 OK the binding already exists and requested parameters are identical to the existing binding.
            # 409 Conflict the requested binding already exists.
            # 422 Unprocessable Entity
            put '/:binding_id' do
              # TODO Write code to return HTTP status code for create service binding result.
              return {
                credentials: {
                },
                syslog_drain_url: "http://syslog_drain_url", # this parameter is optional.
                route_service_url: "http://route_service_url" # If you create route service broker, this parameter must be need.
              }
            end

            desc 'DELETE /<%= plural_name.singularize %>/v2/service_instances/:instance_id/service_bindings/:binding_id'
            # Unbinding service
            # 200 OK Binding was deleted.
            # 410 Gone Binding does not exist.
            delete '/:binding_id' do
              # TODO Write code to return HTTP status code for delete service binding result.
              return { }
            end
          end
        end
      end
    end
  end
end
