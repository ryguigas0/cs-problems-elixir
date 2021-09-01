# https://olimpiada.ic.unicamp.br/pratique/p2/2020/f1/3por2/

# ENTRADA
# n -> quantos chocolates
# linha n -> preço do chocolate

# O PROBLEMA
# Grupo de 3 chocolates -> Paga os 2 com maior preço
# Descobrir a ordem para economizar o máximo possível

# A LÓGICA
# Temos 3 casos de grupos de precos para somar
# Com 1 -> retorna ele mesmo
# Com 2 -> retorna a soma dos dois membros
# Com 3 -> (x, y, z)
#   Supondo que x > y > z, então x + y
#   Assim para remover os maiores valores possíveis é
#   aumentar o menor número sem quebrar a ordem

# SAÍDA
# O menor preço possível

defmodule OBI.TresPorDois do
  def run do
    n = parse_input()

    menor_preco =
      Enum.map(1..n, fn _ -> parse_input() end)
      |> Enum.sort(:desc)
      |> Enum.chunk_every(3)
      |> Enum.map(&somar_grupo(&1))
      |> Enum.sum()

    IO.puts("#{menor_preco}")
  end

  defp somar_grupo(grupo = [_, _, _]) do
    [a, b] = Enum.sort(grupo, :desc) |> Enum.take(2)
    a + b
  end

  defp somar_grupo([a, b]), do: a + b

  defp somar_grupo([a]), do: a

  defp parse_input() do
    IO.gets("") |> String.trim() |> String.to_integer()
  end
end
