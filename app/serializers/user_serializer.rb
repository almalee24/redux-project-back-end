class UserSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :username, :name, :current_order, :admin
end
