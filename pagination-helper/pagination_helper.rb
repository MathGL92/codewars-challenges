# TODO: complete this class

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @collection.size
  end

  # returns the number of pages
  def page_count
    (item_count / @items_per_page.to_f).ceil
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    # input page index
    # array of pages : transform page_count to array of page_count elements
    pages_array = Array.new(page_count) { |i| i }
    # return the number of item on page_index if page_index in the range else return -1
    if pages_array[page_index].nil? || page_index < 0
      -1
    elsif pages_array[page_index] != pages_array[-1]
      @items_per_page
    else
      item_count % @items_per_page
    end
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    # input item index
    # guard clause to check item in is the range
    if @collection[item_index].nil? || item_index < 0
      -1
    else
      # return the page index if item in the range else return -1
      item_index / @items_per_page
    end
  end
end
