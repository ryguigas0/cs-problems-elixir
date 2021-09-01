defmodule PandemiaTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "First example" do
    output =
      capture_io(
        [
          input: "2 1 2\n3 3 1 2\n2 2 1",
          capture_prompt: false
        ],
        fn ->
          OBI.Pandemia.run(4, 3, 2, 1)
        end
      )

    assert output === "3\n"
  end

  test "Second example" do
    output =
      capture_io(
        [input: "2 1 3\n4 1 2 3 5\n2 1 3\n2 1 3\n2 4 5\n2 2 4", capture_prompt: false],
        fn ->
          OBI.Pandemia.run(5, 6, 3, 4)
        end
      )

    assert output === "2\n"
  end

  test "Third example" do
    output =
      capture_io(
        [input: "6 7 5 1 9 6 2\n3 9 4 6\n3 2 9 5\n3 8 5 7\n2 8 9", capture_prompt: false],
        fn ->
          OBI.Pandemia.run(10, 5, 2, 1)
        end
      )

    assert output === "8\n"
  end
end
