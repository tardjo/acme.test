class Setting < ActiveRecord::Base
  validates_uniqueness_of :object_key

  def self.get_all
    all.order(created_at: 'desc')
  end
end
