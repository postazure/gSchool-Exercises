def medical_data
  {
    doctors: [
      {
        first_name: 'Dilys',
        last_name: 'Derwent',
        id: '123GS2',
      },

      {
        first_name: 'Miriam',
        last_name: 'Strout',
        id: 'JS12WS'
      },

      {
        first_name: "Augustus",
        last_name: 'Pye',
        id: '42443W'
      }
    ],
    clinics: {
      3002 => {
        name: "Privet Medical Center",
        doctors: ['JS12WS', '42443W']
      },
      3008 => {
        name: "Mongo's Day Care Facility",
        doctors: ['123GS2', '42443W']
      }
    }
  }
end
