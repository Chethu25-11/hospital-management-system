<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MediLife Hospitals | World-Class Healthcare</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        :root {
            --primary: #0a5c8c;
            --primary-dark: #084e74;
            --secondary: #4fb0c6;
            --accent: #ff8c42;
            --light: #f4f9ff;
            --dark: #2c3e50;
            --gray: #6c757d;
        }

        body {
            line-height: 1.6;
            color: var(--dark);
        }

        /* Header Styles */
        .top-bar {
            background: var(--primary-dark);
            color: white;
            padding: 8px 0;
            font-size: 14px;
        }

        .top-bar .container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .contact-info span {
            margin-right: 20px;
        }

        .contact-info i, .social-links i {
            margin-right: 6px;
        }

        .social-links a {
            color: white;
            margin-left: 15px;
            transition: opacity 0.3s;
        }

        .social-links a:hover {
            opacity: 0.8;
        }

        .main-nav {
            background: white;
            padding: 15px 0;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .nav-flex {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        .logo h1 {
            color: var(--primary);
            font-size: 28px;
        }

        .logo p {
            font-size: 12px;
            color: var(--gray);
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark);
            margin-left: 25px;
            font-weight: 500;
            transition: color 0.3s;
        }

        .nav-links a:hover, .nav-links a.active {
            color: var(--primary);
        }

        .appointment-btn {
            background: var(--accent);
            color: white !important;
            padding: 8px 20px;
            border-radius: 5px;
        }

        .appointment-btn:hover {
            background: #e07a2e;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            height: 500px;
            display: flex;
            align-items: center;
            text-align: center;
            color: white;
        }

        .hero-content {
            max-width: 800px;
            margin: 0 auto;
        }

        .hero h2 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            padding: 12px 30px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
            margin-right: 15px;
        }

        .btn-primary:hover {
            background: var(--primary-dark);
        }

        .btn-outline {
            border: 2px solid white;
            color: white;
        }

        .btn-outline:hover {
            background: white;
            color: var(--primary);
        }

        /* Sections */
        section {
            padding: 80px 0;
        }

        .section-title {
            text-align: center;
            font-size: 36px;
            margin-bottom: 50px;
            color: var(--primary);
        }

        /* Services Grid */
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .service-card {
            text-align: center;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.05);
            transition: transform 0.3s;
        }

        .service-card:hover {
            transform: translateY(-5px);
        }

        .service-card i {
            font-size: 50px;
            color: var(--secondary);
            margin-bottom: 20px;
        }

        .service-card h3 {
            margin-bottom: 15px;
        }

        /* Doctors Section */
        .doctors-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
        }

        .doctor-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0,0,0,0.05);
            text-align: center;
        }

        .doctor-card img {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }

        .doctor-card h3 {
            margin-top: 20px;
        }

        .doctor-card p {
            color: var(--gray);
            margin-bottom: 15px;
        }

        .doctor-card .specialty {
            color: var(--secondary);
            font-weight: 500;
        }

        /* Facilities */
        .facilities {
            background: var(--light);
        }

        .facilities-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .facility-item {
            text-align: center;
            padding: 20px;
        }

        .facility-item i {
            font-size: 40px;
            color: var(--accent);
            margin-bottom: 15px;
        }

        /* Testimonials */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 30px;
        }

        .testimonial-card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.05);
        }

        .testimonial-card i {
            color: var(--accent);
            font-size: 30px;
            margin-bottom: 15px;
        }

        .patient-name {
            font-weight: 600;
            margin-top: 15px;
        }

        /* Appointment Form */
        .appointment-form {
            background: var(--light);
        }

        .form-container {
            max-width: 600px;
            margin: 0 auto;
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group input, .form-group select, .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group textarea {
            height: 100px;
        }

        .submit-btn {
            background: var(--primary);
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        .submit-btn:hover {
            background: var(--primary-dark);
        }

        /* Footer */
        footer {
            background: var(--dark);
            color: white;
            padding: 50px 0 20px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }

        .footer-col h3 {
            margin-bottom: 20px;
        }

        .footer-col p, .footer-col a {
            color: #ccc;
            text-decoration: none;
            line-height: 1.8;
        }

        .footer-col a:hover {
            color: white;
        }

        .copyright {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid #555;
            font-size: 14px;
        }

        @media (max-width: 768px) {
            .hero h2 {
                font-size: 32px;
            }
            .nav-links {
                margin-top: 15px;
            }
            .nav-links a {
                margin: 0 10px;
            }
            .section-title {
                font-size: 28px;
            }
            .form-container {
                padding: 20px;
            }
        }
        /* Login Dropdown */
        .login-dropdown {
            position: relative;
            display: inline-block;
            margin-left: 20px;
        }

        .login-btn {
            background: var(--primary);
            color: white;
            padding: 8px 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 500;
        }

        .login-btn:hover {
            background: var(--primary-dark);
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: white;
            min-width: 180px;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.1);
            border-radius: 5px;
            z-index: 1000;
        }

        .dropdown-content a {
            color: var(--dark);
            padding: 10px 15px;
            display: block;
            text-decoration: none;
        }

        .dropdown-content a:hover {
            background: var(--light);
        }

        .login-dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>
    <div class="top-bar">
        <div class="container">
            <div class="contact-info">
                <span><i class="fas fa-phone"></i> 24/7 Helpline: 1800-XXX-XXXX</span>
                <span><i class="fas fa-envelope"></i> info@medilife.com</span>
            </div>
            <div class="social-links">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
            </div>
        </div>
    </div>

    <nav class="main-nav">
        <div class="container nav-flex">
            <div class="logo">
                <h1>MediLife <span style="color: var(--secondary);">Hospitals</span></h1>
                <p>World-Class Healthcare Since 1995</p>
            </div>
            <div class="nav-links">
                <a href="#" class="active">Home</a>
                <a href="#">About Us</a>
                <a href="#">Specialties</a>
                <a href="#">Doctors</a>
                <a href="#">Facilities</a>
                <a href="#">Contact</a>
                <a href="appointment/loginPage" class="appointment-btn">Book Appointment</a>
                <div class="login-dropdown">
                        <button class="login-btn">Login</button>
                        <div class="dropdown-content">
                            <a href="patient/login">Patient Login</a>
                            <a href="doctor/login">Doctor Login</a>
                            <a href="receptionist/login">Receptionist Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <h2>Your Health, Our Priority</h2>
                <p>Experience world-class medical care with cutting-edge technology and compassionate experts dedicated to your well-being.</p>
                <a href="#" class="btn btn-primary">Find a Doctor</a>
                <a href="#" class="btn btn-outline">Emergency Services</a>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <h2 class="section-title">Medical Specialties</h2>
            <div class="services-grid">
                <div class="service-card">
                    <i class="fas fa-heartbeat"></i>
                    <h3>Cardiology</h3>
                    <p>Comprehensive heart care including diagnostics, interventions, and rehabilitation.</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-brain"></i>
                    <h3>Neurology</h3>
                    <p>Advanced treatment for brain, spine, and nervous system disorders.</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-bone"></i>
                    <h3>Orthopedics</h3>
                    <p>Specialized care for joints, sports injuries, and bone health.</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-lungs"></i>
                    <h3>Pulmonology</h3>
                    <p>Expert respiratory care for asthma, COPD, and sleep disorders.</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-female"></i>
                    <h3>Obstetrics & Gynecology</h3>
                    <p>Comprehensive women's health services from adolescence to maternity.</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-child"></i>
                    <h3>Pediatrics</h3>
                    <p>Specialized care for children's health and development.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="facilities">
        <div class="container">
            <h2 class="section-title">World-Class Facilities</h2>
            <div class="facilities-grid">
                <div class="facility-item">
                    <i class="fas fa-microscope"></i>
                    <h3>Advanced Diagnostics</h3>
                    <p>State-of-the-art imaging and lab services</p>
                </div>
                <div class="facility-item">
                    <i class="fas fa-procedures"></i>
                    <h3>Modern ICU</h3>
                    <p>24/7 intensive care with advanced monitoring</p>
                </div>
                <div class="facility-item">
                    <i class="fas fa-robot"></i>
                    <h3>Robotic Surgery</h3>
                    <p>Minimally invasive precision surgeries</p>
                </div>
                <div class="facility-item">
                    <i class="fas fa-ambulance"></i>
                    <h3>Emergency Services</h3>
                    <p>Rapid response trauma care</p>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <h2 class="section-title">Meet Our Experts</h2>
            <div class="doctors-grid">
                <div class="doctor-card">
                    <img src="https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Doctor">
                    <h3>Dr. Rajesh Sharma</h3>
                    <p class="specialty">Senior Cardiologist</p>
                    <p>25+ years experience</p>
                </div>
                <div class="doctor-card">
                    <img src="https://images.unsplash.com/photo-1594824476967-48c8b964273f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Doctor">
                    <h3>Dr. Priya Mehta</h3>
                    <p class="specialty">Neurologist</p>
                    <p>18+ years experience</p>
                </div>
                <div class="doctor-card">
                    <img src="https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Doctor">
                    <h3>Dr. Anil Kapoor</h3>
                    <p class="specialty">Orthopedic Surgeon</p>
                    <p>22+ years experience</p>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <h2 class="section-title">Patient Stories</h2>
            <div class="testimonials-grid">
                <div class="testimonial-card">
                    <i class="fas fa-quote-left"></i>
                    <p>"The care I received at MediLife was exceptional. The doctors and staff were compassionate and professional throughout my treatment."</p>
                    <p class="patient-name">- Ramesh Kumar</p>
                </div>
                <div class="testimonial-card">
                    <i class="fas fa-quote-left"></i>
                    <p>"World-class infrastructure and highly skilled doctors. I'm grateful for the successful surgery and post-operative care."</p>
                    <p class="patient-name">- Sunita Reddy</p>
                </div>
                <div class="testimonial-card">
                    <i class="fas fa-quote-left"></i>
                    <p>"The pediatric team is amazing! They made my child feel comfortable and provided excellent treatment."</p>
                    <p class="patient-name">- Vikram Singh</p>
                </div>
            </div>
        </div>
    </section>

    <section class="appointment-form">
        <div class="container">
            <h2 class="section-title">Book an Appointment</h2>
            <div class="form-container">
                <form>
                    <div class="form-group">
                        <input type="text" placeholder="Full Name" required>
                    </div>
                    <div class="form-group">
                        <input type="email" placeholder="Email Address" required>
                    </div>
                    <div class="form-group">
                        <input type="tel" placeholder="Phone Number" required>
                    </div>
                    <div class="form-group">
                        <select>
                            <option>Select Department</option>
                            <option>Cardiology</option>
                            <option>Neurology</option>
                            <option>Orthopedics</option>
                            <option>Pediatrics</option>
                            <option>Gynecology</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="date" placeholder="Preferred Date">
                    </div>
                    <div class="form-group">
                        <textarea placeholder="Brief Description of Symptoms"></textarea>
                    </div>
                    <button type="submit" class="submit-btn">Schedule Appointment</button>
                </form>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col">
                    <h3>MediLife Hospitals</h3>
                    <p>Committed to providing exceptional healthcare with compassion and innovation since 1995.</p>
                </div>
                <div class="footer-col">
                    <h3>Quick Links</h3>
                    <p><a href="#">About Us</a></p>
                    <p><a href="#">Our Doctors</a></p>
                    <p><a href="#">Departments</a></p>
                    <p><a href="#">Careers</a></p>
                </div>
                <div class="footer-col">
                    <h3>Contact Info</h3>
                    <p><i class="fas fa-map-marker-alt"></i> 123 Healthcare Avenue, City - 560001</p>
                    <p><i class="fas fa-phone"></i> +91 80 1234 5678</p>
                    <p><i class="fas fa-envelope"></i> info@medilife.com</p>
                </div>
                <div class="footer-col">
                    <h3>Emergency</h3>
                    <p><strong>24/7 Helpline:</strong> 1800-XXX-XXXX</p>
                    <p><strong>Ambulance:</strong> 108</p>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2024 MediLife Hospitals. All Rights Reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>