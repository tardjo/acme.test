class Partner < ActiveRecord::Base
  validates_uniqueness_of :name

  def self.get_all(params)
    all.order(created_at: 'desc').page(params[:page]).per(10)
  end
end
