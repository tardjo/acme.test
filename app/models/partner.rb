class Partner < ActiveRecord::Base
  validates_uniqueness_of :name
  
  def self.get_all
    all.order(created_at: 'desc')
  end
end
