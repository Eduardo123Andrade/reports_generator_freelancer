defmodule ReportsGeneratorFreelancer.ParserTest do
  use ExUnit.Case

  alias ReportsGeneratorFreelancer.Parser

  describe "parse_file/1" do
    test "parse the file" do
      file_name = "gen_report_test.txt"

      response =
        file_name
        |> Parser.parse_file()
        |> Enum.map(& &1)

      expected_response = [
        ["Daniele", 7, "29", "12", 2018],
        ["Mayk", 4, "09", "12", 2019],
        ["Daniele", 5, "27", "12", 2016],
        ["Daniele", 5, "27", "7", 2016],
        ["Mayk", 1, "02", "12", 2017],
        ["Giuliano", 3, "13", "2", 2017],
        ["Cleiton", 1, "22", "6", 2020],
        ["Giuliano", 6, "18", "2", 2019],
        ["Jakeliny", 8, "18", "7", 2017],
        ["Joseph", 3, "17", "3", 2017],
        ["Jakeliny", 6, "23", "3", 2019],
        ["Diego", 3, "11", "9", 2016],
        ["Danilo", 6, "28", "2", 2019]
      ]

      assert response == expected_response
    end
  end
end
