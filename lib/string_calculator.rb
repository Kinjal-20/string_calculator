module StringCalculator
  def self.add(string)
    values = extract_values(string)
    raise_error_if_negative_integer_present(values)
    values.sum
  end

  def self.extract_values(string)
    # When converting empty string to a integer ruby by
    # default returns 0
    string.split(/[^0-9-]+/).map(&:to_i)
  end

  def self.raise_error_if_negative_integer_present(array)
    negatives = array.select(&:negative?)
    return false if negatives.length == 0

    raise "negatives not allowed - (#{negatives.join(', ')})"
  end
end