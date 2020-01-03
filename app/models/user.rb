class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 50}
    validates :email, presence: true, length: {maximum: 200}
    # def formatted_email
    #     "#{@name} <#{@email}>"
    # end
end