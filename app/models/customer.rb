class Customer < ActiveRecord::Base
    validates :family_name,
        presence: true, length: { maximum: 20 }
    calidates :given_name,
        presence: true, length { maximum: 20 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/index
    validates :email
        presence :true, format: { with: VALID_EMAIL_REGEX }, uniquness: true
    def full_name
        # return family_name + given_nameの略
        family_name + given_name
    end
end
