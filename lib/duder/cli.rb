
class Duder::CLI

    def initialize
        puts" Loading..."

        Duder::Scraper.scrape_lebowski
        Duder::Scraper.scrape_walter
        Duder::Scraper.scrape_jesus
        Duder::Scraper.scrape_spicoli
        Duder::Scraper.scrape_slater
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
        DDDDDDDDDDDDD            uuuuuuuu  uuuu   ddddddddd   ddddd    eeeeeeeeeeeeee   rrrrrrr                ".red
    
    
    
        puts " 
        
        "
        puts "What's up dudes?? Welcome to Duder. To hear a quote from one of the world's greatest dudes, choose your number below.."
        puts "<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>><><><><><>><><><><><><><><><><><><>".red

        puts "
        
        "
        
        menu
    end



    def menu
        input = nil
        while input != 6
        puts "
        "

        puts "1. Jeffrey \"The Dude\" Lebowski"
        puts "2. Jesus Quintana"
        puts "3. Walter Sobchak"
        puts "4. Jeff Spicoli"
        puts "5. Slater"
        puts "6. Exit"
        puts " 
        "
        puts "=>".blink
        
        input = gets.strip.to_i 
        
        if input == 6
            puts " Thanks for hanging\' Catch you later dudes....".red
            exit
        elsif (1..5).include?(input)
            print_quote(input) 
            puts" "
        else
            error_message
            menu
        end
    end
end
    


    

    def error_message
        puts " That's like not an option man, try it again..."
    end

    def print_quote(input)
       puts  Duder::Character.quote_generator(input).red
    end


end
