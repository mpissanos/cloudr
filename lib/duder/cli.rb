require 'pry'
class Duder::CLI

    

    def run
        Duder::Scraper.new
        puts "RUNNING"
        menu
        choices
    end
   
    def menu
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
        puts "What's up dudes?? welcome to Duder. To hear a quote from one of the world's greatest dudes, choose your number below.."
        puts "<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>><><><><><>><><><><><><><><><><><><>".red

        puts"
         Oh yeah, whenever you want, you can just type \"exit\" to get out of here.. "

    

    
        puts "
        
        "
    def choices

        puts "1. Jeffrey \"The Dude\" Lebowski"
        puts "2. Jesus Quintana"
        puts "3. Walter Sobchak"
        puts "4. Jeff Spicoli"
        puts "5. Slater"
        
        
        
        puts "=>".blink

        input = gets.chomp.to_i || "exit"
    
     
    case
        when input == 1
            Duder::Character.generate_quote(1)
         when input == 2
            Duder::Character.generate_quote(2)
        when input == 3 
            Duder::Character.generate_quote(3)
        when input == 4
            Duder::Character.generate_quote(4)
        when input = 5
            Duder::Character.generate_quote(5)
        when input == "exit"
            puts "Far out, catch you later."
            binding.pry
            exit
        else
            puts "
            
            That's like, not an option man... Try it again."
        return choices
        end
    end
end



end
