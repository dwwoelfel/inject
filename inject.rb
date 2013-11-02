def sizes_smallest_to_largest
  arr = configured_sizes.to_a
  arr.sort! do |crop_a, crop_b|
    # get the crop size (a string like "352x198") and find it's total pixel area
    a = crop_a.last.split("x").map(&:to_i).inject(:*)
    b = crop_b.last.split("x").map(&:to_i).inject(:*)
    a <=> b
  end
  arr.map(&:first)
end
