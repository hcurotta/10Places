class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid, :email
  
  has_many :lists
  has_many :subscriptions
  
  def self.create_with_omniauth(auth)
    
    create! do |user|
      if auth["provider"]== 'twitter'
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["info"]["name"]
      elsif auth["provider"]== 'facebook'
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["info"]["name"]
        user.email = auth["info"]["email"] 
      end
    end
  end
  
  def firstname
    self.name.split(' ').first
  end
  
  def lastname
    self.name.split(' ').last
  end
  
end
