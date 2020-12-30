defmodule UriOnlineJudge.Problem1001 do
  def start do
    a = type_a_number()
    b = type_a_number()

    sum = Enum.sum([a, b])

    IO.inspect("X = #{sum}")
  end

  defp type_a_number do
    IO.gets("") |> String.trim_trailing() |> String.to_integer()
  end
end
