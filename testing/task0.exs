defmodule Foo do
  def get_content_type(string) do
    string
    |> String.split(":")
    |> Enum.at(1)
    |> String.trim()
    |> IO.puts()
  end
end

Foo.get_content_type("content-type: application/json")
