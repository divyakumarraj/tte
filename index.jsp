<% 

response.setHeader("Catch-control", "no-cache , no-store"); //HTTP 1.1

//response.setHeader("pragma", "no-cache"); //HTTP 1.0

//response.setHeader("Expires","0"); //proxys



String username=(String)session.getAttribute("user");
if (username!=null)
{
    response.sendRedirect("home.jsp");
}
%>






<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>T T E</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" >

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/stylee-1.css">
    <!-- <link rel="stylesheet" href="css/search.css"> -->
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <!-- nevigation bar -->
    <script src="https://code.jquery.com/jquery-3.6.4.js"> </script>

</head>

<body>
    
<!-- header section starts  -->

<header>

    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>T T E</span></a>

    <nav class="navbar">
        <a href="#home">home</a>
        <a href="#book">book</a>
        <a href="#packages">Drivers</a>
        <a href="#services">services</a>
        <a href="#gallery">Trucks</a>
        <a href="#review">review</a>
        <a href="#contact">contact</a>
    </nav>
    <%-- <div class="btnn"> --%>
        <a href="login1.jsp" class="btnn">Login</a>
    <%-- </div> --%>


</header>

<!-- header section ends -->


<%-- scroll lock start --%>


<%-- scroll lock ends --%>
<!-- home section starts  -->

<section class="home" id="home">

<div class="imagg">

     <!-- <img src="img/home.jpg" height="100%" width="100%"> -->
    
    <div class="vid">
     <video autoplay muted loop id="myVideo">
        <source src="rain.mp4" type="video/mp4">
      </video>
    </div>
       
 <div class="contentt">
        <h3>Truck Trek Expert</h3>
        <p>Let us unload your worries and load you up with a truckload of savings!</p>
        <a href="#gallery" class="btnnn">Discover more</a>
         <a href="#city" class="btnnnn">Popular places</a>

    </div>
    <div class="search">
        <div class="btns">
        <form method="post" action="search.jsp">
            <div class="btn btn_common">
                <i class="fa-regular fa-magnifying-glass-location fa-beat-fade" style="color: #0a25f0;"></i>
            </div>
        <input type="text"  name="search" id="searchh" placeholder="Search places">
        <!-- <button type="submit"  ><i class="fa-regular fa-magnifying-glass-location fa-beat-fade" style="color: #e1f00a;"></i> </button> -->
    
        </form>
        </div>
            <input type="date" class="btnss" placeholder="Choose date">
    </div>


























    
</div>

</section>

<!-- home section ends -->

<!-- book section starts  -->

<section class="book" id="book">

    <h1 class="heading">
        <span>b</span>
        <span>o</span>
        <span>o</span>
        <span>k</span>
        <span class="space"></span>
        <span>n</span>
        <span>o</span>
        <span>w</span>
    </h1>

    <div class="row">

        <div class="image">
            <img src="book-img.svg" alt="">
        </div>

        <form action="">
            <div class="inputBox">
                <h3>Source</h3>
                <input type="text" placeholder="City" required>
            </div>
            <div class="inputBox">
                <h3>destination</h3>
                <input type="number" placeholder="City" required>
            </div>
            <div class="inputBox">
                <h3>date</h3>
                <input type="date" required>
            </div>
            <div class="inputBox">
                <h3>quantity in tons</h3>
                <input type="number" required>
            </div>
            <!-- <input type="submit" class="btn" value="Check Availibility " id="avl"> -->
            <button onclick = "fun()" class="btn">Check Availibility</button> 
            <script>function fun() {  
                alert("No Truck Available");  
                } 
                </script> 
        </form>

    </div>

</section>

<!-- book section ends -->

<!-- packages section starts  -->

