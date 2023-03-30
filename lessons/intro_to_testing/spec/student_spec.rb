require 'rspec'
require './lib/student'


describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new('Penelope')
      expect(student).to be_a Student
    end

    it 'has a name' do 
      student = Student.new('Penelope')
      expect(student.name).to eq('Penelope')
    end
    
    it 'can have a different name' do 
      student = Student.new('James')
      expect(student.name).to eq('James')
    end
    # test it has a name
    # test it has cookies
    # test it can add cookies
  end
end
