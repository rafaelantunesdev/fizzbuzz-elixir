defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()

    # case File.read(file_name) do
    #  {:ok, result} -> result
    #  {:error, reason} -> reason
    # end
  end

  defp handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    ## Cada elemento da lista e repassar pra função: &
    |> Enum.map(&convert_and_evaluate/1)
  end

  defp handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  defp convert_and_evaluate(number) do
    number
    |> String.to_integer()
    |> evaluate()
  end

  defp evaluate(number) when rem(number, 5) == 0 and rem(number, 3) == 0, do: :fizzbuzz
  defp evaluate(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate(number), do: number
end
