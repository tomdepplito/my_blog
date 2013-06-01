class Blog < ActiveRecord::Base
  attr_accessible :title, :body, :seo_url
  validates_presence_of :title, :body
  self.per_page = 5
  before_create :customize_url

  def to_param
    "#{id}-#{seo_url}".parameterize
  end

  def customize_url
    self.seo_url = self.title if self.seo_url.blank?
  end
end
