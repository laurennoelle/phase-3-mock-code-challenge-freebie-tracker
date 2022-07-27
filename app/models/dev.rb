class Dev < ActiveRecord::Base
has_many :freebies
has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies.any? {|f| f.item_name == item_name }
    end

    def give_away(freebie, dev)
      freebie.dev == self ? freebie.update({dev: dev}) : nil
    end


end
