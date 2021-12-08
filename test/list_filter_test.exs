defmodule ListFilterTest do
  use ExUnit.Case

  test "return total of odd numbers in the list" do
    assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
  end
end
