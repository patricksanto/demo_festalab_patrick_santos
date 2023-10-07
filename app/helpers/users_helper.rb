module UsersHelper
  def format_phone(number)
    "(#{number[0..1]}) #{number[2..6]}-#{number[7..11]}"
  end

  def format_cpf(cpf)
    "#{cpf[0..2]}.#{cpf[3..5]}.#{cpf[6..8]}-#{cpf[9..10]}"
  end
end
