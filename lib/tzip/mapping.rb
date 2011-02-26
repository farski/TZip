module TZip
  MAPPING = {}
  ZONINGS.each do |zone, prefixes|
    prefixes.each do |prefix|
      MAPPING[prefix] = ((zone == :unused) ? nil : ZONE_NAMES[zone])
    end
  end
end