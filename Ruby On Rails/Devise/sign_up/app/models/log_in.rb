class LogIn < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
        #  :omniauthable, omniauth_providers: %i[facebook] ,
         :omniauthable, :omniauth_providers => [:github]

         def self.from_omniauth(auth)
           #binding.pry
           where(provider: auth.provider , uid: auth.uid).first_or_create do |login|
             login.provider  = auth.provider
             login.name  = auth.info.name
             login.uid = auth.uid
             login.email = auth.info.email
             login.password  = Devise.friendly_token[0,20]
           end
         end
end

