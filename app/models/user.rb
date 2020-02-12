class User < ApplicationRecord
    has_many :compositions

    validates :email, {presence: true, uniqueness: true}
    validates :name, presence: true
end
