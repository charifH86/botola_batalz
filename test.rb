def generate_pairs(arr, last_element = -1)
  return [[]] if arr.empty?
  return [] if arr.length < 2

  pairs = []
  arr.each_with_index do |current, i|
      next if current == last_element

      (i + 1).upto(arr.length - 1) do |j|
          next if arr[j] == last_element

          # Exclude the current pair elements and generate new pairs
          remaining_elements = arr.each_with_index.map { |x, k| x if k != i && k != j }.compact
          sub_pairs = generate_pairs(remaining_elements, current)

          sub_pairs.each do |sub_pair|
              pairs << [[current, arr[j]]] + sub_pair
          end
      end
  end

  pairs
end

# Test with the array [1, 2, 3, 4]
p generate_pairs([1, 2, 3, 4])
