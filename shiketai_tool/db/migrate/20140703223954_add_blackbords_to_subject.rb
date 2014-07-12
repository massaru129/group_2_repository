class AddBlackbordsToSubject < ActiveRecord::Migration
   def self.up
     add_attachment :blackboards, :material
   end

   def self.down
     remove_attachment :blackboards, :material
   end

end
