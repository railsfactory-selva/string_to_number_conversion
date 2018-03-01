require "num_sum/version"

module NumSum
  def self.sum_numbers(input_number)
   search = form_an_array(input_number)
   sum_it_up(search)
 end

 def self.form_an_array(input_number)
   input_number.gsub(regex_code, delimiter).split(delimiter).reject(&:empty?)
 end

 def self.sum_it_up(search_array)
   response = 0
   search_array.inject(0) do |total,val|
     if val.to_i.positive? == true
        response = total.to_i + val.to_i
     else
        raise  "Input contains non-positive values"
     end
   end
 end

 def self.regex_code
   /[^-0-9]/
 end

 def self.delimiter
   ","
 end

end
