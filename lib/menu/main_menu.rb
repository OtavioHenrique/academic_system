module Menu
  class MainMenu
    require 'artii'
    class << self
      def show
        puts logo

        puts "Welcome to academic system\n\n\n"

        puts "What section do you like to go?"
        puts "1 - Students"
        puts "2 - Employees"
        puts "3 - Professors"
      end

      private

      def logo
        a = Artii::Base.new
        a.asciify('Academic System')
      end
    end
  end
end
