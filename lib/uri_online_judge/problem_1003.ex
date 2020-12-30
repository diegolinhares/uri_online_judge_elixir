defmodule UriOnlineJudge.Problem1003 do
  def start do
    a = type_a_number()
    b = type_a_number()

    IO.puts("SOMA = #{a + b}")
  end

  defp type_a_number do
    IO.gets("") |> String.trim_trailing() |> String.to_integer()
  end
end
