class Consulta < Prawn::Document
    def initialize(locatarios)
      super(top_margin: 50)
      @locatarios = locatarios
      allLocatarios(@locatarios)
    end

    def allLocatarios(locatarios)
        @locatarios.each do |locatario|
            text locatario.nome
            text locatario.email
        end
    end
end