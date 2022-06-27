# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.create([{
    name: 'Dr. Smith', 
    education: 'Bachelor of Sciece (BS), Doctor of Medicine (MD)', 
    specialty: 'Primary Care Physician', 
    experience: '6 Years', 
    image: 'https://ddcorlando.com/wp-content/uploads/2020/01/beautiful-young-female-doctor-looking-camera-office_1301-7781.jpg', 
    address: "1200 Oak Hill Road Suite 1, Austin TX 78548"
},
{
    name: 'Dr. Salinas', 
    education: 'Bachelor of Science (BS), Doctor of Medicine (MD)', 
    specialty: 'Dermatology', 
    experience: '3 Years', 
    image: 'https://s3.amazonaws.com/freestock-prod/450/freestock_65842171.jpg', 
    address: "1200 Oak Hill Road Suite 3, Austin TX 78548"
},
{
    name: 'Dr. Herman', 
    education: 'Doctor of Medicine (MD), Fellow American College of Cardiology (FACC)', 
    specialty: 'Cardiology', 
    experience: '11 Years', 
    image: 'https://www.kindpng.com/picc/m/111-1115348_doctor-png-clipart-doctor-isolated-transparent-png.png', 
    address: "1200 Oak Hill Road Suite 8, Austin TX 78748"
},
{
    name: 'Dr. Howard', 
    education: 'Bachelor of Science (BS), Doctor of Physical Therapy (DPT)', 
    specialty: 'Physical Therapy', 
    experience: '12 Years', 
    image: 'https://thumbs.dreamstime.com/b/african-american-black-doctor-man-over-blue-background-89746088.jpg', 
    address: "8000 Town Square Plaza Suite 3, Round Rock TX 78755"
},
{
    name: 'Dr. Tran', 
    education: 'Bachelor of Science (BS), Doctor of Occupational Therapy (DOT)', 
    specialty: 'Occupational Therapy', 
    experience: '7 Years', 
    image: 'https://asianhealthservices.org/wp-content/uploads/2020/07/20200226_0049-731x1024.jpg', 
    address: "8000 Town Square Plaza Suite 5, Round Rock TX 78755"
},
{
    name: 'Dr. Peterson', 
    education: 'Master of Science (MS), Licensed Dietition (LDN)', 
    specialty: 'Dietition', 
    experience: '5 Years', 
    image: 'https://media.gettyimages.com/photos/female-doctor-smiling-over-white-background-picture-id1053401358?s=612x612', 
    address: "8000 Town Square Plaza Suite 11, Round Rock TX 78755"
},
{
    name: 'Dr. Rodriguez', 
    education: 'Bachelor of Science (BS), Doctor of Medicine (MD)', 
    specialty: 'Family Physician', 
    experience: '10 Years', 
    image: 'https://img.freepik.com/free-photo/pretty-latina-doctor-white-background_188913-1533.jpg?w=2000', 
    address: "2800 Town Plaza Blvd Suite 12 Pflugerville, TX 78543"
},
{
    name: 'Dr. Hamilton', 
    education: 'Bachelor of Science (BS), Doctor of Osteopathic Medicine (DO)', 
    specialty: 'Neurology', 
    experience: '12 Years', 
    image: 'https://media.istockphoto.com/photos/happy-healthcare-practitioner-picture-id138205019?k=20&m=138205019&s=612x612&w=0&h=KpsSMVsplkOqTnAJmOye4y6DcciVYIBe5dYDgYXLVW4=', 
    address: "2800 Town Plaza Blvd Suite 4 Pflugerville, TX 78543"
},
{
    name: 'Dr. Kim', 
    education: 'Bachelor of Arts (BA), Doctor of Osteopathic Medicine (DO)', 
    specialty: 'Radiology', 
    experience: '9 Years', 
    image: 'https://www.vippskorea.com/img/about-vip/vip-doctor-01.jpg', 
    address: "2800 Town Plaza Blvd Suite 2 Pflugerville, TX 78543"
},
{
    name: 'Dr. Hernandez',
    education: 'Bachelor of Science (BS), Doctor of Osteopathic Medicine (DO)',
    specialty: 'Emergency Medicine',
    experience: '5 Years',
    image: 'https://t4.ftcdn.net/jpg/02/70/93/95/360_F_270939503_maJebkk8RKQzfQVB75WMwWGIHtIgxmvZ.jpg',
    address: '2800 Town Plaza Blvd Suite 10 Pflugerville, TX 78543'
}])