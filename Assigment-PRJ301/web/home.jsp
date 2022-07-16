<%-- 
    Document   : home
    Created on : Jul 14, 2022, 7:15:24 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>FPT University</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/images.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top"><img src="assets/img/navbar-logo.svg" alt="..." /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
<!--                        <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>-->
                        <li class="nav-item"><a class="nav-link" href="suject">Student Mark Report</a></li>
                        <li class="nav-item"><a class="nav-link" href="#about"> Gioi Thieu Ve Truong</a></li>
                        <li class="nav-item"><a class="nav-link" href="#team"> Giang Vien  </a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Lien He</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading"></div>
                <div class="masthead-heading text-uppercase"></div>

                <c:if test="${sessionScope.account == null}">
                    <a class="btn btn-primary btn-xl text-uppercase" href="login">Login Student</a>
                    <a class="btn btn-primary btn-xl text-uppercase" href="login">Login Teacher </a>
                </c:if>
                <c:if test="${sessionScope.account != null}">
                    <div class="logout">
                        <p>
                            <a href="suject">Information</a>
                        </p>
                    </div>
                    <div class="logout">
                        <p>
                            <a href="logout">Log Out</a>
                        </p>
                    </div>
                </c:if>
            </div>
        </header>
        <!-- Services-->
<!--        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Services</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">E-Commerce</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">Responsive Design</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">Web Security</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                    </div>
                </div>
            </div>
        </section>-->
        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Nganh Hoc </h2>
                    <!--   <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>-->
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/11.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Cong Nghe Thong Tin</div>
                                <div class="portfolio-caption-subheading text-muted">Technology Engineer</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/22.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Thiet Ke Do Hoa</div>
                                <div class="portfolio-caption-subheading text-muted">Graphic Design</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/33.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Ngon Ngu Anh</div>
                                <div class="portfolio-caption-subheading text-muted">English Language</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/44.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Ngon Ngu Nhat</div>
                                <div class="portfolio-caption-subheading text-muted">Japanese</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/55.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Ngon Ngu Han</div>
                                <div class="portfolio-caption-subheading text-muted">Korean Language</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/66.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Quan Tri Kinh Doanh</div>
                                <div class="portfolio-caption-subheading text-muted">Business Administration</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About-->
        <section class="page-section" id="about">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Gioi Thieu Ve Truong</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>

                <ul class="timeline">
                    <li><div class="row">

                            <div class="timeline-image "><img class="rounded-circle img-fluid" src="assets/img/about/1.jpg" alt="..." /></div>
                            <div class="timeline-panel" >



                                <div class="timeline-heading" >
                                    <h4>Lich Su Thanh Lap</h4>
                                    <h4 class="subheading">Dai Hoc FPT</h4>
                                </div>
                                <div class="timeline-body "><p class="text-muted">FPT University was established on September 8, 2006 under Decision No. 208 2006 QD TTg of the Prime Minister and operates under the Regulation on organization and operation of a private university under Decision No. </p></div>
                            </div>
                        </div>  </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="assets/img/about/2.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>Noi dao Tao</h4>
                                <h4 class="subheading">An Agency is Born</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">FPT University is a place to train and provide high-quality human resources according to international standards. The school is training the fields of Information Technology, Economics, Languages, Applied Arts. The large campus with many airy trees helps FPT University become more lively, natural and fresh. Large buildings for students to study and work more efficiently..</p></div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="assets/img/about/3.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4> Cac giai thuong va thanh tich</h4>
                                <h4 class="subheading">Transition to Full Service</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">QS ranking is a condition to affirm the position and reputation, and at the same time contributes significantly to improving the value of the degrees of students who have been and are studying at the school. In the next 5 years, FPT University believes that it will conquer the Five Stars goal according to the QS Stars standard and be in the Top 100 best universities in Asia.

                                    Within the framework of the ASOCIO Digital Summit 2018 on November 7,8, 2018, the ASOCIO 2018 Award Council decided to award FPT University in the category of Excellent Information Technology Training Unit.

                                    In 2018, alongside many well-known brands, FPT University was honored in the category of Best Brands in Education Tertiary  Excellent University in the University sector and FPT Education Organization was named in the category of Excellence in Education. Education The brand of an excellent educational organization.

                                    ACBSP is the Accreditation Council for Business Schools and Programs. This is one of the most valuable and prestigious international business accreditation organizations in the world. This result is an objective proof that clearly shows the training quality of FPT University. At the same time, it promotes the Business Administration Division to continuously improve to ensure the quality of the training programs of the university is appropriate and Similar to the top business schools in the world, providing students with many opportunities to learn, create and develop their career future.

                                    Eduniversal is ranked as one of the three best business schools in Vietnam for 2 consecutive years by the prestigious business school ranking organization in the world Eduniversal. Ranked 2nd Palmes in Eduniversal's 1,000 Best Business Schools in the World, for influential business schools in the region.

                                    The ACMICPC exam is the oldest and most prestigious international programming competition for students of colleges around the globe, where the strongest countries in IT have teams participating and fierce competition. In 2015, FPT University team won the second prize at ACMICPC Asia Hanoi 2015.
                                </p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="assets/img/about/4.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>Gan ket cong dong</h4>
                                <h4 class="subheading">Phase Two Expansion</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">With the goal of building an educational environment with a culture of responsibility and compassion, over the years, FPT University's CSR activities have always been focused on deploying and replicating throughout the system. Like all member units of FPT Corporation, the 13th of every month has become the traditional day of volunteering for FPT University. Accordingly, officials, lecturers, pupils and students throughout the system responded to the call to fast for a breakfast and donate the breakfast money to the School's Food Fund. Le Truong Tung  Chairman of the Board of Directors of FPT University officially launched the Project of 100 Bookcases of Food, implemented in poor localities across Vietnam.

                                    FPT University also clearly demonstrated its sense of and commitment to its social responsibility when building a scholarship fund named after Professor Academician Nguyen Van Dao. The scholarship aims to provide the best learning conditions for students with difficult family circumstances and outstanding young individuals in the fields of study and art-culture. Every year, FPT University offers about 200 scholarships, with a total value of nearly 40 billion VND.</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>
                                Be Part
                                <br />
                                Of Our
                                <br />
                                Story!
                            </h4>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <!-- Team-->
        <section class="page-section bg-light" id="team">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Giang Vien Giang Day</h2>
                    <!-- <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>-->
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="assets/img/team/hinh-avatar-nam-deo-kinh.jpg" alt="..." />
                            <h4>Thay Lyndon Britanico Badong</h4>
                            <p class="text-muted">Giang vien bo mon Tieng Anh</p>
                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand Twitter Profile"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand Facebook Profile"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="assets/img/team/AVT-Chibi-38.jpg" alt="..." />
                            <h4>Co Kuriko Shinozaki</h4>
                            <p class="text-muted">Giang Vien Ngon Ngu Nganh Tieng nhat </p>
                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen Twitter Profile"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen Facebook Profile"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="assets/img/team/imager_4_17028_700.jpg" alt="..." />
                            <h4>Thay Ngo Tung Son</h4>
                            <p class="text-muted">Giang Vien Nganh Ky Thuat Phan Mem</p>
                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker Twitter Profile"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker Facebook Profile"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p></div>
                </div>
            </div>
        </section>
        <!-- Clients-->
        <div class="py-5">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="assets/img/logos/microsoft.svg" alt="..." aria-label="Microsoft Logo" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="assets/img/logos/google.svg" alt="..." aria-label="Google Logo" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="assets/img/logos/facebook.svg" alt="..." aria-label="Facebook Logo" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="assets/img/logos/ibm.svg" alt="..." aria-label="IBM Logo" /></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact-->
        <section class="page-section" id="contact">

            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Address</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50">Khu Giao duc va Dao tao  Khu Cong nghe cao Hoa Lac  Km29 Dai lo Thang Long, H. Thach That, TP. Ha Noi</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Email</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50">dichvusinhvien@fe.edu.vn</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-mobile-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Phone</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50">(024)7308.13.13</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social d-flex justify-content-center">
                    <a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-start">Copyright &copy; Your Website 2022</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-end">
                        <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                        <a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Portfolio Modals-->
        <!-- Portfolio item 1 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Cong Nghe Thong Tin</h2>

                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/11111-cr-1200x630.jpg" alt="..." /> 
                                    <div class="text-nganhhoc">
                                        <h2 class="item-intro text-muted">Tong Quan Ve Cong Nghe Thong : </h2>
                                        <p>Information technology (IT) has been identified by the Party and Government as the infrastructure of the infrastructure. From now to 2020, Vietnam needs one million IT workers while the capacity of the national education system is not enough in quantity and quality as required by employers.

                                            At FPT University, IT is the most famous and oldest major. The program is designed based on reference to the program recommendations of the Association for Computing Machinery (ACM), leading American schools and software experts in IT organizations and businesses such as the Association for Computing Machinery (ACM). Vietnamese software (VINASA), FPT, EC Council's training program, Jetking Hardware and Networking Academy (India); Art training schools in the world, the National Association of Schools of Art and Design (NASAD).

                                            Students study with experienced lecturers, many of whom are doctors, professors and experts from leading enterprises in the IT field.

                                            The IT program is designed with 4 blocks of knowledge: General knowledge, industry knowledge, specialization and selection. The program is designed to integrate, balance background knowledge with new technologies and techniques, and focus on practical skills and application and creativity. The courses are suggested at a reasonable pace for students to choose in order to promote students' interest in learning right from the first semester.

                                            General knowledge: Includes content on political theory, law, 21st century citizenship skills, foreign languages, physical education and national defense.

                                            Industry knowledge: Designed to integrate a balance between background knowledge with new technologies and techniques, including knowledge from the background of mathematics, basic scientific knowledge of the IT and computer industry groups such as languages ​​and languages. programming languages, algorithms, data, operating systems, computer networks, software development processes, IT project management... to new technologies such as IoT, artificial intelligence. With a major in Graphic Design, the industry knowledge block includes the foundational courses in art, design and the application foundation of IT in graphic design.

                                            Specialized knowledge: IT students have the opportunity to choose one of six majors including Software Engineering, Information Systems, Information Security, Artificial Intelligence, IOT, and Graphic Design.

                                            Free-choice knowledge block: Designed to alternately give students the opportunity to choose their favorite subjects, expand into another field or improve their major. Students can learn from individual modules or a group of courses about a new technical direction, technology such as Blockchain, FinTech, Automative, Data Science, etc. These are courses that increase initiative and personalization for each student. student.</p>
                                        <h2>Time to study information technology</h2>
                                        <P>The program consists of 9 specialized semesters, including 1 semester of study at an enterprise (OJT), not to mention the time of intensive training and the time of preparatory English (depending on the English proficiency of the student). student)

                                            The IT program is divided into 4 stages: the preparatory phase (the intensive training time + the preparatory English study time depending on the student's input English level), the basic stage (5 courses). semester), the practical learning phase at the enterprise (OJT, 1 semester) and the completion stage of graduation (the last 3 semesters)..</P>
                                        <h2>Input required</h2>

                                        <h2>Cau truc chuong trinh</h2>

                                        <img src="assets/img/portfolio/congnghethongtin.jpg" alt="..."  /></div>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Threads
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Illustration
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 2 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/222.1.jpg" alt="..." />
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Explore
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Graphic Design
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 3 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Ngon Ngu Anh</h2>

                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/maxresdefault.jpg" alt="..." />
                                    <div class="text-nganhhoc">
                                        <h2> Tong quan ve nganh Ngon ngu Anh:</h2>
                                        <p> TEnglish has now become a common language in the world as well as in the region. Based on its strengths and training experience, FPT University opened a major in English with the goal of equipping students with basic knowledge of English-American language and culture, in-depth practical skills. language, skills to analyze, synthesize and evaluate issues related to the major. On the one hand, the program follows the foreign language competency standards of the Ministry of Education and Training of Vietnam. On the other hand, the study program is designed to be flexible with extensions, allowing students to choose a major according to their abilities and interests with two "hot" majors today, English for Business and English for Information Technology. . Students are equipped with basic knowledge of Commerce and IT while studying English. This is really a new point compared to existing programs in Vietnam. Thereby, students can practice the necessary skills, know how to apply knowledge of languages, commerce, technology in real work...

                                            During the OJT stage, students have many opportunities to be trained at companies around the world when they have both English language ability and basic knowledge of Commerce or IT. In particular, students have the opportunity to attend at least 1 semester in English speaking countries such as Australia, USA, etc. during their studies.

                                            In August 2015, FPT University signed a strategic cooperation agreement on English testing with the British Council. The strategic cooperation with the British Council is an important foundation in the strategy to ensure the quality of education and English output standards for FPT University students, as well as an indispensable step in the cooperation relationship between FPT University. study FPT, the world's leading educational institutions.</p>

                                        <p>Bachelor of English Language can take on some of the following jobs:

                                            .Secretary, foreign affairs assistant in companies, economic groups, foreign ministries, consulates...
                                            .English translation and interpretation
                                            Coordinators and specialists working at state management agencies from central to local levels, relevant ministries and branches of Vietnam, international economic organizations, and enterprises of all economic sectors. economy of Vietnam, European, American and English enterprises and organizations, countries using English as the administrative language.
                                            .IT project management of world and Vietnamese IT companies
                                            .Teaching English for organizations and training institutions.
                                            .Study higher level majors in English Language, Linguistics, International Studies, Certificate in Teaching English to Foreigners (TESOL). Extensive study of majors in the field of Business.</p>
                                        <h2>Cau truc chuong trinh</h2>
                                        <img  src="assets/img/portfolio/ngonnguanh.png" alt="..." /></div>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Finish
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Identity
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 4 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Ngon Ngu Nhat</h2>

                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/Diem-chuan-nganh-Ngon-ngu-Nhat-2021.jpg" alt="..." /> 
                                    <div class="text-nganhhoc" >
                                        <h2 class="item-intro text-muted">Tong quan ve nganh Ngon ngu Nhat</h2>
                                        <p>Japanese companies are promoting investment in Vietnam, opening up abundant job opportunities with good remuneration and high income for people who are fluent in Japanese. Faced with that need, FPT University opened a major in Japanese language. FPT University's Japanese language training program is a combination of five blocks of knowledge: professional knowledge, social knowledge, soft skills, foreign languages, and industry orientation to help graduates have a enough knowledge, professional skills, foreign language ability and soft skills to do business with foreign partners.

                                            The curriculum is designed to be flexible (under the advice of Professor Satoshi Miyazaki  Graduate School of Japanese Language Application, Waseda University, Japan, and Project Director of Vietnam Japan University) for allows students to choose a major according to their abilities and interests with two current "hot" majors: Business Japanese and Information Technology Japanese... In particular, students have the opportunity to study for 1 semester at a university. Japan in the OJT period.

                                            Bachelor of Japanese language with political qualities, professional ethics, understanding of Japanese culture, basic knowledge of the language and ability to apply Japanese fluently to work in foreign companies. government agencies, organizations and enterprises at home and abroad; carry out scientific research activities, cooperate in training and scientific research with domestic and foreign organizations. Especially, can work effectively through the use of Japanese in the field of Commerce and Information Technology.</p>

                                        <h2>Cau truc chuong trinh đao tao</h2>
                                        <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/ngonngunhat.png" alt="..." /> </div>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Lines
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Branding
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 5 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Ngon Ngu Han</h2>

                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/Korean-Language-1.jpg" alt="..." />
                                    <div class="text-nganhhoc">
                                        <h2 class="item-intro text-muted">Tong quan ve nganh Ngon ngu Han Quoc</h2>

                                        <h2>Trien vong nghe nghiep</h2>
                                        <p>Use Korean to work at domestic and foreign enterprises and organizations in fields related to trade, cooperation and tourism with foreign partners.
                                            Performing the task of translating and interpreting Korean in the fields of business, tourism, training, ...
                                            Students are equipped with English so they can work in multilingual environments.
                                            If learners complete additional pedagogical training courses, they can participate in foreign language teaching in high schools in the future, when Korean is taught at the high school level.</p>
                                        <h2>Kinh nghiem tich luy sau chuong trinh</h2>
                                        <p>Students have cultural understanding, language knowledge and can use Korean to communicate fluently.
                                            Having teamwork skills, presentation skills, critical thinking skills, planning and time management skills, good English skills, confident communicating within the scope of professional expertise.
                                            Basic knowledge of economics, commercial transactions, project management.
                                            You can continue your postgraduate studies in the fields of: Korean Language, International Business, Management, Education... at domestic or foreign schools.</p>

                                        </p></div>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Southwest
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Website Design
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 6 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Quan Tri Kinh Doanh</h2>

                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/quản-trị-kinh-doanh.png" alt="..." />
                                    <div class="text-nganhhoc">
                                        <h2 class="item-intro text-muted">Tong Quan Ve Nganh Quan Tri Kinh Doanh</h2>
                                        <p>The Business Administration program of FPT University is designed and updated according to the programs of famous universities in the world and meets international standards. In 2019, the business administration major of FPT University Hoa Lac campus was fully accredited by ACBSP (Accreditation Council for Business Schools and Programs).

                                            The program not only covers professional knowledge and skills but also focuses on soft skills, designed in parallel with the constantly changing needs of domestic and foreign markets, industries and professions. Students are provided with management knowledge such as Marketing Management, Financial Management, Management Accounting, as well as mastering the basic knowledge of the economic industry, understanding the domestic and international business environment. In particular, students will learn how to apply IT in their work, learn how to think about technology in their professional fields.

                                            Students study with experienced lecturers, many of which are professors and professors from leading enterprises in the field of business administration in general as well as related specialties in particular.

                                            The Business Administration program is designed with 4 blocks of knowledge: General knowledge, industry knowledge, specialization and selection. The courses are suggested at a reasonable pace for students to choose in order to promote students' interest in learning right from the first semester.

                                            General knowledge: including content on political theory, law, 21st century citizenship skills, foreign languages, physical education and national defense.

                                            Industry knowledge: designed to integrate and balance the basic knowledge from economics, finance, administration to the general operations of the business administration industry with the technology and techniques applied to this field.

                                            Specialized knowledge: Business Administration students have the opportunity to choose one of five majors including Digital Marketing (Digital Marketing), International Business, Hotel Management, Tourism and Travel Service Management, and Management multimedia communications.

                                            Soft skills in the training process such as communication skills, teamwork skills, management skills, negotiation skills are the luggage to help students approach the real business environment. In addition, students can learn two foreign languages, English, including two subjects: Academic English, Business English and Chinese.</p>

                                        <h2>Cau truc chuong trinh</h2>
                                        <img src="assets/img/portfolio/quantrikinhdoanh.png" alt="..."   /></div>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Window
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Photography
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
    <style>
        .logout{
            width: 200px;
            background-color: red;
            margin-left: 43%;
           border-radius: 10px;
        }
    </style>
</html>


