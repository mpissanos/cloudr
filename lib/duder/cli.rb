
class Duder::CLI

    def run
        puts" Loading..."

        Duder::Scraper.scrape_lebowski
        Duder::Scraper.scrape_walter
        Duder::Scraper.scrape_jesus
        Duder::Scraper.scrape_spicoli
        Duder::Scraper.scrape_slater

        
        welcome
        menu
        pick
        again?
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
    end

    def menu
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
    end

    

    def pick(input=nil)
        input = gets.strip.to_i 
        if input == 6
            exit_prompt
        elsif (1..5).include?(input)
        print_quote(input) 
        puts" "
        else
            error_message
        end
    end
        
    

    def self.error_message
        puts " That's like not an option man, try it again..."
        return input
    end

    def print_quote(input)
        if input == "exit"
            exit_prompt
        else
        puts Duder::Character.quote_generator(input)
        puts"

        "
        end
    end

        
    def self.exit_prompt
            puts " Thanks for hanging\' Catch you later dudes....".red
        exit
    end
    

    def self.again?

    puts " Wanna try another one?
        "
        return pick

    end



end
