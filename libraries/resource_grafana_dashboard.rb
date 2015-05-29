require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class GrafanaDashboard < Chef::Resource::LWRPBase
      self.resource_name = :grafana_dashboard
      actions :create, :create_if_missing, :delete
      default_action :create_if_missing

      attribute :host, kind_of: String, default: 'localhost'
      attribute :port, kind_of: String, default: '3000'
      attribute :user, kind_of: String, default: 'admin'
      attribute :password, kind_of: String, default: 'admin'
      attribute :source_name, kind_of: String, name_attribute: true, required: true
      attribute :source, kind_of: String, default: nil
      attribute :path, kind_of: String, default: nil
      attribute :overwrite, kind_of: [TrueClass, FalseClass], default: true
      # attribute :dashboard, kind_of: Hash, default: Hash.new
    end
  end
end
