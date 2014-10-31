def doctors_first_names(big_data_hash)

  big_data_hash[:doctors].map {|item| item[:first_name]}

end
def doctors_last_names(big_data_hash)
  big_data_hash[:doctors].map {|item| item[:last_name]}

end
def doctors_ids(big_data_hash)
  big_data_hash[:doctors].map {|item| item[:id]}

end
def clinic_names(big_data_hash)
  str = []
  big_data_hash[:clinics].each_value do |val|
   str << val[:name]
  end
  str
end
def clinic_ids(big_data_hash)
  str = []
  big_data_hash[:clinics].each_key do |key|
    str << key
  end
  str
end

def doctors_at_a_clinic(data_hash, id)
  working_ary = []

  data_hash[:clinics][id][:doctors].each do |doc_id|
    data_hash[:doctors].each do |doc_info|
      if doc_info[:id] == doc_id
        working_ary << doc_info
      end
    end
  end
  working_ary
end

def clinics_for_doctor(data_hash, id)
  r_hash = []
  data_hash[:clinics].each_value do |clinic_info|
    if clinic_info[:doctors].include?(id)
      r_hash << clinic_info
    end
  end
  r_hash
end

def clinic_names_for_doctor(data, id)
  clinic_name = ""
  data[:clinics].each_value do |value|
    if value[:doctors].include?(id)
      clinic_name = value[:name]
    end
  end
  [clinic_name]

end

def doctorn_clinic_ids data, id
  clinic_id = 0
  data[:clinics].each do |key, value|
    if value[:doctors].include?(id)
      clinic_id = key
    end
  end
  [clinic_id]

end

# keep going, one test at a time
