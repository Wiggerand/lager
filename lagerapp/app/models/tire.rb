class Tire < ApplicationRecord
  belongs_to :car

  PRODUCER_OPTIONS = [
  	'Bridgestone',
  	'Continental',
  	'Dunlop',
  	'Falken',
  	'Firstone',
  	'Hankook',
  	'Goodyear',
  	'Hercules',
  	'Kleber',
  	'Sailun'
  ]
  validates :producer, inclusion: { in: PRODUCER_OPTIONS }

  TIRESIZE_OPTIONS = [

                                   
                                   
          '155/80 R15','165/45 R15', '165/50 R15','175/55 R15',                
          '175/60 R15','175/65 R15', '185/45 R15','185/55 R15',                          
          '185/60 R15','185/65 R15', '195/45 R15','195/50 R15',                         
          '195/55 R15','195/60 R15', '195/65 R15','195/70 R15',                          
          '195/80 R15','205/45 R15', '205/50 R15','205/55 R15',                              
          '205/60 R15','205/65 R15', '205/70 R15','215/40 R15',                          
          '215/45 R15','215/50 R15', '215/60 R15','215/65 R15',                          
          '215/70 R15','215/75 R15', '225/50 R15','225/60 R15',                       
          '225/75 R15','235/75 R15', '245/35 R15','255/60 R15',                          
          '255/70 R15','265/70 R15', '265/75 R15','165/35 R17',                       
          '205/55 R17','215/35 R17', '215/40 R17','225/35 R17',                         
          '235/45 R17','235/60 R17', '245/45 R17','245/50 R17',                          
          '255/40 R17','255/45 R17', '265/65 R17','335/35 R17'                         
                                      
                                      
   ]

  validates :tiresize, inclusion: { in: TIRESIZE_OPTIONS }

  DOTWEEK_OPTIONS = (
    01..52
    )
 # validates :dotweek, inclusion: { in: DOTWEEK_OPTIONS }

  DOTYEAR_OPTIONS = (10..17)
  #validates :dotyear, inclusion: { in: DOTYEAR_OPTIONS }

  RACK_OPTIONS = [
    '1','2','3','4','5','6','7','8'
  ]

  validates :rack, inclusion: { in: RACK_OPTIONS }

  CASE_OPTIONS = [
    '1','2','3','4','5'
  ]

  validates :case, inclusion: { in: CASE_OPTIONS }
end
             
                             
                                   
                                  
                                    
                                 
                                     
                                   
                               
          
 