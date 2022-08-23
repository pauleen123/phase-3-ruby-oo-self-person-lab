# your code goes here
class Person
    attr_reader :name, :hygiene
    attr_accessor :amount, :friend, :topics, :bank_account, :happiness
   
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def hygiene=(value)
     if value < 0
        @hygiene = 0
      elsif value > 10
        @hygiene = 10
      else
        @hygiene = value
      end
    
    end
  
    def happiness=(value)
      if value < 0
        @happiness = 0
      elsif value > 10
        @happiness = 10
      else
        @happiness = value
      end
    end
  
    def happy?
      @happiness > 7 ? true : false
    end
  
    
    def clean?
      @hygiene > 7 ? true : false
    end
  
    
    def get_paid(value)
      @bank_account += value
      "all about the benjamins"
    end
  
    def take_bath
      self.hygiene = (@hygiene + 4)
      '♪ Rub-a-dub just relaxing in the tub ♫'
    end
  
    def work_out
      self.hygiene = (@hygiene - 3)
      self.happiness = (@happiness + 2)
      '♪ another one bites the dust ♫'
    end
  
    def call_friend(name)
      self.friend = name
      self.happiness= (@happiness + 3)
      self.friend.happiness= (self.friend.happiness + 3)
      "Hi #{self.friend.name}! It's #{@name}. How are you?"
    end
  
    def start_conversation(name, topic)
      self.friend = name
      self.topics = topic
  
      if self.topics == "politics"
        self.happiness = (@happiness - 2)
        self.friend.happiness= (self.friend.happiness - 2)
        'blah blah partisan blah lobbyist'
  
      elsif self.topics == "weather" 
        self.happiness= (@happiness + 1)
        self.friend.happiness= (self.friend.happiness + 1)
        'blah blah sun blah rain'
  
      else
        'blah blah blah blah blah'
      end
  
    end
  end

    
