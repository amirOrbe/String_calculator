defmodule StringCalculator do
  @moduledoc """
  Documentation for `StringCalculator`.
  """
  @allowed_characters [" ", ",", "\n"]

  @doc """
  Returns a integer from string
  """
  @spec add(binary()) :: integer()
  def add(string) when string == "", do: 0

  def add(string) do
    string
    |> String.split(@allowed_characters)
    |> Enum.map(fn number -> String.to_integer(number) end)
    |> Enum.sum()
  end
end
