defmodule SashaEdu.ChapterTwo do
  # def pattern_matching(:map) do
  #   :map
  # end

  # def pattern_matching(:list) do
  #   :list
  # end

  # def case_do(kortej) do
  #   case kortej do
  #     1 -> "gtybc"
  #     2 -> "gbcz"
  #     any -> "Error"
  #   end
  # end

  # def cond_do(boolean) do
  #   cond do
  #     is_boolean(boolean) -> "bool"
  #     true -> "gbcz"
  #   end
  # end
  def pattern(type) do
    cond do
      is_bitstring(type) -> "#{type} Sanya"

    end
  end

  def get_type(type) do
    cond do
      is_bitstring(type) -> "String"
      is_tuple(type) -> "Tuple"
      is_number(type) -> "Int"
      is_map(type) -> "Map"
      true -> "error"
    end
  end
end
