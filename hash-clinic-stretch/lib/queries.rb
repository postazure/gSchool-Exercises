def doctors_patients_names(doc, patients)
  doc_id = doc[:medical_id].downcase
  patient_name_list = []

  patients.each do |pat_info|
    if pat_info[:doctor].include?(doc_id)
      patient_name_list << pat_info[:name]

    end
  end
  patient_name_list
end

def doctors_pat_names_normalized(doc, pat)
  doc_id = doc[:medical_id].downcase
  patient_name_list = []

  pat.each do |pat_info|
    if pat_info[:doctor].include?(doc_id)
      patient_name_list << pat_info[:name].split(" ").reverse.join(", ")
    end
  end

  patient_name_list
end

def doctors_patients(doc, pat)
  doc_id = doc[:medical_id].downcase
  patient_list = []

  pat.each do |pat_info|
    if pat_info[:doctor].include?(doc_id)
      patient_list << pat_info
    end
  end

  patient_list

end


def patients_doctors(doctors, patient)
  doctor_list = []
  doc_id = patient[:doctor].upcase

  doctors.each_value do |doctor_info_hash|
    if doctor_info_hash[:medical_id].include?(doc_id)
      doctor_list << doctor_info_hash
    end
  end

  doctor_list.push("No Doctors Found") if doctor_list.empty?
  doctor_list

end

def doctors_with_no_patients(doctors, patients)
  doctor_list = {}
  no_pat_list = []
  doctors.each do |doctor_name, doctor_info|
    pats_list = []

    patients.each do |pat_hash|
      if pat_hash[:doctor].downcase == doctor_info[:medical_id].downcase#doctor's medical_id
        pats_list.push(pat_hash)
      end
    end

    doctor_list[doctor_name] = pats_list
  end

  doctor_list.each do |key, value|
    no_pat_list.push(doctors[key]) if value.empty?

  end

  [
    {
      last_name: no_pat_list[0][:last_name],
      first_name: no_pat_list[0][:first_name]
    },
    {
      medical_id: no_pat_list[0][:medical_id]
    }
  ]
end

def under_utilized_clinics(clinics, doctors, patients)
  #
  # doctor_last_name_list = {}
  # unused_clinics = {}
  # clinics.each do |clinic_id, clinic_name_doctors|
  #   #get last name of doctor from each clinic
  #   clinic_name_doctors.each_value do |c_doctors|
  #     doctor_last_name_list.push(c_doctors.capitalize)
  #   end
  #
  #   #use last name to get doctor medical_id
  #   doctor_last_name_list.each do |doc_l_name|
  #     doctors.each do |doc_key, doc_info|
  #       if doc_l_name.include?(doc_info[:last_name])
  #         unused_clinics[]
  #       end
  #     end
  #   end
  #
  #
  #
  # end

end
