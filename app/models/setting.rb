class Setting < ActiveRecord::Base
  validates_uniqueness_of :object_key

  def self.get_all(params)
    all.order(created_at: 'desc').page(params[:page]).per(10)
  end
end
