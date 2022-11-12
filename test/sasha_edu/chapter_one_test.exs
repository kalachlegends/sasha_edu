defmodule SashaEduTest.ChapterOne do
  use ExUnit.Case
  doctest SashaEdu

  test "hello" do
    assert SashaEdu.ChapterOne.hello() == "hello"
  end

  test "sasha_hello" do
    assert SashaEdu.ChapterOne.hello_by_name("Sasha") == "Hello, Sasha"
    assert SashaEdu.ChapterOne.hello_by_name("Artem") == "Hello, Artem"
  end

  test "hello_all" do
    assert SashaEdu.ChapterOne.hello_all("Sasha", "Artem") == "Hello, Sasha, Artem"
    assert SashaEdu.ChapterOne.hello_all("Arsen", "Artem") == "Hello, Arsen, Artem"
  end

  test "hello_manager" do
    assert SashaEdu.ChapterOne.hello_by_manager("Sasha") == "Hello, Manager Sasha"
    assert SashaEdu.ChapterOne.hello_by_manager("123") == "Hello, Manager 123"
  end

  test "concat_string" do
    assert SashaEdu.ChapterOne.concat_string("Sasha", "Artem") == "SashaArtem"
    assert SashaEdu.ChapterOne.concat_string("1", "1") == "11"
    assert SashaEdu.ChapterOne.concat_string("23", "32") == "2332"
  end
end
