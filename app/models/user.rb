class User < ApplicationRecord
  def self.create_user_by_params(params)
    user = nil
    username, password, realname, phone, email = params.values_at(:username, :password, :realname, :phone, :email)
    if (username && password && realname).present?
      user = User.create
      user.username = username
      user.password = password
      user.realname = realname
      user.phone = phone
      user.email = email
      user.save!
    end
    user
  end

  def self.query_user_by_params(params)
    user = nil
    id = params[:id]
    user = User.find_by_id(id)
    user
  end
end
