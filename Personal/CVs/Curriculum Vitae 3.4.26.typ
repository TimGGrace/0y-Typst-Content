#import "@preview/modern-cv:0.9.0": *
#import "@preview/fontawesome:0.6.0" : *

#show: resume.with(
  author: (
    firstname: "Tim",
    lastname: "Grace",
    email: "TimGGrace@gmail.com",
    phone: "(+44) 7305 941 752",
    linkedin: "timggrace",
    address: "12 Wren Road, Eastleigh, SO50 9QP",
    positions: ("Teacher", "Tutor", "Programmer")
  ),
  profile-picture: image("Profile.jpg", width:78%, alt:"A picture of Tim Grace smiling."),
  date: datetime.today().display(),
  paper-size: "a4"
)

= Education
#resume-entry(
  title: "Post Graduate Certificate of Education",
  location: "University of Sussex",
  date: "2017 - 2018",
  description: "Secondary Mathematics"
)
#resume-entry(
  title: "Bachelor's Degree",
  location: "University of Southampton",
  date: "2010 - 2014",
  description: "BEng (Hons) Aeronautical and Astronautical Engineering"
)
#resume-item[
  Specialising in Control Theory and Computational Fluid Dynamics
]

#resume-entry(
  title: "A Levels",
  location: "Welbeck DSFC",
  date: "2008 - 2010",
  description: "Mathematics: A*, Further Mathematics: A*, Electronics: A*, Physics: A"
)
\
= Experience
#resume-entry(
  title: "Teacher of Mathematics and Computer Science",
  location: "Barton Peveril Sixth Form College",
  date: "2019 - Present"
)
#resume-item[
- Delivery of lessons for: A Level Computer Science; GCSE and A Level Mathematics; A Level Further Mathematics; CTech Electronic and Electrical Engineering.
- Mentor to Computer Science PGCE student, monitoring and supporting pedagogical growth.
- Creating a new scheme of work, lesson plans and resources and homeworks for the Electrical Engineering Unit, designed to be used by specialists and non-specialists across the department. Supporting colleagues with this delivery.
- Running competitive Engineering and Robotics extra-curricular groups. Supported groups for: Industrial Cadets; CanSat; Big Bang; Samsung Solve; Student Robotics; FirstUK Technical Challenge;
]
\
#resume-entry(
  title: "Examiner",
  location: "AQA",
  date: "2024 - Present"
)
#resume-item[
- Marking of A Level Computer Science scripts to a tight deadline.
- Moderation, discussion and improvements of mark schemes before marking period.
]
\
#resume-entry(
  title: "Key Skills Panel - Programming",
  location: "Dr Frost Learning",
  date: "2023 - 2025"
)
#resume-item[
-  Creation of procedurally generated questions based on exam specifications.
- Review of existing Key Skills and improvements to the automated post-attempt responses.
- Discussion and classification of new Key Skills using exam specifications and past paper questions.

]
\
#resume-entry(
  title: "Euclid Tutor",
  location: "Parallel Scheme by Simon Singh",
  date: "2023 - 2024"
)
#resume-item[
- Delivery of weekly online tutoring sessions for highly able KS3 students aiming to achieve the highest awards in events such as Junior Maths Challenge and Junior Mathematical Olympiad.
- Monitoring and assessing student progress, completing reports to highlight strengths and key areas to develop in mathematical thinking.
]
\

\
= Skills
#resume-skill-grid(
categories-with-values: (
  "Programming Languages": (
    strong("C#"),
    strong("Python"),
    strong("PHP"),
    "JavaScript",
    "VisualBasic",
    "HTML/CSS"
  ),
  "Programs": (
    strong("Git"),
    strong("Excel"),
    strong("PowerPoint"),
    "Word",
    "Typst"
  )
  ),
)