class Emprestimo < ApplicationRecord
    belongs_to :locatario
    belongs_to :carro
    validates_associated :locatario, :carro
end
