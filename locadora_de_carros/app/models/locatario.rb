class Locatario < ApplicationRecord
    has_many :emprestimos
    validate :maior_de_idade?

    def maior_de_idade?
        if data_nascimento.present? && data_nascimento > 18.years.ago.to_date
          errors.add(:data_nascimento, 'O responsável deve ser maior de idade.')
        end
    end
end
