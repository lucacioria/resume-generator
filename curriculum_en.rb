# encoding: UTF-8
require './curriculum_lib.rb'

c = Curriculum.new

c.name "Luca", "Cioria"

c.telephone_and_mail "+39 346 8699986", "luca.cioria@gmail.com"

c.body do
c.section "ABOUT ME" do 
	c.inline "Nationality"			, "Italian"
	c.inline "Date of birth"		, "October 28th, 1989"
	c.inline "Telephone"			, "+39 346 8699986"
	c.inline "E-Mail"				, "luca.cioria@gmail.com"
end
c.section "EDUCATION" do 
	c.par "Bachelor (Cum Laude) in Computer Engineering" do
		c.txt "Politecnico di Milano, graduated in 2011"
	end
	c.par "Graduate Education" do
		c.txt "MSc in Engineering of Computing Systems, <i>Politecnico di Milano</i>"
		c.txt "Expected graduation May 2014"
		c.blank_line
		c.txt "MSc in Computer Science, University of Illinois at Chicago"
		c.txt "Expected graduation May 2014"
		c.txt "GPA: 4.0"
		c.blank_line
		c.txt "Alta Scuola Politecnica, Excellence School of Politecnico di Milano"
		c.blank_line
		c.txt "Semester abroad at Drexel University, Philadelphia (PA)"
	end
end
c.section "AWARDS & OTHER EXPERIENCES" do 
	c.inline "European Best Engineering Competition",
			 "in team, we won the Italian round and placed 2nd in the finals in Istanbul (Turkey)"
	c.inline "Robotics and Transport",
			 "one week course at Universidad Politecnica de Madrid (Spain)"
	c.inline "E-DigitalLAB • Essentials on Fabrication laboratory",
			 "one week course at Instituto Superior Tecnico Lisboa (Portugal)"
end
c.section "WORK" do
	c.inline "[2013 Jul-Dec] Sales Engineer Intern, Google Paris",
			 " 6 months internship in Google France as a Sales Engineer with focus on solution architect and prototype development. Main project designing and implementing an analytics system for the Google+ Enterprise platform."
	c.inline "[2013 Jan-Jun] Research Assistant",
			 " at University of Illinois, Chicago. I’ve been working in the Ethos project, under professor Jon Solworth. The project consists in the development of new concepts for secure OS development. I was responsible for the UI framework and markup language (currently implemented in Java on the client side)"
	c.inline "[2011-2012] Website Development",
			"development of the admin interfaces and database management of the University Websites, working in PHP and MySql, employed by Politecnico di Milano. Also complete development of www.studiogeimo.it (both php server and html/css website) and other similar websites."
	c.inline "[2010] Software Development",
			"autonomous development of a Server-Client software using modern technologies (Ruby on Rails and Flex integration over XML) to manage and control the documentation flow in an Engineering Business"
end
c.section "SKILLS & PROJECTS" do
	c.par "Programming" do
		c.blank_line
		c.txt "html&css, javascript".bold_italic + " developed many small websites and web applications as personal projects and paid jobs" * 5
		c.blank_line

		c.txt "php, MySql".bold_italic + " experience in php programming for different websites (see above) and MySQL integration and maintenance works"
		c.blank_line

		c.txt "Ruby on Rails".bold_italic + " passionate about ruby, followed many online courses and developed server apps mostly for fun/personal projects. I’ve used ruby in many hackathons for projects such as a video aggregator, a business app logic and a poker engine (3rd place at Enova Hackathon 2012). I’ve developed a complete DMS (document management system) with RoR as server logic (see above)"
		c.blank_line

		c.txt "Java".bold_italic + " deep knowledge of the java language and VM, worked with java for various university projects, such as a complete client-server game application, visualization tools for a course on Visual Analytics (one such tool can be found at http://visualization.lucacioria.com). I’m now working in java to develop the UI framework for the Ethos OS (see above)"
		c.blank_line

		c.inline "OS and other programming languages", "experience with UNIX systems, linux and OSX, bash, ruby scripting, system maintenance, c and linux kernel hacking, Java for Android SDK, Processing for Java"
		
		c.inline "Graphics and User Experience", "passion for UI design and UX development"
		c.blank_line

		c.txt "Worked on various UI designs for Data Visualization, also published a paper on “Model-based dynamic and adaptive visualization for multi-domain search results” at 2011 ICWE conference in Cyprus, about innovative algorithms for automated multi-domain data visualization"
		c.blank_line

		c.txt "Worked on innovative UI controls for efficient mobile interaction (with the development of an android app to manage group expenses) under professor Dario Salvucci at Drexel University"
		c.blank_line

		c.txt "Advanced Adobe Photoshop and Photoshop Lightroom, experience with Adobe InDesign, Illustrator, DreamWeaver; LaTex Typesetting;"

	end
end
c.section "LANGUAGES" do
	c.inline "Italian", "Mother Tongue"
	c.inline "English", "Advanced [C2], TOEFL Certificate (118/120), American English courses at University of California, Berkeley"
	c.inline "French", "Advanced, DELF Certificate"
	c.inline "Spanish", "Basic"
end
c.section "SOFT SKILLS & OTHER ACTIVITIES" do
	c.inline "Soft Skills", "I’m a very active and creative person, always involved in many different projects and activities. I’ve always tried to experience as many things, places and cultures as possible and l’m eager to learn new things every day"

	c.inline "Sport", "I’ve practiced tennis for 5 years, now I mainly devote myself to alpinism, MTB, hiking and rock climbing. I love adventures and I have organized several trips involving survival skills and orienteering"

	c.inline "Scouting", "I’ve been an FSE Scout (Fédération du Scoutisme Européen) for 15 years and I’m now an educator of the young children. I’ve developed the website scoutvimercate.org for my scout community (complete with admin interfaces, all custom built, mainly PHP)"

	c.inline "Art and Design", "passionate about photography, I won several photographic contests in High School. I play the piano and flute, and love music from classical to modern electronic. I’m very interested in modern design, and have followed various courses on interactive design, physical computing and fabrication techniques. I’ve developed various interactive design projects with the school of Art and Design (University of Illinois, Chicago)"
end
end

c.render "curriculum.pdf"