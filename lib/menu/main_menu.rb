require 'artii'
require 'colorize'

module Menu
  class MainMenu
    class << self
      def show
        puts logo.colorize(:blue)

        puts "Welcome to academic system\n\n\n"

        puts "What section do you like to go?"
        puts "1 - Students"
        puts "2 - Employees"
        puts "3 - Professors"

        print "Enter with your choice: ".colorize(:blue)
        response = gets.chomp
        case response
        when "1"
          students_menu
        when "2"
          employees_menu
        when "3"
          professors_menu
        end
      end

      private

      def students_menu
        Students::MainMenu.show
      end

      def professors_menu
        Professors::MainMenu.show
      end

      def employees_menu
        Employees::MainMenu.show
      end

      def logo
        a = Artii::Base.new
        a.asciify('Academic System')
      end
    end
  end
end
