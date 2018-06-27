class Show < ActiveRecord::Base

  def self.highest_rating
    self.class.maximum("rating")
  end

end
