class Project < Ohm::Model
  extend Spawn
  
  attribute :name
  attribute :link
  attribute :description
  attribute :datetime
  attribute :published
  
  def validate
    assert_present(:name)
    assert_present(:link)
    assert_present(:description)
  end
  
  def create
    self.datetime ||= Time.now.strftime("%Y-%m-%d %H:%M:%S")
    self.published = 0 # Set unpublished by default
    super
  end
  
  def to_s
    name.to_s
  end
  
  def to_param
    name
  end
  
  def published?
    if (published.to_i==1)
      return "Published"
    else
      return "Unpublished"
    end
  end

  
  protected
  
  spawner do |project|
    project.name = Faker::Company.catch_phrase
    project.link = Fake::Internet.domain_name
  end
end