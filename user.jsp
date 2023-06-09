<% 
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
response.setHeader("Pragma", "no-cache"); //HTTP 1.0
response.setHeader("Expires", "0"); //proxies

String username = (String) session.getAttribute("user");
if (username == null) {
    response.sendRedirect("index.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>T T E</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/stylee-1.css">
    <!-- <link rel="stylesheet" href="css/search.css"> -->
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <!-- navigation bar -->
    <script src="https://code.jquery.com/jquery-3.6.4.js"></script>

</head>

<body>

<!-- header section starts  -->

<header>

    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>T T E</span></a>

    <nav class="navbar">
        <a href="#home">Home</a>
        <a href="#book">Booking</a>
        <a href="#gallery">Your Trucks</a>
        <a href="#status">Order Status</a>
        <a href="#contact">Contact</a>
    </nav>
    
    <a href="logout.jsp" class="btnn">Logout</a>

</header>

<!-- header section ends -->


<!-- home section starts  -->

<section class="home" id="home">

    <div class="imagg">
        <div class="vid">
            <video autoplay muted loop id="myVideo">
                <source src="rain.mp4" type="video/mp4">
            </video>
        </div>
       
        <div class="contentt">
            <h3>Welcome</h3>
            <h3><% out.println("" + username + "<br>"); %></h3>
            <a href="#gallery" class="btnnn">Your Bookings</a>
            <a href="#status" class="btnnnn">Order Status</a>
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

        <form action="booking_process.jsp" method="post">
            <div class="inputBox">
                <h3>Source</h3>
                <input type="text" name="source" placeholder="Enter source location" required>
            </div>

            <div class="inputBox">
                <h3>Destination</h3>
                <input type="text" name="destination" placeholder="Enter destination location" required>
            </div>

            <div class="inputBox">
                <h3>Date</h3>
                <input type="date" name="date" required>
            </div>

            <div class="inputBox">
                <h3>Quantity (in tons)</h3>
                <input type="number" name="quantity" placeholder="Enter quantity in tons" required>
            </div>

            <input type="submit" value="Check Availability" class="btnnnnn">

        </form>

    </div>

</section>

<!-- book section ends -->


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
            <img src="truck1.jpg" alt="">
            <div class="content">
                <h3>Truck 1</h3>
                <p>Description of Truck 1</p>
                <a href="#" class="btn">See More</a>
            </div>
        </div>

        <div class="box">
            <img src="truck2.jpg" alt="">
            <div class="content">
                <h3>Truck 2</h3>
                <p>Description of Truck 2</p>
                <a href="#" class="btn">See More</a>
            </div>
        </div>

        <div class="box">
            <img src="truck3.jpg" alt="">
            <div class="content">
                <h3>Truck 3</h3>
                <p>Description of Truck 3</p>
                <a href="#" class="btn">See More</a>
            </div>
        </div>

    </div>

</section>

<!-- gallery section ends -->


<!-- city section starts  -->

<section class="city" id="city">

    <h1 class="heading">
        <span>c</span>
        <span>i</span>
        <span>t</span>
        <span>i</span>
        <span>e</span>
        <span>s</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <img src="city1.jpg" alt="">
            <div class="content">
                <h3>City 1</h3>
                <p>Description of City 1</p>
                <a href="#" class="btn">See More</a>
            </div>
        </div>

        <div class="box">
            <img src="city2.jpg" alt="">
            <div class="content">
                <h3>City 2</h3>
                <p>Description of City 2</p>
                <a href="#" class="btn">See More</a>
            </div>
        </div>

        <div class="box">
            <img src="city3.jpg" alt="">
            <div class="content">
                <h3>City 3</h3>
                <p>Description of City 3</p>
                <a href="#" class="btn">See More</a>
            </div>
        </div>

    </div>

</section>

<!-- city section ends -->


<!-- status section starts  -->

<section class="status" id="status">

    <h1 class="heading">
        <span>o</span>
        <span>r</span>
        <span>d</span>
        <span>e</span>
        <span>r</span>
        <span class="space"></span>
        <span>s</span>
        <span>t</span>
        <span>a</span>
        <span>t</span>
        <span>u</span>
        <span>s</span>
    </h1>

    <div class="roww">

        <div class="imagee">
            <img src="status-img.svg" alt="">
        </div>

        <form action="order_status.jsp" method="post">
            <div class="inputBoxx">
                <h3>Order ID</h3>
                <input type="text" name="order_id" placeholder="Enter order ID" required>
            </div>

            <input type="submit" value="Check Status" class="btnnnnnn">

        </form>

    </div>

</section>

<!-- status section ends -->


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

    <div class="roww">

        <div class="imagee">
            <img src="contact-img.svg" alt="">
        </div>

        <form action="#" method="POST">
            <div class="inputBoxx">
                <h3>Name</h3>
                <input type="text" name="name" placeholder="Enter your name" required>
            </div>
            <div class="inputBoxx">
                <h3>Email</h3>
                <input type="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="inputBoxx">
                <h3>Phone</h3>
                <input type="number" name="phone" placeholder="Enter your phone number" required>
            </div>
            <div class="inputBoxx message">
                <h3>Message</h3>
                <textarea name="message" placeholder="Type your message here..." required></textarea>
            </div>

            <input type="submit" value="Send" class="btnnnnnnn">

        </form>

    </div>

</section>

<!-- contact section ends -->


<!-- footer section  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>Branch Locations</h3>
            <a href="#">City 1</a>
            <a href="#">City 2</a>
            <a href="#">City 3</a>
        </div>

        <div class="box">
            <h3>Truck Types</h3>
            <a href="#">Truck 1</a>
            <a href="#">Truck 2</a>
            <a href="#">Truck 3</a>
        </div>

        <div class="box">
            <h3>Contact Info</h3>
            <a href="#">+1234567890</a>
            <a href="#">example@example.com</a>
            <a href="#">Address, City, Country</a>
        </div>

    </div>

    <h1 class="credit">Created By <span>Your Name</span> | All rights reserved!</h1>

</section>

<!-- footer section ends -->


<!-- custom js file link  -->
<script src="js/main.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

</body>
</html>
