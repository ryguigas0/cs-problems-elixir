# https://olimpiada.ic.unicamp.br/pratique/p2/2020/f1/pandemia/

# ENTRADA
# n, m -> total de amigos, total de dias com reunião
# i, r -> id amigo infectado, num da reunião que participou infectado
# PRÓXIMAS m LINHAS:
#   a, p -> total de amigos na reunião, os participantes da reunião do dia

# LÓGICA
# Todos amigos que estavam na reunião com i foram infectados

# SAÍDA
# Quantos amigos foram infectados no total após todas as reuniões

defmodule OBI.Pandemia do
  def run(n, m, i, r) do
    estado_amigos =
      Enum.reduce(1..n, %{}, fn
        ^i, acc -> Map.put_new(acc, i, true)
        amigo, acc -> Map.put_new(acc, amigo, false)
      end)

    [estado_amigos_resultado, _] =
      Enum.map(1..m, fn _ -> parse_input() end)
      |> Enum.reduce([estado_amigos, 1], fn
        [_total | participantes], [estado_amigos_acc, num_reuniao] ->
          # Se tiver alguém infectado nessa reunião
          if Enum.any?(participantes, fn p -> estado_amigos_acc[p] end) && num_reuniao >= r do
            [
              # Separe os infectados
              Enum.filter(participantes, fn p -> !estado_amigos_acc[p] end)
              # Salve como infectados
              |> Enum.reduce(estado_amigos_acc, fn i, novo_estado_amigos ->
                Map.update!(novo_estado_amigos, i, &(&1 = true))
              end),
              num_reuniao + 1
            ]
          else
            # Se não tiver, não faça nada
            [estado_amigos_acc, num_reuniao + 1]
          end
      end)

    # Transformar o map de infectados em quantidade de infectados
    Enum.reduce(estado_amigos_resultado, 0, fn {_id, amigo_infectado?}, infectados ->
      if amigo_infectado? do
        infectados + 1
      else
        infectados
      end
    end)
    |> IO.inspect()
  end

  defp parse_input() do
    IO.gets("")
    |> String.trim()
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
  end
end
