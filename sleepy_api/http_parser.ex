defmodule HTTPParser do
  def is_json(file) do
    of = File.read(file)
    content = String.split(elem(of, 1), "\n")
    inspect(content)
    File.close(of)
  end
end
