def doctors
  {
    "Dr. Derwent" => {
      first_name: 'Dilys',
      last_name: 'Derwent',
      medical_id: '123GS2'
    },

    "Miriam" => {
      first_name: 'Miriam',
      last_name: 'Strout',
      medical_id: 'JS12WS'
    },

    "Pye" => {
      first_name: "Augustus",
      last_name: 'Pye',
      medical_id: '42443W'
    },
    "Gunhilda" => {
      name: "Gunhilda of Gorsemoor",
      medical_id: '1111XZ'
    }
  }
end

def patients
  [
    {
      name: 'Bertha Jorkins',
      email: 'bertha@albania-death-match.com',
      doctor: '42443w'
    },
    {
      name: 'Cedric Diggery',
      email: 'mr-grey-eyes@gmail.com',
      doctor: '567wgt'
    },
    {
      name: 'Widdershins, Willy',
      email: 'jokesonyou@magicmail.com',
      doctor: 'js12ws'
    },
    {
      name: 'Remus Lupin',
      email: 'lupin-thru-the-land@moonlight.com',
      doctor: '42443w'
    },
    {
      name: 'Arthur Weasley',
      email: 'a.weasley@minister.magic',
      doctor: '1111XZ'
    }
  ]
end

def clinics
  {
    3002 => {
      name: "Privet Medical Center",
      doctors: ['Johnson', 'Williamson']
    },
    3002 => {
      name: "Mongo's Day Care Facility",
      doctors: ['Johnson', 'Wilson']
    }
  }
end
