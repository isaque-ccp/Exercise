defmodule KitchenCalculator do
  def get_volume(volume_pair) do
  {_unit, volume} = volume_pair
  volume
  end

  def to_milliliter(volume_pair) do
    {unit, volume} = volume_pair
    {:milliliter, volume* factor(unit)}
  end

  def from_milliliter(volume_pair, unit) do
   {:milliliter, volume} = volume_pair
   {unit, volume/factor(unit)}
  end

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
  defp factor(:milliliter), do: 1
  defp factor(:cup), do: 240
  defp factor(:fluid_ounce), do: 30
  defp factor(:teaspoon), do: 5
  defp factor(:tablespoon), do: 15
end
