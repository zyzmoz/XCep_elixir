defmodule XCep.Parser do

  def parse_body(city) do
    %{
      :district => city["bairro"],
      :code => String.replace(city["cep"], ~r"[/\D/g]", ""),
      :complentent => city["complemento"],
      :city => city["localidade"],
      :address => city["logradouro"],
      :ustate => city["uf"]
    }
  end
end