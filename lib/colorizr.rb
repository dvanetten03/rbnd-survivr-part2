class String

  @colors = {
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    pink: 35,
    light_blue: 94, 
    white: 97, 
    light_grey: 37,
    black: 30
  }

  def self.colors
    @colors.keys
  end

  def self.sample_colors
    @colors.each do |color, value|
      puts "This is a #{color} string in terminal.".send(color)
    end
  end

  def self.create_colors
    @colors.each do |key, value|
      self.send(:define_method, "#{key}") do
        "\e[#{value}m#{self}\e[0m"
      end
    end
  end

  String.create_colors
  String.sample_colors
 
end

 # String.colors
 # tested in irb yields => [:red, :green, :yellow, :blue, :pink, :light_blue, :white, :light_grey, :black]

