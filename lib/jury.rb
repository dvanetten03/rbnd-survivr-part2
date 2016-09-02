class Jury
  attr_accessor :members

  def initialize
    @members = []
    @finalists = {}
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    votes = {
      finalists[0] => 0,
      finalists[1] => 0
    }
    members.each do |member|
      vote = finalists.sample
      puts vote
      votes[vote] += 1
    end
    return votes
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