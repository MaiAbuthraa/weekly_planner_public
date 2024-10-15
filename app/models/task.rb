class Task < ApplicationRecord
  validates :title, presence: true
  ### uniqueness
  #validates :email, :uniqueness => true
  #validates :name, :uniqueness => { :case_sensitive => false }
  #validates :name, :uniqueness => { :scope => :year, :message => "should happen once per year" }

  ### numericality
  #validates :points, :numericality => true
  #validates :games_played, :numericality => { :only_integer => true }
  #validates_numericality_of :stock_qty, :allow_nil => true, :greater_than_or_equal_to => 0
  #validates_numericality_of :stock_qty, :allow_nil => true, :less_than_or_equal_to => :in_qty

  ### presence
  #validates :name, :login, :email, :presence => true

  ### allow_blank
  #validates :title, :length => { :is => 5 }, :allow_blank => true

  ### :on
  # it will be possible to update email with a duplicated value
  # validates :email, :uniqueness => true, :on => :create

  # it will be possible to create the record with a non-numerical age
  # validates :age, :numericality => true, :on => :update

  # the default (validates on both create and update)
  # validates :name, :presence => true, :on => :save

  ### Conditional Validation ###
  #validates :card_number, :presence => true, :if => :paid_with_card?

  #def paid_with_card?
  #  payment_type == "card"
  #end
  #
  ### Grouping conditional validations
  #with_options :if => :paid_with_card? do |task|
  #  task.validates :password, :length => { :minimum => 10 }
  #  task.validates :email, :presence => true
  #end

  #validates :surname, :presence => true, :if => "name.nil?"
  #validates :password, :confirmation => true, :unless => Proc.new { |a| a.password.blank? }
  # in Form
  #<%= text_field :person, :email %>
  #<%= text_field :person, :email_confirmation %>

  after_initialize do |task|
    Rails.logger.info("-----> You have initialized an object!")
  end

  after_find do |task|
    Rails.logger.info("-----> You have found an object!")
  end
  #
  #after_destroy
  #after_save
  #before_save
  #after_destroy_commit
  #after_create_commit
  #after_update_commit
  #after_save_commit
end
