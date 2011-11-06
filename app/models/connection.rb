class Connection
  include Mongoid::Document
  field :name, :type => String
  field :url, :type => String
  field :port, :type => String
end
