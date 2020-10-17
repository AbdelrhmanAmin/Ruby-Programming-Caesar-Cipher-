 $letters = "abcdefghijklmnopqrstuvwxyz".split('');
 $indices = Array.new()
 $result =  Array.new()
 $extras = Array.new()
 def caesar_cipher(str,num)
  arr = str.downcase!.split('')
  arr.each do |item|
    $indices.push( $letters.find_index(item))

  end
  arr.each_with_index do |item, index|
    if $letters.find_index(item).nil?
      $extras.push(index)
    end
  end
  $indices.select{|x| x != nil}.map do |item|
    item = item + num
    if item > 26
      item = item - 26
    end
    $result.push($letters[item])
   end
   $extras.each do |nuller|
     $result.insert(nuller, arr[nuller])
   end
  
end
caesar_cipher("Bmfy f xywnsl!", -5)
p $result.join('').capitalize
