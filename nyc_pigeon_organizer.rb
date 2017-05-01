def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |category, detail_hash|
    detail_hash.each do |attribute, name_array|
      name_array.each do |name|
        if hash[name].nil?
          hash[name] = {"#{category}": [attribute.to_s]}
        elsif hash[name].keys.include?(category)
          hash[name][category] << attribute.to_s
        else
          hash[name][category] = [attribute.to_s]
        end
      end
    end
  end
  hash
end
