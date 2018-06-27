class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.order(rating: :desc)[0]
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.order(rating: :asc)[0]
  end

  def self.ratings_sum
    self.sum(:rating)
  end


end
