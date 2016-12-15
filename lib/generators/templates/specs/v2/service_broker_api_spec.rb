require 'rails_helper'

RSpec.describe "ServiceBrokerApis", type: :request do
  describe "GET /<%= plural_name.singularize %>/v2/catalog" do
    subject { get "/<%= plural_name.singularize %>/v2/catalog" }

    it "works! (now write some real specs)" do
      subject
      expect(response).to have_http_status(200)
    end
  end

  describe "PUT /<%= plural_name.singularize %>/v2/service_instances/:instance_id" do
    let(:instance_id) { SecureRandom.uuid }
    let(:organization_guid) { SecureRandom.uuid }
    let(:space_guid) { SecureRandom.uuid }
    let(:parameters) { { } }

    subject do
      put "/<%= plural_name.singularize %>/v2/service_instances/#{instance_id}",
        params: { organization_guid: organization_guid,
                  plan_id: "<%= service_id %>",
                  service_id: "<%= plan_id %>",
                  space_guid: space_guid,
                  parameters: parameters }
    end

    it "return json with dashbaord_url" do
      subject
      json = JSON.parse(response.body)
      expect(json["dashboard_url"]).to eq("http://path.to/dashboard_url")
    end
  end

  describe "DELETE /<%= plural_name.singularize %>/v2/service_instances/:instance_id" do
    let(:instance_id) { SecureRandom.uuid }
    subject do
      delete "/<%= plural_name.singularize %>/v2/service_instances/#{instance_id}",
        params: {
          service_id: "<%= service_id %>",
          plan_id: "<%= plan_id %>"
        }
    end
    it{ subject; expect(response.status).to eq(200) }
    it{ subject; expect(response.body).to eq("{}") }
  end

  describe "PUT /<%= plural_name.singularize %>/v2/service_instances/:instance_id/service_bindings/:binding_id" do
    let(:instance_id){ SecureRandom.uuid }
    let(:app_guid){ SecureRandom.uuid }
    let(:binding_id){ SecureRandom.uuid }

    subject do
      put "/<%= plural_name.singularize %>/v2/service_instances/#{instance_id}/service_bindings/#{binding_id}",
        params: {
          service_id: "<%= service_id %>",
          plan_id: "<%= plan_id %>",
          app_guid: app_guid
        }
    end

    it{ subject; expect(response.status).to eq(200) }
  end

  describe "DELETE /v2/service_instances/:instance_id/service_bindings/:binding_id" do
    let(:instance_id){ SecureRandom.uuid }
    let(:binding_id){ SecureRandom.uuid }

    subject do
      delete "/<%= plural_name.singularize %>/v2/service_instances/#{instance_id}/service_bindings/#{binding_id}",
        params: {
          service_id: "<%= service_id %>",
          plan_id: "<%= plan_id %>"
        }
    end

    it{ subject; expect(response.status).to eq(200) }
  end
end

