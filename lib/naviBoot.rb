require "NaviBoot/version"

module NaviBoot

  extend self

  def get_initial_count
    puts "The GEM will give you a random integer representing a Boot in breakout"
    puts "until there are no Boots left. The goal is to promote diversity in navigational"
    puts "interactions whilst livecoding for a group."
    puts
    print "How many boots are booting? :> "
    gets.chomp
  end

  def convert_int_to_array(num)
    @boot_nums = *(1..num.to_i)
  end

  def print_rando_int
    puts @boot_nums.shuffle!.pop
  end

  def rerun?
    print "ENTER to exit, any other key to loop through again. :> "
    input = gets.chomp
    return true unless input == ""
    false
  end

  def runner
    convert_int_to_array(get_initial_count)
    puts "ENTER for next Boot"
    print_rando_int
    until @boot_nums.length == 0
      gets.chomp
      print_rando_int
    end
    runner if rerun?
  end

end
