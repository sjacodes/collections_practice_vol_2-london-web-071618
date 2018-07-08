def begins_with_r(array)
  array.all? do |element|
    element[0] == 'r'
  end
end

def contain_a (array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
    array.reject do |element|
      element.class != String 
    end
end

def count_elements(array)
  new_array = []
  array.each do |item| 
    new_array << item unless new_array.include?(item)}  
  new_array.each do |item| 
    arr = my_arr.select{|thing| item == thing}
+    item[:count] = arr.length
+  end
+  return new_array
+end
  
  
describe '#count_elements' do

    # Question 5

    it 'count how many times something appears in an array' do
      expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
    end

  end

  describe '#merge_data' do

    # Question 6

    it 'combines two nested data structures into one' do
      expect(merge_data(keys, data)).to eq(merged_data)
    end

  end

  describe '#find_cool' do

    # Question 7

    it 'find all cool hashes' do
      expect(find_cool(cool)).to eq([{:name => "blake",:temperature => "cool"}])
    end

  end

  describe '#organize_schools' do

    # Question 8

    it 'organizes the schools by location' do
      expect(organize_schools(schools)).to eq(organized_schools)
    end

  end

end



