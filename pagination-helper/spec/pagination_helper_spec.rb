require_relative '../pagination_helper'

helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)

# First portion should be identifying the function you want to write tests for
describe "#PaginationHelper" do
  # each it .. do .. end block will describe one test
  # This first portion is what's written in green or red when you run your tests and describes the behavior of the test
  it "helper.page_count # should return == 2" do
    # Where you test your actual input, this is show in the get: portion of the test
    actual = helper.page_count
    # Where you put down your expected behavior
    expected = 2
    # Finally the comparison of the two
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "helper.item_count # should return 6" do
    actual = helper.item_count
    expected = 6
    expect(actual).to eq(expected) # passes if `actual == expected`
    # Test.assert_equals(helper.page_count, 2, "helper.page_count should return == 2")
  end

  it "helper.page_item_count(0) should return 4" do
    actual = helper.page_item_count(0)
    expected = 4
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "helper.page_item_count(1) # last page - should return 2" do
    actual = helper.page_item_count(1)
    expected = 2
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "helper.page_item_count(2) # should return -1 since the page is invalid" do
    actual = helper.page_item_count(2)
    expected = -1
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "helper.page_index(5) # should return 1 (zero based index)" do
    actual = helper.page_index(5)
    expected = 1
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "helper.page_index(2) # should return 0" do
    actual = helper.page_index(2)
    expected = 0
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "helper.page_index(20) # should return -1" do
    actual = helper.page_index(20)
    expected = -1
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "helper.page_index(-10) # should return -1 because negative indexes are invalid" do
    actual = helper.page_index(-10)
    expected = -1
    expect(actual).to eq(expected) # passes if `actual == expected`
  end
end
