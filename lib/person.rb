class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

   def happiness
    @happiness.clamp(0, 10)
   end

   def hygiene
    @hygiene.clamp(0, 10)
   end

   def happy?
    happiness > 7 ? true : false
    end

    def clean?
        hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
        
    end

    def work_out
        @hygiene -= 3
        hygiene
    end

end