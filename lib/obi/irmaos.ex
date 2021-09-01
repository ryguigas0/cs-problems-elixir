# https://olimpiada.ic.unicamp.br/pratique/p2/2020/f1/irmaos/

defmodule OBI.Irmaos do
  def run(n, m) do
    # =======================
    # About the problem
    # ======================
    # Oscar -> mais novo -> idade n
    # Otávio -> do meio -> idade m
    # Orlando -> mais velho -> idade o
    # PA: n - m = o - n -> o = 2n - m
    # =======================
    # Input
    # ======================
    # Entra n e m
    # =======================
    # OUTPUT
    # ======================
    # o

    2 * m - n
  end
end
