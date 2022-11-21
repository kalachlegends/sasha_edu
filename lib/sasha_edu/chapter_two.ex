defmodule SashaEdu.ChapterTwo do
  # def pattern_matching(:map) do
  #   :map
  # end
# ТЕСТОВЫЙ комит
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
  def pattern({:ok, "ХУЙ"}), do: "ХУЙ"
  def pattern({:govno, "ХУЙ"}), do: :govno
  def pattern("hello"), do: "hello Sanya"

  def get_type(type) do
    cond do
      is_bitstring(type) -> "String"
      is_tuple(type) -> "Tuple"
      is_number(type) -> "Int"
      is_map(type) -> "Map"
      true -> "error"
    end
  end

  def game(user1, user2) do
    cond do
      user1 == "paper" && user2 == "paper" -> "draw"
      user1 == "rock" && user2 == "rock" -> "draw"
      user1 == "scissors" && user2 == "scissors" -> "draw"
      user1 == "rock" && user2 == "paper" -> "1 player win"
      user1 == "paper" && user2 == "rock" -> "2 player win"
      user1 == "rock" && user2 == "scissors" -> "1 player win"
      user1 == "scissors" && user2 == "rock" -> "2 player win"
      user1 == "scissors" && user2 == "paper" -> "1 player win"
      user1 == "paper" && user2 == "scissors" -> "2 player win"
    end
  end

  def first_variable(type) do
    cond do
      is_map(type) ->
        case type do
          %{map: _} -> type.map
          %{} -> "Map_is_empty"
        end

      is_tuple(type) ->
        case type do
          {any} -> any
          {any, _} -> any
          {} -> "Turple_is_empty"
          _ -> "Turple_is_empty"
        end

      is_list(type) and type != [] ->
        hd(type)

      type == [] ->
        "List_is_empty"
    end
  end
end
