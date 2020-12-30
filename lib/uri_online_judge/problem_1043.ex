defmodule UriOnlineJudge.Problem1043 do
  def start do
    IO.gets("") |> extract_segments() |> calculate()
  end

  defp extract_segments(string) do
    string
    |> String.trim_trailing()
    |> String.split(" ")
    |> Enum.map(&String.to_float/1)
  end

  defp calculate(segments) do
    if triangle?(segments) do
      IO.puts("Perimetro = #{calculate_perimeter(segments)}")
    else
      IO.puts("Area = #{calculate_area(segments)}")
    end
  end

  defp triangle?(segments) do
    [greatest | minors] = Enum.sort(segments, :asc)

    if Enum.sum(minors) == greatest, do: true, else: false
  end

  defp calculate_perimeter(segments), do: Enum.sum(segments)

  defp calculate_area(segments) do
    [a, b, c] = segments

    ((a + b) / 2) * c
  end
end
