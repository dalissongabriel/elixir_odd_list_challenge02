require Integer

defmodule ListFilter do
  def call(list) do
    intergerList = filterIntergers(list)
    Enum.count(intergerList, fn item -> Integer.is_odd(item) end)
  end

  defp filterIntergers(list) do
    Enum.flat_map(list, fn item ->
      case Integer.parse(item) do
        # transform to integer
        {int, _rest} -> [int]
        # skip the value
        :error -> []
      end
    end)
  end
end
