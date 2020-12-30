defmodule UriOnlineJudge.Problem1040 do
  def start do
    grades = IO.gets("") |> grades_sum()

    IO.puts(grades / 4)
  end

  defp grades_sum(grades) do
    grades
    |> String.trim_trailing()
    |> String.split(" ")
    |> Enum.map(&String.to_float/1)
    |> Enum.sum()
  end
end
