defmodule XCep do
  alias XCep.Handler
  alias XCep.Parser
  
  def cep(cep) do
    cep
    |> Handler.get_data_from_cep
    |> Poison.decode!
    |> Parser.parse_body
  end
end