<section class="packages" id="packages">


      
   <h1 class="heading">
    <span>d</span>
    <span>r</span>
    <span>i</span>
    <span>v</span>
    <span>e</span>
    <span>r</span>
    <span>s</span>
   </h1>

    <div class="box-container">

        <div class="box">
            <img src="6.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> Ramesh </h3>
                <p>Experience-7+years</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div class="price"> ₹4999 <span>₹6999</span> </div>
                <a href="#book" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="4.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> Sukesh </h3>
                <p>Experience-8+years</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div class="price"> ₹5550<span>₹7400</span> </div>
                <a href="#book" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="2.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> Paaji </h3>
                <p>Experience-10+years</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div class="price">₹6400 <span>₹7999</span> </div>
                <a href="#book" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="5.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> Gopi </h3>
                <p>Experience-12+years</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div class="price"> ₹7600 <span>₹8999</span> </div>
                <a href="#book" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="3.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> Kamlesh </h3>
                <p>Experience-20+years</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div class="price"> ₹9999 <span>₹12999</span> </div>
                <a href="#book" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <img src="1.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> Kalua </h3>
                <p>Experience-25+years</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div class="price"> ₹12999 <span>₹15999</span> </div>
                <a href="#book" class="btn">book now</a>
            </div>
        </div>

    </div>

</section>

<!-- packages section ends -->

<!-- services section starts  -->



<!-- services section ends -->

<!-- gallery section starts  -->

<section class="gallery" id="gallery">

    <h1 class="heading">
        
        <span>t</span>
        <span>r</span>
        <span>u</span>
        <span>c</span>
        <span>k</span>
        <span>s</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <img src="g-1.jpg" alt="">
            <div class="content">
                <h3>TATA SIGNA 4018.S & LPS 4018 Cowl</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="g-2.jpg" alt="">
            <div class="content">
                <h3>TATA PRIMA 2830.K</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="g-3.jpg" alt="">
            <div class="content">
                <h3>Tata 610 SK</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="g-4.jpg" alt="">
            <div class="content">
                <h3>Ashok Leyland 4225 4x2 Tractor</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="g-5.jpg" alt="">
            <div class="content">
                <h3>Tata 1512 LPT</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="g-6.jpg" alt="">
            <div class="content">
                <h3>Mahindra Blazo X 55</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
 

    </div>

</section>
<section class="gallery" id="city">

    <h1 class="heading">
        
        <span>o</span>
        <span>p</span>
        <span>e</span>
        <span>r</span>
        <span>a</span>
        <span>t</span>
        
        <span>i</span>
        <span>n</span>
        <span>g</span>
        <span>c</span>
        <span>i</span>
        <span>t</span>
        
        <span>i</span>
        <span>e</span>
        <span>s</span>
        
    </h1>

    <div class="box-container">

        <div class="box">
            <img src="c.jfif" alt="">
            <div class="content">
                <h3>CHENNAI</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="m.jfif" alt="">
            <div class="content">
                <h3>MUMBAI</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="J.jfif" alt="">
            <div class="content">
                <h3>JAIPUR</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="B.jfif" alt="">
            <div class="content">
                <h3>BENGALURU</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="P.jfif" alt="">
            <div class="content">
                <h3>PUNE</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="A.jfif" alt="">
            <div class="content">
                <h3>AHMEDABAD</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, tenetur.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
 

    </div>

</section>
<section class="services" id="services">

    <h1 class="heading">
        <span>W</span>
        <span>h</span>
        <span>y</span>
        <span>T</span>
        <span>r</span>
        <span>u</span>
        <span>c</span>
        <span>k</span>
        <span>T</span>
        <span>r</span>
        <span>e</span>
        <!-- <span>c</span> -->
        <span>k</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <i class="fas fa-hotel"></i>
            <h3>Transport Anything</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>
        <div class="box">
            <i class="fas fa-utensils"></i>
            <h3>On Time Services</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>
        <div class="box">
            <i class="fas fa-bullhorn"></i>
            <h3>Safety First</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>
        <div class="box">
            <i class="fas fa-globe-asia"></i>
            <h3>Experienced Drivers</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>
        <div class="box">
            <i class="fas fa-plane"></i>
            <h3>Updated Trucks</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>
        <div class="box">
            <i class="fas fa-hiking"></i>
            <h3>Lowest Prices</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>

    </div>

</section>

<!-- gallery section ends -->

<!-- review section starts  -->

