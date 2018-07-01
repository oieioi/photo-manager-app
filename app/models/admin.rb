class Admin
  include ActiveModel::Model
  attr_accessor :name, :password

  def login_valid?
    name == ENV['ADMIN_NAME'] && password == ENV['ADMIN_PASSWORD']
  end
end
