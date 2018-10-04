# your code goes here

def begins_with_r(array)
  value = true 
  array.each do |word|
    if word[0] == "r" 
      value = true    
    else 
      value = false 
    end 
  end 
  value 
end 

def contain_a(array)
  arr = [] 
  array.each do |word|
    if word.include?("a") 
      arr << word 
    end 
  end 
  arr 
end 

def first_wa(array)
  element = ""
  array.each do |word|
    if word[0..1] == "wa"
      element = word 
      break 
    end 
  end 
  element 
end 

def remove_non_strings(array)
  array.delete_if {|element| !(element.is_a? String)}
end 


#array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]

def count_elements(array)
  count = Hash.new(0)
  arr = []
  array.each do |word|
    count[word] += 1 
  end
  count.each do |key, value|
    key.each do |attribute, name|
      arr << {:name => name, :count => value}
    end 
  end 
  arr 
end 

def merge_data(keys, data)
  arr = []
  data.each do |hash|
    hash.each do |name, stats|
      hash[name][:first_name] = name
      arr << stats
    end 
  end 
  arr 
end 

def find_cool(cool)
  cool_arr = []
  cool.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cool_arr << hash 
      end 
    end
  end
  cool_arr
end 

def organize_schools(schools)
  org_schools = {
    "NYC" => [],
    "SF" => [],
    "Chicago" => []
  }
  schools.each do |school_name, loc_hash|
    loc_hash.each do |loc, city|
      if city == "NYC"
        org_schools["NYC"] << school_name
        elsif city == "SF"
        org_schools["SF"] << school_name
        elsif city == "Chicago"
        org_schools["Chicago"] << school_name
      end
    end
  end 
    org_schools
end 







