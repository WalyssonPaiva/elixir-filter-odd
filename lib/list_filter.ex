defmodule ListFilter do
  def call(list) do
    Enum.count(list, fn x -> rem(parse_to_int(x), 2) == 1 end)
  end

  defp parse_to_int(x) do
    cond do
      is_integer(x) ->
        x

      true ->
        number = handle_error(Integer.parse(x))
        number
    end
  end

  defp handle_error(:error) do
    0
  end

  defp handle_error({number, _rest}) do
    number
  end
end
