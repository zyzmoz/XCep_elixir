defmodule XCep.Handler do
  alias XCep.Viacep  

  def get_data_from_cep(cep) do
    {_, data} = Viacep.cep(cep)
    Map.get(data, :body)    
  end
end