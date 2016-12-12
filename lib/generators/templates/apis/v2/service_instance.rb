module <%= plural_name.singularize.classify %>
  module V2
    class ServiceInstance < Grape::API
      resource :service_instances do
        desc 'PUT /v2/service_instances/:instance_id'
        # Catalog Management
        # Status Code
        # 200 OK The expected response body is below.
        put '/:instance_id' do
          # TODO Write code to return HTTP status code for create service instance
        end

        desc 'GET /v2/service_instances/:instance_id/last_opration'
        # Polling Last Operation(async only)
        # 200 OK The expected response body is below.
        # 410 GONE Appropriate only for asynchronous delete requests.
        get '/:instance_id/last_operation' do
          # TODO Write code to return HTTP status code for create service progress(optional)
        end

        desc 'PATCH /v2/service_instances/:instance_id'
        # Updating a Service Instance
        # 200 OK New plan is effective.
        # 202 Accepted Service instance update is in progress.
        # 422 Unprocessable entity May be returned if the particular plan change requested is not supported.
        patch '/:instance_id' do
          # TODO Write code to return HTTP status code for update service instance(optional)
        end

        desc 'DELETE /v2/service_instances/:instance_id'
        # Deprovisioning
        # 200 OK Service instance was deleted.
        # 202 Accepted Service instance deletion is in progress.
        # 410 Gone The service instance does not exist.
        # 422 Unprocessable Entity
        delete '/:instance_id' do
          # TODO Write code to return HTTP status code for delete service instance
        end
      end
    end
  end
end
