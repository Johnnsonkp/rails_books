class Author < ApplicationRecord

    def full_name
       return "#{self.first_name} #{self.last_name}"
    end

    def age 
        ((Time.now - self.date_of_birth.to_time) / 1.year.seconds).floor 
    end
end
