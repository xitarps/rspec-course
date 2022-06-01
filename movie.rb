class Movie
  attr_reader :actor

  def initialize actor
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end
