class Contact
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :first_name
  field :last_name
  field :title
  
  belongs_to :company, :inverse_of => :contacts
    
  validates_presence_of :first_name
  validates_presence_of :last_name
    
  def to_s
    "#{first_name} #{last_name}"
  end
  
end
