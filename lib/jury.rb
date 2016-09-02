class Jury
  attr_accessor :members

  def initialize
    @members = []
    @finalists = {}
  end

  def add_member(member)
    @members << member
  end

  def cast_votes (finalists)
    @finalists = Hash.new
    finalists.each do |finalist|
      @finalists[finalist] = 0
    end

    @members.each do |member|
      random = finalists.sample
      puts "#{member} voted for #{random}"
      @finalists[random] += 1
    end
    return @finalists
end

  def report_votes(votes)
    votes.each do |finalist, votes|
      puts "#{finalist}: " + "#{votes}"
    end
  end

  def announce_winner(votes)
    finalists = votes.keys
    winner = votes.max_by{|finalist, votes| votes}.first
    puts "The winner is... #{winner.to_s.capitalize}"
    winner
  end
end