# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


staff1 = Staff.new(:name => 'nobody', :email => 'nobody@email.email', :contact => 'nobody@contact.email')
staff2 = Staff.new(:name => 'Dummy', :email => 'dummy@dummy.email', :contact => 'dummy@contact.email')

project1 = Project.new(:name => 'Project 0', :description => 'First project created during development phase')
project2 = Project.new(:name => 'Project Dummy', :description => 'Second project created during development phase')


project1.members << staff1
project1.members << staff2
project1.save

project2.members << staff2
project2.save

change1 = Change.new(:name => 'Change 0', :description => 'First change created during development phase', :chargeCode => 'P0-789')
change2 = Change.new(:name => 'Dummy Change', :description => 'Second change created during development phase', :chargeCode => 'P2-567')
change3 = Change.new(:name => 'Example change MIX-983', :description => 'It is a example change', :chargeCode => 'C3-56')

change1.owner = staff1
change2.owner = staff2
change3.owner = staff1

project1.changeRequests << change1
project1.changeRequests << change2

project2.changeRequests << change3

change1.steps << Step.new(stepNo: 1,  action: 'cp file a0 to server x77', status: 'DONE', assignedTo: Staff.find(1))
change2.steps << Step.new(stepNo: 1, action: 'mv tarball a1 to location y66', status: 'TODO', assignedTo: Staff.find(1))
change3.steps << Step.new(stepNo: 1, action: 'scp zipfile a2 to box z55', status: 'DONE', assignedTo: Staff.find(2))
change2.steps << Step.new(stepNo: 2, action: 'mv tarball a3 to server a44', status: 'DONE', assignedTo: Staff.find(2))
change1.steps << Step.new(stepNo: 2, action: 'scp file a5 to location b33', status: 'TODO', assignedTo: Staff.find(1))
change2.steps << Step.new(stepNo: 3, action: 'cp tarball a6 to place c22', status: 'TODO', assignedTo: Staff.find(2))
change3.steps << Step.new(stepNo: 2, action: 'mv zipfile a7 to server d11', status: 'TODO', assignedTo: Staff.find(2))

change1.steps << Step.new(stepNo: 4, action: 'scp file a0 to server x77', status: 'DONE', assignedTo: Staff.find(1))
change2.steps << Step.new(stepNo: 3, action: 'mv tarball a1 to box y66', status: 'DONE', assignedTo: Staff.find(1))
change3.steps << Step.new(stepNo: 3, action: 'cp file a2 to location z55', status: 'TODO', assignedTo: Staff.find(2))
change2.steps << Step.new(stepNo: 4, action: 'mv tarball a3 to server a44', status: 'DONE', assignedTo: Staff.find(2))
change1.steps << Step.new(stepNo: 5, action: 'cp file a5 to box b33', status: 'TODO', assignedTo: Staff.find(1))
change2.steps << Step.new(stepNo: 5, action: 'cp tarball a6 to location c22', status: 'DONE', assignedTo: Staff.find(2))
change3.steps << Step.new(stepNo: 4, action: 'mv file a7 to server d11', status: 'TODO', assignedTo: Staff.find(1))

change1.steps << Step.new(stepNo: 6, action: 'cp file a0 to server x77', status: 'DONE', assignedTo: Staff.find(1))
change2.steps << Step.new(stepNo: 6, action: 'smv tarball a1 to location y66', status: 'TODO', assignedTo: Staff.find(1))
change3.steps << Step.new(stepNo: 5, action: 'cp file a2 to place z55', status: 'TODO', assignedTo: Staff.find(2))
change2.steps << Step.new(stepNo: 7, action: 'mv tarball a3 to server a44', status: 'TODO', assignedTo: Staff.find(2))
change1.steps << Step.new(stepNo: 7, action: 'scp zipfile a5 to box b33', status: 'DONE', assignedTo: Staff.find(1))
change3.steps << Step.new(stepNo: 6, action: 'cp tarball a6 to place c22', status: 'TODO',assignedTo: Staff.find(2))
change1.steps << Step.new(stepNo: 8, action: 'smv zipfile a7 to server d11', status: 'TODO', assignedTo: Staff.find(1))