<section class="review" id="review">

    <h1 class="heading">
        <span>r</span>
        <span>e</span>
        <span>v</span>
        <span>i</span>
        <span>e</span>
        <span>w</span>
    </h1>

    <div class="swiper-container review-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide">
                <div class="box">
                    <img src="r3.jfif" alt="">
                    <h3>john deo</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci quisquam sunt nesciunt fugiat odit minus illum asperiores dolorum enim sint quod ipsam distinctio molestias consectetur ducimus beatae, reprehenderit exercitationem!</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="box">
                    <img src="pic2.png" alt="">
                    <h3>john deo</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci quisquam sunt nesciunt fugiat odit minus illum asperiores dolorum enim sint quod ipsam distinctio molestias consectetur ducimus beatae, reprehenderit exercitationem!</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="box">
                    <img src="pic3.png" alt="">
                    <h3>john deo</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci quisquam sunt nesciunt fugiat odit minus illum asperiores dolorum enim sint quod ipsam distinctio molestias consectetur ducimus beatae, reprehenderit exercitationem!</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="box">
                    <img src="pic4.png" alt="">
                    <h3>john deo</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci quisquam sunt nesciunt fugiat odit minus illum asperiores dolorum enim sint quod ipsam distinctio molestias consectetur ducimus beatae, reprehenderit exercitationem!</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
            </div>

        </div>

    </div>

</section>

<!-- review section ends -->

<!-- contact section starts  -->

<section class="contact" id="contact">
    
    <h1 class="heading">
        <span>c</span>
        <span>o</span>
        <span>n</span>
        <span>t</span>
        <span>a</span>
        <span>c</span>
        <span>t</span>
    </h1>

    <div class="row">

        <div class="image">
            <img src="contact.jpg" alt="">
        </div>

        <form action="feedback.jsp" method="post">
            <div class="inputBox">
                <input type="text" placeholder="name" name="nme" required>
                <input type="email" placeholder="email" name="eml" required>
            </div>
            <div class="inputBox">
                <input type="number" placeholder="number" name="pno">
                <input type="text" placeholder="subject" name="sub" >
            </div>
            <textarea placeholder="message" name="msg" id="" cols="30" rows="10" required></textarea>
            <input type="submit" class="btn" value="send message">
        </form>

    </div>
    
</section>

<!-- contact section ends -->

<!-- brand section  -->
<!-- <section class="brand-container">

    <div class="swiper-container brand-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="1.jpg" alt=""></div>
            <div class="swiper-slide"><img src="2.jpg" alt=""></div>
            <div class="swiper-slide"><img src="3.jpg" alt=""></div>
            <div class="swiper-slide"><img src="4.jpg" alt=""></div>
            <div class="swiper-slide"><img src="5.jpg" alt=""></div>
            <div class="swiper-slide"><img src="6.jpg" alt=""></div>
        </div>
    </div>

</section> -->

<!-- footer section  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>about us</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda quas magni pariatur est accusantium voluptas enim nemo facilis sit debitis.</p>
        </div>
        <div class="box">
            <h3>Headoffice</h3>
            <a href="#">Delhi</a>
            <a href="#">Kolkata</a>
            <a href="#">Prayagraj</a>
            <a href="#">Sasaram</a>
            <a href="#">Mumbai</a>

        </div>
        <div class="box">
            <h3>quick links</h3>
            <a href="#">home</a>
            <a href="#">book</a>
            <a href="#">packages</a>
            <a href="#">services</a>
            <a href="#">gallery</a>
            <a href="#">review</a>
            <a href="#">contact</a>
        </div>
        <div class="box">
            <h3>follow us</h3>
            <a href="#">facebook</a>
            <a href="#">instagram</a>
            <a href="#">twitter</a>
            <a href="#">linkedin</a>
        </div>

    </div>

    <h1 class="credit"> created by <span> OUR TEAM </span> </h1>

</section>

<script type="text/javascript">
window.addEventListener("scroll",function(){
    var header =document.querySelector("header");
    header.classList.toggle("sticky",window.scrollY > 0);
})
</script>



<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="script.js"></script>

</body>
</html>
