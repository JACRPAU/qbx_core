---Job names must be lower case (top level table key)
---@type table<string, Job>
return {
    ['unemployed'] = {
        label = 'Unemployed',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Bum',
                payment = 0
            },
        },
    },
    ['police'] = {
        label = 'LSPD',
        type = 'leo',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Officer',
                payment = 75
            },
            [2] = {
                name = 'Corporal',
                payment = 100
            },
            [3] = {
                name = 'Sergeant ',
                payment = 125
            },
            [4] = {
                name = 'Lieutenant',
                isboss = true,
                bankAuth = true,
                payment = 150,
            },
            [5] = {
                name = 'Captain',
                isboss = true,
                bankAuth = true,
                payment = 175,
            },
            [6] = {
                name = 'Chief',
                isboss = true,
                bankAuth = true,
                payment = 200
            },
        },
    },
    ['bcso'] = {
        label = 'BCSO',
        type = 'leo',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Trooper',
                payment = 75
            },
            [2] = {
                name = 'Corporal',
                payment = 100
            },
            [3] = {
                name = 'Sergeant ',
                payment = 125
            },
            [4] = {
                name = 'Lieutenant',
                isboss = true,
                bankAuth = true,
                payment = 150,
            },
            [5] = {
                name = 'Captain',
                isboss = true,
                bankAuth = true,
                payment = 175,
            },
            [6] = {
                name = 'Chief',
                isboss = true,
                bankAuth = true,
                payment = 200
            },
        },
    },
    ['sasp'] = {
        label = 'SASP',
        type = 'leo',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Officer',
                payment = 75
            },
            [2] = {
                name = 'Corporal',
                payment = 100
            },
            [3] = {
                name = 'Sergeant ',
                payment = 125
            },
            [4] = {
                name = 'Lieutenant',
                isboss = true,
                bankAuth = true,
                payment = 150,
            },
            [5] = {
                name = 'Captain',
                isboss = true,
                bankAuth = true,
                payment = 175,
            },
            [6] = {
                name = 'Chief',
                isboss = true,
                bankAuth = true,
                payment = 200
            },
        },
    },
    ['ambulance'] = {
        label = 'EMS',
        type = 'ems',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Paramedic',
                payment = 75
            },
            [2] = {
                name = 'Doctor',
                payment = 100
            },
            [3] = {
                name = 'Surgeon',
                payment = 125
            },
            [4] = {
                name = 'Chief',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['realestate'] = {
        label = 'Real Estate',
        type = 'realestate',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'House Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Broker',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['taxi'] = {
        label = 'Taxi',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 25
            },
            [1] = {
                name = 'Driver',
                payment = 75
            },
            [2] = {
                name = 'Event Driver',
                payment = 100
            },
            [3] = {
                name = 'Sales',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['bus'] = {
        label = 'Bus',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Driver',
                payment = 25
            },
        },
    },
    ['judge'] = {
        label = 'Honorary',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Judge',
                payment = 100
            },
        },
    },
    ['lawyer'] = {
        label = 'Law Firm',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Associate',
                payment = 50
            },
        },
    },
    ['reporter'] = {
        label = 'Reporter',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Journalist',
                payment = 25
            },
        },
    },
    ['trucker'] = {
        label = 'Trucker',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Driver',
                payment = 0
            },
        },
    },
    ['tow'] = {
        label = 'Towing',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Driver',
                payment = 0
            },
        },
    },
    ['garbage'] = {
        label = 'Garbage',
        defaultDuty = false,
        offDutyPay = false,
        type = 'garbage',
        grades = {
            [0] = {
                name = 'Collector',
                payment = 25
            },            
            [1] = {
                name = 'Recycler',
                payment = 35
            },
            [2] = {
                name = 'Manager',
                payment = 65
            },
            [3] = {
                name = 'Owner',
                payment = 0,
                isboss = true,
                bankAuth = true,
            },
        },
    },
    ['vineyard'] = {
        label = 'Vineyard',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Picker',
                payment = 50
            },
        },
    },
    ['hotdog'] = {
        label = 'Hotdog',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Sales',
                payment = 50
            },
        },
    },
    ['cityservices'] = {
        label = 'City Services',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Worker',
                payment = 5
            },
        },
    },

    -- LS CUSTOMS
    ['lscustomseast'] = {
        label = 'Hudsons Hoopties',
        type = 'mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Novice',
                payment = 75
            },
            [2] = {
                name = 'Experienced',
                payment = 100
            },
            [3] = {
                name = 'Manager',
                payment = 125,                
                bankAuth = true,
            },
            [4] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['lscustomscyprus'] = {
        label = 'LS Customs Cyprus',
        type = 'mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Novice',
                payment = 75
            },
            [2] = {
                name = 'Experienced',
                payment = 100
            },
            [3] = {
                name = 'Manager',
                payment = 125,                
                bankAuth = true,
            },
            [4] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    -- Mechanic
    ['lsautos'] = {
        label = 'Phoenix Customs',
        type = 'mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Novice',
                payment = 75
            },
            [2] = {
                name = 'Experienced',
                payment = 100
            },
            [3] = {
                name = 'Manager',
                payment = 125,                
                bankAuth = true,
            },
            [4] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['truckyoupaleto'] = {
        label = 'Truck You Paleto',
        type = 'mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Novice',
                payment = 75
            },
            [2] = {
                name = 'Experienced',
                payment = 100
            },
            [3] = {
                name = 'Manager',
                payment = 125,                
                bankAuth = true,
            },
            [4] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['truckyoulamesa'] = {
        label = 'Truck You La Mesa',
        type = 'mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Novice',
                payment = 75
            },
            [2] = {
                name = 'Experienced',
                payment = 100
            },
            [3] = {
                name = 'Manager',
                payment = 125,                
                bankAuth = true,
            },
            [4] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['truckyouhighway'] = {
        label = 'Truck You Highway',
        type = 'mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Novice',
                payment = 75
            },
            [2] = {
                name = 'Experienced',
                payment = 100
            },
            [3] = {
                name = 'Manager',
                payment = 125,                
                bankAuth = true,
            },
            [4] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },

    ['autoexotics'] = {
        label = 'Auto Exotics',
        type = 'mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Novice',
                payment = 75
            },
            [2] = {
                name = 'Experienced',
                payment = 100
            },
            [3] = {
                name = 'Manager',
                payment = 125,                
                bankAuth = true,
            },
            [4] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    
    ['pdm'] = {
        label = 'PDM',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['mechanic'] = {
        label = 'Mechanic',
        type = 'mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Novice',
                payment = 75
            },
            [2] = {
                name = 'Experienced',
                payment = 100
            },
            [3] = {
                name = 'Advanced',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['eliteautos'] = {
        label = 'Elite Autos',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['elitecustoms'] = {
        label = 'Elite Customs',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['boatdealer'] = {
        label = 'Boat Dealer',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['bikedealer'] = {
        label = 'GK BikeZ',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Finance',
                payment = 100
            },
            [3] = {
                name = 'Manager',
                payment = 125
            },
            [4] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },
    ['airdealer'] = {
        label = 'Air Dealer',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['vinejewels'] = {
        label = 'Vine Jewellers',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },

    ['comedy'] = {
        label = 'Split Sides Comedy',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Cleaner',
                payment = 50
            },
            [1] = {
                name = 'Door Staff',
                payment = 75
            },
            [2] = {
                name = 'Hospitality Attendant',
                payment = 100
            },
            [3] = {
                name = 'Comedian',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },

    ['upnatom'] = {
        label = 'Up n Atom',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },
    
    ['burgershot'] = {
        label = 'Burgershot',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },
    
    
    ['tobacco'] = {
        label = 'Daddy Tobacco ',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Farmer',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },
    ['hornys'] = {
        label = 'Hornys',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },
    ['pizzathis'] = {
        label = 'Pizza This',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },
    ['gruppe6'] = {
        label = 'Gruppe 6',
        type = 'security',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Trooper',
                payment = 75
            },
            [2] = {
                name = 'Corporal',
                payment = 100
            },
            [3] = {
                name = 'Sergeant ',
                payment = 125
            },
            [4] = {
                name = 'Lieutenant',
                isboss = true,
                bankAuth = true,
                payment = 150,
            },
            [5] = {
                name = 'Captain',
                isboss = true,
                bankAuth = true,
                payment = 175,
            },
            [6] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },
    
    ['taco'] = {
        label = 'Moms Tacos',
        type = 'momstacos',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Cleaner',
                payment = 50
            },
            [1] = {
                name = 'Cashier',
                payment = 75
            },
            [2] = {
                name = 'Cook',
                payment = 100
            },
            [3] = {
                name = 'Supervisor',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },
    ['boathouse'] = {
        label = 'The Boat House',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Novice',
                payment = 75
            },
            [2] = {
                name = 'Experienced',
                payment = 100
            },
            [3] = {
                name = 'Manager',
                payment = 125,                
                bankAuth = true,
            },
            [4] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['sandyair'] = {
        label = 'Sandy Air Services',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['japanese'] = {
        label = 'Hurro Japanese',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },

    ['bigpaulies'] = {
        label = 'Big Paulies Autos',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
    },
    ['cityhall'] = {
        label = 'State of San Andreas',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Welfare',
                payment = 50
            },
            [1] = {
                name = 'Assistant',
                payment = 75
            },
            [2] = {
                name = 'Security',
                payment = 100
            },
            [3] = {
                name = 'Representative',
                payment = 125
            },
            [4] = {
                name = 'Mayor',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Governor',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },
    ['doc'] = {
        label = 'Corrections',
        type = 'leo',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Trooper',
                payment = 75
            },
            [2] = {
                name = 'Corporal',
                payment = 100
            },
            [3] = {
                name = 'Sergeant ',
                payment = 125
            },
            [4] = {
                name = 'Lieutenant',
                isboss = true,
                bankAuth = true,
                payment = 150,
            },
            [5] = {
                name = 'Captain',
                isboss = true,
                bankAuth = true,
                payment = 175,
            },
            [6] = {
                name = 'Chief',
                isboss = true,
                bankAuth = true,
                payment = 200
            },
        },
    },
    ['doj'] = {
        label = 'Dept Justice',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Showroom Sales',
                payment = 75
            },
            [2] = {
                name = 'Business Sales',
                payment = 100
            },
            [3] = {
                name = 'Finance',
                payment = 125
            },
            [4] = {
                name = 'Manager',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
            [5] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },
    
    ['vu'] = {
        label = 'Vanilla Unicorn',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'Recruit',
                payment = 50
            },
            [1] = {
                name = 'Novice',
                payment = 75
            },
            [2] = {
                name = 'Experienced',
                payment = 100
            },
            [3] = {
                name = 'Manager',
                payment = 125,                
                bankAuth = true,
            },
            [4] = {
                name = 'Boss Bish',
                isboss = true,
                bankAuth = true,
                payment = 0
            },
        },
    },




}
