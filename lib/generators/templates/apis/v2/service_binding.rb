module <%= plural_name.singularize.classify %>
  module V2
    class ServiceBinding < Grape::API
      resource :service_instances do
        route_param :instance_id do
          resource :service_bindings do
            desc 'PUT /v2/service_instances/:instance_id/service_bindings/:binding_id'
            # Bind service
            # 201 Created Binding has been created.
            # 200 OK the binding already exists and requested parameters are identical to the existing binding.
            # 409 Conflict the requested binding already exists.
            # 422 Unprocessable Entity
            put '/:binding_id' do
              # TODO Write code to return HTTP status code for create service binding result.
            end

            desc 'DELETE /v2/service_instances/:instance_id/service_bindings/:binding_id'
            # Unbinding service
            # 200 OK Binding was deleted.
            # 410 Gone Binding does not exist.
            put '/:binding_id' do
              # TODO Write code to return HTTP status code for delete service binding result.
            end
          end
        end
      end
    end
  end
end