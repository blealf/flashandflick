class Gallery < ApplicationRecord
    self.per_page = 4

    validates :photos, :tag_id, presence: true
    
    has_many_attached :photos
    belongs_to :tag
    
    validate :correct_image_type    

    def self.type
        return ["Photography", "Design"]
    end

    def self.usage
        return [ 'Home Page', 'Gallery Page Top', 'Photography Page Top', 'Design Page Top']
    end

    def self.front
        return Gallery.where(usage: "Home Page").all
    end

    def self.get_photos(gallery)
        @photos = []

        gallery.each do |p|
            if p.photos != nil
                p.photos.each do |photo|
                    @photos.push(photo)
                end
            end
        end
        return @photos
    end

    
    private
        def correct_image_type
            if !photos.attached?
                errors.add(:photos, "Nothing attached")
            end
        end
end
