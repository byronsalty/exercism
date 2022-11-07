defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    cond do
      {0, false} == {level, legacy?} -> :trace
      1 == level -> :debug
      2 == level -> :info
      3 == level -> :warning
      4 == level -> :error
      {5, false} == {level, legacy?} -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    level = to_label(level, legacy?)
    cond do
      :error == level -> :ops
      :fatal == level -> :ops
      {:unknown, true} == {level, legacy?} -> :dev1
      {:unknown, false} == {level, legacy?} -> :dev2
      true -> nil
    end
  end
end
