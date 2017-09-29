class Zombie


    @@horde = []
    @@plague_level = 10
    @@max_speed = 5
    @@max_strength = 8
    @@default_speed = 1
    @@default_strength = 3


  def initialize(zombie_speed, zombie_strength)
    if zombie_speed > @@max_speed
      zombie_speed == @@default_speed
    end

      if zombie_strength > @@max_strength
        zombie_strength = @@default_strength
      end
  end

  def self.all
    return @@horde
  end

  def encounter()
    if outrun_zombie?
      "phew, you out ran the zombie"
    else
      return
        puts "Zombie caught you. You are a zombie now"
        @@horde << self
    end

    if survive_attack?()
      return "You lost to the zombie. You -are-a-zombie!"
      @@horde << self
    else
      return  "Good stuff! you beat the zombie"
  end

  def outrun_zombie?()
    zombie_speed = @@max_speed rand(1 ..5)
    human_speed = @@max_speed rand(1 ..9)
      if zombie_speed >= human_speed
        return false
      else
        return true
      end
  end

  ##I didnt put what happens if you lose to the zombie and @@horde <<
  #I also didnt do the encounter

  def survive_attack?()
    zombie_strength = @@max_strength rand(1 ..8)
    human_strength = @@max_strength rand(1 ..12)
    if zombie_strength >= human_strength
      return false
    else
      return false
    end
  end

  def self.all?()

  end

  def self.new_day()
    self.some_die_off()
    self.spawn()
    self.increase_plague_level()


    #unsure how to do this one. its asking me to references some die off but I havent ddone it yet
    #This class method represents the events of yet another day of the zombie apocalypse. Every day some zombies die off (phew!), some new ones show up, and sometimes the zombie plague level increases. In order to accomplish this, new_day should call some_die_off, spawn, and increase_plague_level.
  end

  def self.some_die_off()
    some_die_off = rand(@@plague_level)
    @@horde -= some_die_off


  end

  def self.spawn()
    number_of_zombies = (1+rand(@@plague_level))
    number_of_zombies.times do
      zombie = Zombie.new(1+rand(@@max_speed), 1+rand(@@max_strength))
       @@horde << zombie
     end

  end

  def self.increase_plague_level()
    increase_plague_level =  rand(2)
    #I think @@plague_level << increase_plague_level is wrong
  end

end
