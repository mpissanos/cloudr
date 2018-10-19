class Duder::CLI

    def self.start
        Duder::Scraper.scrape_page
        greet
        menu
    end
   
    def self.greet
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
        DDDDDDDDDDDDD            uuuuuuuu  uuuu   ddddddddd   ddddd    eeeeeeeeeeeeee   rrrrrrr                "
    
    
    
        puts " 
        
        "
        puts "What's up dudes?? welcome to Duder. To hear a totally meaningful quote from one of the dudes, choose your number below.."
        puts "<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>><><><><><>><><><><><><><><><><><><>"

    end

    def self.menu
        puts "1. Jeffrey \"The Dude\" Lebowski"
        puts "2. Jesus Quintana"
        puts "3. Walter Sobchak"
        puts "Oh yeah, whenever you want, you can just type \"exit\" to get out of here.."
        puts "=>"

        input = gets.strip
    
     case
        when input == 1
            puts lebowski_arr.random
        when input == 2
            puts jesus_arr.random
        when input == 3
            puts walter_arr.random
        when input == "exit"
            puts "Far out, catch you later."
            exit
        else
            puts "That's like, not an option man... Try it again."
            return menu
        end
    end


end
