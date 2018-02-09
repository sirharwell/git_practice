require 'colorize'
require_relative 'git'

class Main
  include Git

  def menu
    puts 'MAIN MENU'.colorize(:black)
    puts '1: Enter git command'.colorize(:crimson)
    puts '2: Exit'.colorize(:orange)
    choice = gets.to_i
    case choice
      when 1
        puts 'Enter git command'.colorize(:blue)
        puts_git(gets.strip)
        menu
      when 2
        exit
      else
        puts 'Invalid choice'.colorize(:red)
        menu
    end
  end
end
Main.menu
