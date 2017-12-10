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

          add_employee(name, last_name, document, sector, role, salary)
        end

        private

        def add_employee(name, last_name, document, sector, role, salary)
          Services::Employees::EmployeesRepository.create(name, last_name,
            document, sector, role, salary)
        end
      end
    end
  end
end
