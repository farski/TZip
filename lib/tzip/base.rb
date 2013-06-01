module TZip
  module ClassMethods
    def find_by_zipcode(zipcode)
      [5,4,3,2,1].each do |i|
        return MAPPING[zipcode.to_s[0,i]] if MAPPING.has_key?(zipcode.to_s[0,i])
      end
      return nil
    end
  end
end
