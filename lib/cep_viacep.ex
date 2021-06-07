defmodule XCep.Viacep do

  def cep(cep) do
    cep_number = cep_only_numbers(cep)
    json_city = HTTPoison.get!("https://viacep.com.br/ws/#{cep_number}/json/")    
    {:ok, json_city}
  end

  defp cep_only_numbers(cep) do
    String.replace("#{cep}",~r"[/\D/g]", "")
    |> String.slice(0..7)    
  end
end