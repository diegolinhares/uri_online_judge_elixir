defmodule UriOnlineJudge.Problem1002 do
  def start do
    radius = type_a_number()

    area = :math.pi * :math.pow(radius, 2) |> Float.round(4)

    IO.inspect("A=#{area}")
  end

  defp type_a_number do
    IO.gets("") |> String.trim_trailing() |> String.to_float()
  end
end
