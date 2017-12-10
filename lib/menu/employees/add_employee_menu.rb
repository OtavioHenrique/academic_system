require 'colorize'

module Menu
  module Employees
    class AddEmployeeMenu
      class << self
        def call
          puts "\n\nEnter with informations bellow\n".colorize(:blue)
          print "Employee name: "
          name = gets.chomp
          print "Employee last name: "
          last_name = gets.chomp
          print "Document: "
          document = gets.chomp
          print "Sector: "
          sector = gets.chomp
          print "Role: "
          role = gets.chomp
          print "Salary: "
          salary = gets.chomp
        end
      end
    end
  end
end
