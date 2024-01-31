defmodule LanguageList do
  def new() do
    # Please implement the new/0 function
    []
  end

  def add(list, language) do
    # Please implement the add/2 function
    [language | list]
  end

  def remove([first | rest]) do
    # Please implement the remove/1 function
    rest
  end

  def first([first | rest]) do
    # Please implement the first/1 function
    first
  end

  def count(list) do
    # Please implement the count/1 function
    Enum.count(list)
  end

  def functional_list?(list) do
    # Please implement the functional_list?/1 function
    Enum.any?(list, fn x -> x == "Elixir" end)
  end
end
