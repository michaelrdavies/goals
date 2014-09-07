class Goal < ActiveRecord::Base
  @@values = Hash.new()
  @@values[0] = "worthless"
  #@@values[1] = "insignificant"
  @@values[2] = "worthwhile"
  #@@values[3] = "valuable"
  @@values[4] = "priceless"

  def self.values
    @@values
  end

  @@efforts = Hash.new()
  @@efforts[0] = "trivial"
  #@@efforts[1] = "easy"
  @@efforts[2] = "doable"
  #@@efforts[3] = "challenging"
  @@efforts[4] = "grueling"

  def self.efforts
    @@efforts
  end

  @@days = Hash.new()
  @@days[1] = "a day"
  #@@days[7] = "a week"
  @@days[30] = "a month"
  #@@days[183] = "6 months"
  @@days[365] = "a year"
  #@@days[1825] = "5 years"
  #@@days[3650] = "10 years"
  #@@days[10950] = "a career"    #TODO 30 years. Depends on age.
  #@@days[18250] = "a lifetime"  #TODO 50 years. Depends on age.

  def self.days
    @@days
  end

  validates :text, presence: true #TODO Check length and attacks.
end
