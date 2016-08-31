class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    votes = {
      finalists[0] => 0,
      finalists[1] => 0
    }
  end
  
end