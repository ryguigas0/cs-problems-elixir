defmodule TresPorDoisTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "First example" do
    output =
      capture_io(
        [
          input: "4\n5\n6\n6\n5",
          capture_prompt: true
        ],
        fn ->
          OBI.TresPorDois.run()
        end
      )

    assert output === "17\n"
  end

  test "Second example" do
    output =
      capture_io(
        [
          input: "4\n3\n3\n3\n3",
          capture_prompt: false
        ],
        fn ->
          OBI.TresPorDois.run()
        end
      )

    assert output === "9\n"
  end

  test "Third example" do
    output =
      capture_io(
        [
          input: "6\n7\n8\n7\n7\n5\n7",
          capture_prompt: false
        ],
        fn ->
          OBI.TresPorDois.run()
        end
      )

    assert output === "29\n"
  end

  test "Forth example" do
    output =
      capture_io(
        [
          input: "7\n8\n5\n10\n2\n5\n10\n4",
          capture_prompt: false
        ],
        fn ->
          OBI.TresPorDois.run()
        end
      )

    assert output === "32\n"
  end
end
