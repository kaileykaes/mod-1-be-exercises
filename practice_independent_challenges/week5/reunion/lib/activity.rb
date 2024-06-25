class Activity 
  attr_reader :name, 
              :participants
  
  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, payment)
    @participants[name] = payment
  end

  def total_cost
    total_cost = 0
    @participants.each do |participant, payment|
      total_cost += payment
    end
    total_cost
  end
  
  def split
    total_cost / total_participants
  end
  
  def owed
    participant_owe = {}
    @participants.each do |participant, payment|
      participant_owe[participant] = split - payment
    end
    participant_owe
  end

  private
  def total_participants 
    count = 0
    @participants.each do |participant, payment|
      count += 1 if participant
    end
    count
  end
end