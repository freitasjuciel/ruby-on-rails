class Training < ActiveRecord::Base
  self.per_page = 10

  has_and_belongs_to_many :exercises

  has_many :records, :dependent => :destroy
  has_many :students, :through => :records

  validates_associated :exercises
  validates_presence_of :name, :series
  validates :time, presence: true, if: "repetitions.blank?"

  def destroy
    raise "Este treino esta sendo utilizado pelos alunos" unless records.count == 0
  end
end
