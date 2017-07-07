defmodule LocTest do
  use ExUnit.Case

  # .ex Files

  test "Should handle a .ex file without comments or empty lines" do
    path = fixture_path("no_comments_or_empty_lines.ex")
    lines = 5

    assert Loc.count_file(path) == lines
  end

  test "Should handle a .ex file with comments and no empty lines" do
    path = fixture_path("no_comments_but_with_empty_lines.ex")
    lines = 5

    assert Loc.count_file(path) == lines
  end

  test "Should handle a .ex file with empty lines but no comments" do
    path = fixture_path("comments_with_no_empty_lines.ex")
    lines = 5

    assert Loc.count_file(path) == lines
  end

  test "Should handle a .ex file with both comments and empty lines" do
    path = fixture_path("with_comments_and_empty_lines.ex")
    lines = 5

    assert Loc.count_file(path) == lines
  end


  # .exs Files

  test "Should handle a .exs file without comments or empty lines" do
    path = fixture_path("no_comments_or_empty_lines.exs")
    lines = 5

    assert Loc.count_file(path) == lines
  end

  test "Should handle a .exs file with comments and no empty lines" do
    path = fixture_path("no_comments_but_with_empty_lines.exs")
    lines = 5

    assert Loc.count_file(path) == lines
  end

  test "Should handle a .exs file with empty lines but no comments" do
    path = fixture_path("comments_with_no_empty_lines.ex")
    lines = 5

    assert Loc.count_file(path) == lines
  end

  test "Should handle a .exs file with both comments and empty lines" do
    path = fixture_path("with_comments_and_empty_lines.ex")
    lines = 5

    assert Loc.count_file(path) == lines
  end

  # Other files

  test "Should handle Non-Elixir files" do
    path = fixture_path("random_text_file.txt")
    lines = 0

    assert Loc.count_file(path) == lines
  end

  # Directories

  test "Should handle a directory with two Elixir files" do
    path = fixture_path("directory_with_two_files")
    lines = 10

    assert Loc.count_directory(path) == lines
  end

  test "Should handle a directory with a mix of Elixir and Non-Elixir files" do
    path = fixture_path("directory_with_mixed_files")
    lines = 5

    assert Loc.count_directory(path) == lines
  end

  test "Should handle sub-directories" do
    path = fixture_path("directory_with_subdirectories")
    lines = 10

    assert Loc.count_directory(path) == lines
  end

  def fixture_path(path) do
    Path.join([__DIR__, "fixtures", path])
  end
end
