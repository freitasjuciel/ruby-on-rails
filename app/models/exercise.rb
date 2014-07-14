class Exercise < ActiveRecord::Base
  self.per_page = 10

  has_and_belongs_to_many :trainings
  belongs_to :muscle_group, :validate => true

  validates_presence_of :name, :muscle_group

  def destroy
    raise "Este exercicio esta sendo utilizado pelos treinos cadastrados" unless trainings.count == 0
  end
end
