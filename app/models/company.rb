class Company
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name
  key :name
  
  has_many :contacts
    
  validates_presence_of :name
  
  def to_s
    name
  end
end