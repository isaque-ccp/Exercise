defmodule Year do
  def leap_year?(year) when rem(year, 400) == 0 do
    true
  end

  def leap_year?(year) when rem(year, 100) == 0 do
    false
  end

  def leap_year?(year) when rem(year, 4) == 0 do
    true
  end

  def leap_year?(_year) do
    false
  end
end
