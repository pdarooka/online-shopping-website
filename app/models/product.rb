class Product < ApplicationRecord
    has_many :lineitems
    before_destroy :check_no_line_items

    validates(:name, :description, :image, presence: true)
    validates(:price, numericality: {greater_than_or_equal_to: 0.01})
    validates(:name, uniqueness: true)
    validates(:image, format: {with: %r{\.{gif|jpg|png}\z}, message: "Image file must be GIF, JPG or PNG."})

    def check_no_line_items
        if self.lineitems.empty?
            return true
        else
            return false
        end
    end
end
