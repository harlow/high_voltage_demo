class Inquiry
  include ActiveModel::Model

  attr_accessor :comments, :email, :name

  validates :comments, presence: true
  validates :email, presence: true, email: true
  validates :name, presence: true

  def save
    if valid?
      # send an email or persist to the database...
    end
  end
end
