class Show < ActiveRecord::Base

  def self.highest_rating
    binding.pry
    .maximum("rating")
  end

end
