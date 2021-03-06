class Post < ApplicationRecord
    has_many :comments, :dependent => :delete_all
    has_many :taggings, :dependent => :delete_all
    has_many :tags, through: :taggings

    belongs_to :user

    has_many_attached :uploads
    
    has_rich_text :body

    
    def tag_list
        tags.join(', ')
    end

    def tag_list=(tag_string)
        tag_names = tag_string.split(',').collect{|s| s.strip.downcase}.uniq

        new_or_found_tags = tag_names.collect{|name| Tag.find_or_create_by(name: name)}

        self.tags = new_or_found_tags
    end
end
