defmodule UriOnlineJudge.Problem1041 do
  def start do
    IO.gets("") |> format_coordinates() |> print_quadrant()
  end

  defp format_coordinates(string) do
    point_coordinates =
      string
      |> String.trim_trailing()
      |> String.split(" ")
      |> Enum.map(&String.to_float/1)

    [x, y] = point_coordinates

    %{x: x, y: y}
  end

  defp print_quadrant(%{x: x, y: y}) when x == 0 and y == 0, do: IO.puts("Origem")
  defp print_quadrant(%{x: x, y: y}) when x > 0 and y > 0, do: IO.puts("Q1")
  defp print_quadrant(%{x: x, y: y}) when x > 0 and y < 0, do: IO.puts("Q4")
  defp print_quadrant(%{x: x, y: y}) when x < 0 and y < 0, do: IO.puts("Q3")
  defp print_quadrant(%{x: x, y: y}) when x < 0 and y > 0, do: IO.puts("Q2")
end
