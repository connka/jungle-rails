class Review < ActiveRecord::Base

    belongs_to :user
    belongs_to :product

    validates :rating, presence: true
    validates :desciption, presence: true
    
end
