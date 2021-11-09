defmodule ListFilterTest do
  use ExUnit.Case

  test "should count only odd" do
    list = ["1", "3", "6", "43", "banana", "6", "abc"]

    expected = 3
    assert ListFilter.call(list) == expected
  end

  test "should return 0 when list is empty" do
    assert ListFilter.call([]) == 0
  end
end
