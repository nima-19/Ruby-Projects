def bubble_sort(array)
	array.each_with_index do |firstValue,firstIndx|
 	array.each_with_index do |secondValue,secondIndx|
	temp=0
	if array[firstIndx] < array[secondIndx]
		temp = array[firstIndx]
		array[firstIndx] = array[secondIndx]
		array[secondIndx] = temp
	end
	end
	end

end
result=bubble_sort([4,3,78,2,0,2])
puts "The sorted array is #{result}"
