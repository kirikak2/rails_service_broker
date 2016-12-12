module <%= plural_name.singularize.classify %>
  module V2
    class ServiceInstance < Grape::API
      resource :service_instances do
        desc 'PUT /<%= plural_name.singularize %>/v2/service_instances/:instance_id'
        # Catalog Management
        # Status Code
        # 200 OK The expected response body is below.
        put '/:instance_id' do
          # TODO Write code to return HTTP status code for create service instance
          return {
            dashboard_url: "http://path.to/dashboard_url",
            operation: "create in progress" # TODO 'operation' field is optional.
          }
        end

        desc 'GET /<%= plural_name.singularize %>/v2/service_instances/:instance_id/last_opration'
        # Polling Last Operation(async only)
        # 200 OK The expected response body is below.
        # 410 GONE Appropriate only for asynchronous delete requests.
        get '/:instance_id/last_operation' do
          # TODO Write code to return HTTP status code for create service progress(optional)
          return {
            operation: "create in progress" # TODO 'operation' field is optional
          }
        end

        desc 'PATCH /<%= plural_name.singularize %>/v2/service_instances/:instance_id'
        # Updating a Service Instance
        # 200 OK New plan is effective.
        # 202 Accepted Service instance update is in progress.
        # 422 Unprocessable entity May be returned if the particular plan change requested is not supported.
        patch '/:instance_id' do
          # TODO Write code to return HTTP status code for update service instance(optional)
          return {
            operation: "update in progress" # TODO 'operation' field is optional
          }
        end

        desc 'DELETE /<%= plural_name.singularize %>/v2/service_instances/:instance_id'
        # Deprovisioning
        # 200 OK Service instance was deleted.
        # 202 Accepted Service instance deletion is in progress.
        # 410 Gone The service instance does not exist.
        # 422 Unprocessable Entity
        delete '/:instance_id' do
          # TODO Write code to return HTTP status code for delete service instance
          return {
            operation: "delete in progress" # TODO 'operation' field is optional
          }
        end
      end
    end
  end
end
