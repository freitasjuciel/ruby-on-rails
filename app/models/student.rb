class Student < ActiveRecord::Base
  self.per_page = 10
  enum gender: { male: 0, female: 1 }

  has_many :records, :dependent => :destroy
  has_many :trainings, :through => :records

  validates_presence_of :name, :birthday

  validates :phone, presence: true, if: "cellphone.blank?"
  validates :cellphone, presence: true, if: "phone.blank?"
end
