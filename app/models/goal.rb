class Goal < ActiveRecord::Base
  @@values = Hash.new()
  #@@values[0] = "worthless"
  @@values[0] = "insignificant"
  @@values[1] = "worthwhile"
  @@values[2] = "valuable"
  @@values[3] = "priceless"
  def self.values
    @@values
  end

  @@efforts = Hash.new()
  #@@efforts[0] = "trivial"
  @@efforts[0] = "easy"
  @@efforts[1] = "doable"
  @@efforts[2] = "challenging"
  @@efforts[3] = "grueling"

  def self.efforts
    @@efforts
  end

  @@days = Hash.new()
  #@@days[1] = "a day"
  @@days[7] = "a week"
  @@days[30] = "a month"
  @@days[60] = "2 months"
  @@days[183] = "6 months"
  @@days[365] = "a year"
  @@days[1825] = "5 years"
  #@@days[3650] = "10 years"
  #@@days[10950] = "a career"    #TODO 30 years. Depends on age.
  #@@days[18250] = "a lifetime"  #TODO 50 years. Depends on age.

  def self.days
    @@days
  end

  validates :text, presence: true #TODO Check length and attacks.
end
