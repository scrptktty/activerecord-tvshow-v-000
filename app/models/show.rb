class Show < ActiveRecord::Base

  def self.highest_rating
    # can use symbol *or* "" for colum_name
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

  def self.popular_shows
    # cannot use sym for comparaisons
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end

end
