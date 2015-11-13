class Movie < ActiveRecord::Base
  validates :director_id, :presence => true
  validates :title, :presence => true, :uniqueness => {:scope => :year}
  validates :year, :numericality => {:only_integer => true, :greater_than => 1869, :less_than => 2051, :message => "must be between 1870 and 2050", :allow_blank => true}
  validates :duration, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than => 2764800, :message => "must be between 0 and 2764800", :allow_blank => true}
end
