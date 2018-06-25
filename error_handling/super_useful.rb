# PHASE 2
def convert_to_int(str)
  Integer(str)
<<<<<<< HEAD
rescue ArgumentError => e
  e.message
=======
>>>>>>> 41793fd350554ca8278c4e1537bd2ddb3c0eecfc
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
<<<<<<< HEAD
  else
    raise StandardError
  end
=======
  else 
    raise StandardError 
  end 
>>>>>>> 41793fd350554ca8278c4e1537bd2ddb3c0eecfc
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
<<<<<<< HEAD
  reaction(maybe_fruit)
rescue
  if maybe_fruit == "coffee"
    puts "thanks for the coffee, try again!"
    retry
  end
end
=======
  reaction(maybe_fruit) 
end  
>>>>>>> 41793fd350554ca8278c4e1537bd2ddb3c0eecfc

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
<<<<<<< HEAD
    raise "Must enter value" if name == '' || fav_pastime == ''
    if yrs_known < 5
      raise "Come back in #{5 - yrs_known} years"
    end
=======
>>>>>>> 41793fd350554ca8278c4e1537bd2ddb3c0eecfc
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
<<<<<<< HEAD
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
=======
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


>>>>>>> 41793fd350554ca8278c4e1537bd2ddb3c0eecfc
