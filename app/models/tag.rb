class Tag < ApplicationRecord
    has_many :taggings, :dependent => :delete_all
    has_many :posts, through: :taggings

    def to_s #Overriding default to_s method to return tag :name instead of tag reference
        name
    end

end
