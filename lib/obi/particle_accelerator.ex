# https://olimpiada.ic.unicamp.br/pratique/p2/2020/f1/acelerador/

defmodule OBI.ParticleAccelerator do
  def run() do
    # Grab the input data
    dist = IO.gets("") |> String.trim() |> String.to_integer()

    # Evaluate
    rem_dist = rem(dist - 4, 8) + 1

    # Put the right output
    IO.puts("#{rem_dist - 2}")
  end
end
