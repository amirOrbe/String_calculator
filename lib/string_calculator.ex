defmodule StringCalculator do
  @moduledoc """
  Documentation for `StringCalculator`.
  """

  @doc """
  Returns a integer from string
  """

  @allowed_characters [" ", ",", "\n"]
  @spec add(binary()) :: integer()
  def add(string) when string == "", do: 0

  def add(string) do
    string
    |> String.split(@allowed_characters)
    |> Enum.map(fn number -> String.to_integer(number) end)
    |> Enum.sum()
  end
end
