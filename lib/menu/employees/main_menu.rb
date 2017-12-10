require 'colorize'

module Menu
  module Employees
    class MainMenu
      class << self
        def show
          puts "\n\nEmployees Menun\n\n".colorize(:blue)

          puts "What do you want?"
          puts "1 - Add new Employee"
          puts "2 - Search for Employee"
          puts "3 - Show all employees"
          puts "4 - Disable an employee".colorize(:red)
          puts "5 - Go back to main menu"

          puts "\n\n\nEnter with your choice\n".colorize(:blue)

          response = gets.chomp
          case response
          when "1"
            add_employee
          when "2"
            employees_menu
          when "3"
            professors_menu
          end
        end

        private

        def add_employee
          AddEmployeeMenu.call
        end
      end
    end
  end
end
