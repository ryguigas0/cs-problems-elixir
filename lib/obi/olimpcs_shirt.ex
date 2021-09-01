# https://olimpiada.ic.unicamp.br/pratique/p2/2020/f1/camisetas/

defmodule OBI.OlimpcsShirt do
  defp count(1, acc) do
    Map.update!(acc, "small", fn s -> s + 1 end)
  end

  defp count(2, acc) do
    Map.update!(acc, "big", fn b -> b + 1 end)
  end

  def run(_n, t, p, m) do
    size_count =
      t
      |> String.split()
      |> Enum.map(fn str -> String.to_integer(str) end)
      |> Enum.reduce(%{"small" => 0, "big" => 0}, &count(&1, &2))

    cond do
      p >= size_count["small"] and m >= size_count["big"] -> "S"
      true -> "N"
    end
  end
end
