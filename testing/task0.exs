defmodule Foo do

  
  def parse_http_file(file) do
    case File.read(file) do
      {:ok, contents} -> String.split(contents, "\n")
      {:error, reason} -> reason
    end
  end

  def find_content([line | rest], size) when size > 0 do
    if String.contains?(line, "application/json") do
      line
    else
      find_content(rest, size-1)
    end
  end

  def find_content([], _size) do
    :error
  end

  
  def is_json?(string) do
      string
      |> String.split(":")
      |> Enum.at(1)
      |> String.trim()
      |> String.contains?("application/json")
  end



