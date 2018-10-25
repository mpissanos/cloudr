require 'rainbow'
class Duder::CLI

    def initialize
        puts" Loading...".blue

        Duder::Scraper.scrape_lebowski
        Duder::Scraper.scrape_walter
        Duder::Scraper.scrape_jesus
        Duder::Scraper.scrape_spicoli
        # Duder::Scraper.scrape_slater
        welcome

    end

        
        
   
    def welcome
        print " 
                                                           dddddddd                                        
        DDDDDDDDDDDDD                                      d::::::d                                        
        D::::::::::::DDD                                   d::::::d                                        
        D:::::::::::::::DD                                 d::::::d                                        
        DDD:::::DDDDD:::::D                                d:::::d                                         
          D:::::D    D:::::D uuuuuu    uuuuuu      ddddddddd:::::d     eeeeeeeeeeee    rrrrr   rrrrrrrrr   
          D:::::D     D:::::Du::::u    u::::u    dd::::::::::::::d   ee::::::::::::ee  r::::rrr:::::::::r  
          D:::::D     D:::::Du::::u    u::::u   d::::::::::::::::d  e::::::eeeee:::::eer:::::::::::::::::r 
          D:::::D     D:::::Du::::u    u::::u  d:::::::ddddd:::::d e::::::e     e:::::err::::::rrrrr::::::r
          D:::::D     D:::::Du::::u    u::::u  d::::::d    d:::::d e:::::::eeeee::::::e r:::::r     r:::::r
          D:::::D     D:::::Du::::u    u::::u  d:::::d     d:::::d e:::::::::::::::::e  r:::::r     rrrrrrr
          D:::::D     D:::::Du::::u    u::::u  d:::::d     d:::::d e::::::eeeeeeeeeee   r:::::r            
          D:::::D    D:::::D u:::::uuuu:::::u  d:::::d     d:::::d e:::::::e            r:::::r            
        DDD:::::DDDDD:::::D  u:::::::::::::::uud::::::ddddd::::::dde::::::::e           r:::::r            
        D:::::::::::::::DD    u:::::::::::::::u d:::::::::::::::::d e::::::::eeeeeeee   r:::::r            
        D::::::::::::DDD       uu::::::::uu:::u  d:::::::::ddd::::d  ee:::::::::::::e   r:::::r            
        DDDDDDDDDDDDD            uuuuuuuu  uuuu   ddddddddd   ddddd    eeeeeeeeeeeeee   rrrrrrr                ".green
    
    
    
        puts " 
        
        "
        puts "What's up dudes?? Welcome to Duder. To hear a quote from one of the world's greatest dudes, choose your number below..".white
        puts "<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>><><><><><>><><><><><><><><><><><><>".green

        puts "
        
        "
        
        menu
    end



    def menu
        input = nil
        while input != 6
        puts "
        "

        puts "1. Jeffrey \"The Dude\" Lebowski".white
        puts "2. Jesus Quintana".white
        puts "3. Walter Sobchak".white
        puts "4. Jeff Spicoli".white
        puts "5. Slater".white
        puts "6. EXIT"
        puts " 
        "
        puts "=>".blink.green
        
        input = gets.strip.to_i 
        
            if input == 6
                puts " Thanks for hanging\' Catch you later dudes....".green
                exit
            elsif (1..5).include?(input)
                Duder::Character.quote_generator(input)
                puts" "
                sub_menu(input)
            else
                puts " That's like not an option man, try it again...".green
            end
        
        end
    end

    def sub_menu(sub_input)
        input = nil
        while input != 3
        puts " 
             "
        puts "1. Get more more info"
        puts "2. Go back menu"
        puts "3. EXIT"

        input = gets.strip.to_i

            if input == 3
                puts " Thanks for hanging\' Catch you later dudes....".green
                exit
            elsif input == 1
              character =  Duder::Character.all[sub_input - 1] 

              puts character.url.red
            elsif input == 2
                menu
            else
                puts " That's like not an option man, try it again...".green
            end
        end
    end

end
