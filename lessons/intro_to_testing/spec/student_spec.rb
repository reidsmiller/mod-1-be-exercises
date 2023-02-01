# Add the 2 requires you will need here
require 'rspec'
require './lib/student'

# Domain Specefic Language

RSpec.describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student1 = Student.new('Charlie')

      expect(student1).to be_instance_of(Student)
    end
    # test it has a name
    it 'has a name' do
      student1 = Student.new('Charlie')

      expect(student1.name).to eq('Charlie')
    end
    # test it has cookies
    it 'has cookies' do

    end
    # test it can add cookies
    it 'can add cookies' do
      
    end
  end
end
