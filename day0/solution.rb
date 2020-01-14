# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def remove_and_get_smaller(nums1, nums2)
    if not nums1.empty? and not nums2.empty?
        if nums1.first < nums2.first
            nums1.shift
        else
            nums2.shift
        end
    elsif nums1.empty?
        nums2.shift
    else
        nums1.shift
    end
end

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    total_size = nums1.length + nums2.length
    median_position = total_size / 2 - if total_size.even? then 1 else 0 end
    for i in 1..median_position do
        remove_and_get_smaller(nums1, nums2)
    end
    
    median = remove_and_get_smaller(nums1, nums2)
    single_median = total_size.even?
    unless single_median
        median += remove_and_get_smaller(nums1, nums2)
        median /= 2.0
    end
    return median       
end


require "test-unit"

class TestFindMedianInSortedArrays < Test::Unit::TestCase
  def test_simple
    assert_equal(2.0, find_median_sorted_arrays([1, 3], [2]))
    assert_equal(2.5, find_median_sorted_arrays([1, 3], [2, 4]))
    assert_equal(1.5, find_median_sorted_arrays([1], [2]))
    assert_equal(2.0, find_median_sorted_arrays([2], [2]))
  end
end