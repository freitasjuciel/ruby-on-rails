class MuscleGroup < ActiveRecord::Base
  self.per_page = 10

  has_many :exercises
  validates_presence_of :name

  def destroy
    raise "Este grupo muscular esta sendo utilizado nos exercicios" unless exercises.count == 0
  end
end
