defmodule ParticleAcceleratorTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "First example" do
    output =
      capture_io(
        [
          input: "23",
          capture_prompt: false
        ],
        fn ->
          OBI.ParticleAccelerator.run()
        end
      )

    assert output === "2\n"
  end

  test "Second example" do
    output =
      capture_io(
        [
          input: "6",
          capture_prompt: false
        ],
        fn ->
          OBI.ParticleAccelerator.run()
        end
      )

    assert output === "1\n"
  end
  test "Third example" do
    output =
      capture_io(
        [
          input: "9192",
          capture_prompt: false
        ],
        fn ->
          OBI.ParticleAccelerator.run()
        end
      )

    assert output === "3\n"
  end
end
