# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

    def span 
        return nil if self.empty?
        new_arr = self.sort
        smallest = new_arr[0]
        largest = new_arr[-1]
        return largest - smallest
    end 

    def average 
        return nil if self.empty?
        return (self.flatten.sum) / self.length.to_f
    end 

    def median
        return nil if self.empty?
        
        num_of_elements = self.sort!.length - 1
        half_of_elements = num_of_elements / 2
        if self.length.odd?
            half_of_elements.times do
                self.pop
                self.shift
            end 
            return self.join.to_i
        else
            half_of_elements.times do 
                self.pop
                self.shift
            end 
            return ((self[0] + self[-1]) / 2.0)
        end 
    end

    def counts
        hash = Hash.new(0)
        self.each{ |ele| hash[ele] += 1}
        hash
    end 

    def my_count(value)
        count = 0 
        self.each { |ele| count +=1 if ele.include?(value)}
        count 
    end

    def my_index(value)
        return nil if !self.include?(value)
        self.each_with_index { |ele, i| return i if ele == value}
    end 

    def my_uniq
        hash = Hash.new(0)
        self.each { |ele| hash[ele] = 0 }
        return hash.keys
    end 

    def my_transpose
        # return a new 2d array 
        # where horizontal rows are converted to virtical columns 
        # # example : [
        #     ["a", "b", "c"],   array[0] = [0, 1, 2]
        #     ["d", "e", "f"],   array[1] = [0, 1, 2]
        #     ["g", "h", "i"]    array[2] = [0, 1, 2]
        # ]
        # = [
        #     ["a", "d", "g"], array[0] = [0,0,0]
        #     ["b", "e", "h"], array[1] = [1,1,1]
        #     ["c", "f", "i"]  array[2] = [2,2,2]
        # ]
            new_arr = []
           (0...self.length).each do |row|
            arr = []
            (0...self.length).each do |col|
                arr << self[col][row]
            end 
            new_arr << arr
        end 
        return new_arr
    end 
  
end
