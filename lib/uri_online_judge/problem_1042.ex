defmodule UriOnlineJudge.Problem1042 do
  def start do
    list = IO.gets("") |> transform_to_integer_list()

    asc_list = list |> Enum.sort(:asc)
    desc_list = list |> Enum.sort(:desc)

    (asc_list ++ ["\n"] ++ desc_list) |> print_list()
  end

  defp transform_to_integer_list(string) do
    string
    |> String.trim_trailing()
    |> String.split(" ")
  end

  defp print_list(list) do
    Enum.each(list, &IO.puts/1)
  end
end
