class Programacao < ApplicationRecord
  scope :ordered_and_grouped, -> {
    where(status: true).order(:day, :hour).group_by(&:day)
  } 

  validates :name, :hour, presence: true

  enum day: {
    "Domingo": 0,
    "Segunda": 1,
    "Terça": 2,
    "Quarta": 3,
    "Quinta": 4,
    "Sexta": 5,
    "Sábado": 6
  }
end
 
