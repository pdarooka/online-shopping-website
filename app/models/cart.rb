class Cart < ApplicationRecord
    has_many :lineitems, dependent: :destroy

    def add_item(product_id)
        curr_item = self.lineitems.find_by(product_id: product_id)
        if curr_item
            curr_item.quantity += 1
        else
            curr_item = self.lineitems.build(product_id: product_id)
        end
        curr_item
    end

    def total_price
        self.lineitems.to_a.sum {|item| item.item_total_price}
    end
end
