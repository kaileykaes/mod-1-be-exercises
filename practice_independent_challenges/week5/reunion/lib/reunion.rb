class Reunion
  attr_reader :name, 
              :activities
  
  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost
    @activities.flat_map do |activity|
      activity.participants.map do |k,v| 
        v
      end
    end.sum
  end
end