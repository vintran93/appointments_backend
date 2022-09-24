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
    image: 'https://png.pngitem.com/pimgs/s/111-1115353_doctor-images-png-transparent-female-doctor-png-png.png', 
    address: "1200 Oak Hill Road Suite 1, Austin TX 78548"
},
{
    name: 'Dr. Salinas', 
    education: 'Bachelor of Science (BS), Doctor of Medicine (MD)', 
    specialty: 'Dermatology', 
    experience: '3 Years', 
    image: 'https://png.pngitem.com/pimgs/s/111-1115495_sports-doctor-hd-png-download.png', 
    address: "1200 Oak Hill Road Suite 3, Austin TX 78548"
},
{
    name: 'Dr. Herman', 
    education: 'Doctor of Medicine (MD), Fellow American College of Cardiology (FACC)', 
    specialty: 'Cardiology', 
    experience: '11 Years', 
    image: 'https://png.pngitem.com/pimgs/s/111-1115354_doctor-png-file-download-free-transparent-background-doctor.png', 
    address: "1200 Oak Hill Road Suite 8, Austin TX 78748"
},
{
    name: 'Dr. Howard', 
    education: 'Bachelor of Science (BS), Doctor of Physical Therapy (DPT)', 
    specialty: 'Physical Therapy', 
    experience: '12 Years', 
    image: 'https://png.pngitem.com/pimgs/s/111-1115368_doctors-png-image-doctor-transparent-png-png-download.png', 
    address: "8000 Town Square Plaza Suite 3, Round Rock TX 78755"
},
{
    name: 'Dr. Rodriguez', 
    education: 'Bachelor of Science (BS), Doctor of Occupational Therapy (DOT)', 
    specialty: 'Occupational Therapy', 
    experience: '7 Years', 
    image: 'https://png.pngitem.com/pimgs/s/111-1115357_female-doctor-png-picture-female-doctor-png-transparent.png', 
    address: "8000 Town Square Plaza Suite 5, Round Rock TX 78755"
},
{
    name: 'Dr. Peterson', 
    education: 'Master of Science (MS), Licensed Dietition (LDN)', 
    specialty: 'Dietition', 
    experience: '5 Years', 
    image: 'https://png.pngitem.com/pimgs/s/111-1115738_personal-care-services-to-our-valued-patients-in.png', 
    address: "8000 Town Square Plaza Suite 11, Round Rock TX 78755"
},
{
    name: 'Dr. Rios', 
    education: 'Bachelor of Science (BS), Doctor of Medicine (MD)', 
    specialty: 'Family Physician', 
    experience: '10 Years', 
    image: 'https://png.pngitem.com/pimgs/s/490-4909562_image-of-rite-aid-pharmacist-doctor-png-transparent.png', 
    address: "2800 Town Plaza Blvd Suite 12 Pflugerville, TX 78543"
},
{
    name: 'Dr. Anand', 
    education: 'Bachelor of Science (BS), Doctor of Osteopathic Medicine (DO)', 
    specialty: 'Neurology', 
    experience: '12 Years', 
    image: 'https://png.pngitem.com/pimgs/s/527-5278112_dr-sumit-agrawal-indian-male-doctor-png-transparent.png', 
    address: "2800 Town Plaza Blvd Suite 4 Pflugerville, TX 78543"
},
{
    name: 'Dr. Jones', 
    education: 'Bachelor of Arts (BA), Doctor of Osteopathic Medicine (DO)', 
    specialty: 'Radiology', 
    experience: '9 Years', 
    image: 'https://png.pngitem.com/pimgs/s/455-4554771_doctor-png-female-doctor-transparent-background-png-download.png', 
    address: "2800 Town Plaza Blvd Suite 2 Pflugerville, TX 78543"
},
{
    name: 'Dr. Hernandez',
    education: 'Bachelor of Science (BS), Doctor of Osteopathic Medicine (DO)',
    specialty: 'Emergency Medicine',
    experience: '5 Years',
    image: 'https://png.pngitem.com/pimgs/s/490-4900561_physician-hd-png-download.png',
    address: '2800 Town Plaza Blvd Suite 10 Pflugerville, TX 78543'
}])