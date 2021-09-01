defmodule OlimpcsShirtTest do
  use ExUnit.Case

  test "First example" do
    result = OBI.OlimpcsShirt.run(5, "1 1 2 1 2", 3, 2)
    assert result === "S"
  end
  test "Second example" do
    result = OBI.OlimpcsShirt.run(4, "2 2 2 2", 1, 3)
    assert result === "N"
  end
  test "Third example" do
    result = OBI.OlimpcsShirt.run(6, "1 1 1 2 1 1", 4, 4)
    assert result === "N"
  end
end
