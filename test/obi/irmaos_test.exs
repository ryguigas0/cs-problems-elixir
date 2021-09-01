defmodule IrmaosTest do
  use ExUnit.Case

  test "First example" do
    assert OBI.Irmaos.run(13, 16) === 19
  end
end
