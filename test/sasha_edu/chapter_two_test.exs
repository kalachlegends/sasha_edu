defmodule SashaEduTest.ChapterTwo do
  use ExUnit.Case
  doctest SashaEdu

  test "pattern_match_engh" do
    assert SashaEdu.ChapterTwo.pattern({:ok, "ХУЙ"}) == "ХУЙ"
    assert SashaEdu.ChapterTwo.pattern({:govno, "ХУЙ"}) == :govno
    assert SashaEdu.ChapterTwo.pattern("hello") == "hello Sanya"
  end

  test "get_type" do
    assert SashaEdu.ChapterOne.get_type("Sasha") == "String"
    assert SashaEdu.ChapterOne.get_type({:ok}) == "Tuple"
    assert SashaEdu.ChapterOne.get_type(1) == "Int"
    assert SashaEdu.ChapterOne.get_type(%{map: "1"}) == "Map"
  end

  test "rock_papper_scisscorig" do
    assert SashaEdu.ChapterTwo.game("paper", "paper") == "draw"
    assert SashaEdu.ChapterTwo.game("rock", "rock") == "draw"
    assert SashaEdu.ChapterTwo.game("scissors", "scissors") == "draw"

    assert SashaEdu.ChapterTwo.game("rock", "paper") == "1 player win"
    assert SashaEdu.ChapterTwo.game("paper", "rock") == "2 player win"

    assert SashaEdu.ChapterTwo.game("rock", "scissors") == "1 player win"
    assert SashaEdu.ChapterTwo.game("scissors", "rock") == "2 player win"

    assert SashaEdu.ChapterTwo.game("scissors", "paper") == "1 player win"
    assert SashaEdu.ChapterTwo.game("paper", "scissors") == "2 player win"
  end

  test "first_variable" do
    assert SashaEdu.ChapterTwo.first_variable(%{map: 123}) == 123
    assert SashaEdu.ChapterTwo.first_variable(%{}) == "Map_is_empty"
    assert SashaEdu.ChapterTwo.first_variable({:ok}) == :ok
    assert SashaEdu.ChapterTwo.first_variable({}) == "Turple_is_empty"
    assert SashaEdu.ChapterTwo.first_variable({:errr, 123}) == :errr
    assert SashaEdu.ChapterTwo.first_variable([1234, 12_334_444_542, 1]) == 1234
    assert SashaEdu.ChapterTwo.first_variable([1234]) == 1234
    assert SashaEdu.ChapterTwo.first_variable([]) == "List_is_empty"
  end
end
