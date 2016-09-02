class Game
  attr_reader :tribes

  def initialize(a, b)
    @tribes = [a, b]
  end

  def add_tribe(tribe)
    @tribes << tribe
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes.clear
  end

  def merge(name)
    if !@merged 
      new_members = []
      @tribes.each do |tribe|
        new_members.concat(tribe.members)
      end
      @merged = Tribe.new(name: name, members: new_members)
    end
    return @merged
  end

  def individual_immunity_challenge
    @tribes.first.members.sample
  end
end