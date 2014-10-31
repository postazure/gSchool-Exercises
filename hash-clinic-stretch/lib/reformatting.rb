def doctor_name(doctor)

  if !doctor[:name].nil?
    ary = [doctor[:name]]
  else
    ary = ["#{doctor[:last_name]}", "#{doctor[:first_name]}"].reject { |s| s.empty? }
  end
  ary.join(", ")

end
