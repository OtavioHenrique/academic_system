class Employee < People
  attr_reader :name, :last_name, :document, :sector,
               :role, :salary

  def initialize(name:, last_name:, document:,
                  sector:, role:, salary:)

    super(name, last_name, document)
    @sector = sector
    @role = role
    @salary = salary
  end
end
