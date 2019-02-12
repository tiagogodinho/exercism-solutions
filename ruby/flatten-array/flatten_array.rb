class FlattenArray
  def self.flatten(array, result = [])
    array.each do |item|
      if item.is_a? Array
        flatten(item, result)
      else
        result << item unless item.nil?
      end
    end

    result
  end
end
