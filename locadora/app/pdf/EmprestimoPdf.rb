class EmprestimoPdf < Prawn::Document
    def initialize(emprestimo)
      super(top_margin: 50)
      @emprestimo = emprestimo
        
      text "Dados do emprestimo", size: 20, style: :bold, align: :center
      indent(60, 15) do
        move_down 20
        text "ID: #{emprestimo.id}", size: 10
        move_down 20
        text "Locatario: #{emprestimo.locatario.nome}", size: 10
        move_down 20
        text "Marca do carro: #{emprestimo.carro.marca}", size: 10
        move_down 20
        text "Modelo do carro: #{emprestimo.carro.modelo}", size: 10
        move_down 20
        text "Data de check in: #{emprestimo.data_checkin.strftime("%d/%m/%Y - %H:%M")}", size: 10
        move_down 20
        text "Data check out: #{emprestimo.data_checkout.strftime("%d/%m/%Y - %H:%M")}", size: 10
      end
    end
end