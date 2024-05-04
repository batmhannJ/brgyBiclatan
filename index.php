<? php
    error_reporting(E_ALL ^ E_WARNING);
    ini_set('display_errors',1);

    //include('autoloader.php');
    require('classes/conn.php');
    require('classes/main.class.php');
    require('classes/staff.class.php');
    require('classes/info.class.php');
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />
    <link rel="stylesheet" href="styles.css" />
    <title>Barangay Biclatan Information System</title>
    <style>
      .info__box {
        background-color: rgba(240, 240, 240, 0.7); /* Background color with lower opacity */
        border-radius: 10px; /* Rounded corners */
        padding: 20px; /* Padding around content */
        width: 870px; /* Set width to fit content */
        height: 220px;
        text-align: center; /* Center text */
        box-shadow: 0 1px 10px rgba(0, 0, 0, 0.9); /* Box shadow */
      }


      .about__container {
    display: flex;
    align-items: center;
}
      .about__content {
        flex: 1 1 50%;
        padding: 0 20px;
        text-align: left;
      }

      @media (max-width: 768px) {
        .about__container {
          flex-direction: column;
          align-items: center;
          text-align: center;
        }
      }

      /* Scroll to top button styles */
      #scrollTopBtn {
        display: none;
        position: fixed;
        bottom: 20px;
        right: 20px;
        z-index: 99;
        border: none;
        outline: none;
        background-color: rgba(17, 43, 90, 0.7);
        color: white;
        cursor: pointer;
        padding: 15px;
        border-radius: 100%;
        transition: background-color 0.3s ease;
        font-size: 40px; /* Adjust the size as needed */
      }

      #scrollTopBtn:hover {
        background-color: rgba(17, 43, 90, 0.9);
      }
      .section__description {
    text-align: justify;
}
.footer {
  background-color: #007bff;
}
/* Add custom CSS styles for table */
.table {
    width: 100%;
    margin-bottom: 1rem;
    color: #212529; /* Text color */
}

.table th,
.table td {
    padding: 0.75rem;
    vertical-align: top;
    border-top: 1px solid #007aff; /* Table border color */
}

.table thead th {
    vertical-align: bottom;
    border-bottom: 2px solid #007aff; /* Table header border color */
    background-color: #007aff;
    color: #fff;
}

.table tbody + tbody {
    border-top: 2px solid #007aff; /* Table body border color */
}

.table-hover tbody tr:hover {
    background-color: #f8f9fa; /* Hover background color */
}

.table-striped tbody tr:nth-of-type(odd) {
    background-color: rgba(0, 0, 0, 0.05); /* Alternate row background color */
}

.table-bordered {
    border: 1px solid #dee2e6; /* Table border color */
}

.table-bordered th,
.table-bordered td {
    border: 1px solid #dee2e6; /* Table cell border color */
}

.table-bordered thead th,
.table-bordered thead td {
    border-bottom-width: 2px; /* Table header border width */
}

.table-responsive {
    display: block;
    width: 100%;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
    -ms-overflow-style: -ms-autohiding-scrollbar;
}

/* Additional styling for thead */
.thead-light {
    color: #6c757d; /* Header text color */
    background-color: #f8f9fa; /* Header background color */
    border-color: #dee2e6; /* Header border color */
}



    </style>

  </head>
  <body>
    <header class="header">
      <nav>
        <div class="nav__bar">
          <div class="logo">
            <a href="#"><img src="assets/golo.png" alt="logo" height="70px" /></a>
          </div>
          <span class="logo__text"><b>BICLATAN INFORMATION SYSTEM</b></span>
          <div class="nav__menu__btn" id="menu-btn">
            <i class="ri-menu-line"></i>
          </div>
        </div>
        <ul class="nav__links" id="nav-links">
          <li><a href="#home">HOME</a></li>
          <li><a href="#about">ABOUT</a></li>
          <li><a href="#service">SERVICES</a></li>
          <li><a href="#client">LOCATION</a></li>
          <li><a href="#offer">ACTIVITIES</a></li>
          <li><a href="index_login.php"><button class="btn">LOGIN</button></a></li>
        </ul>
      </nav>
      <hr />
      <div class="section__container header__container" id="home">
        <h1 style="font-size: 80px;">
          <br />Barangay Biclatan <br />Information System
        </h1>
        <br>
        <div class="info__box">
            <?php
              require('classes/conn.php');

              // Assuming $id_brgy_info contains the ID of the barangay information
              $id_brgy_info = 1; // Example barangay information ID

              // Query the database to fetch the content of the <p> tag associated with the barangay information ID
              $sql = "SELECT brgy, municipal, province, openhours, email, contact FROM brgy_info WHERE id_brgy_info = :id";
              $stmt = $conn->prepare($sql);
              $stmt->bindParam(':id', $id_brgy_info);
              $stmt->execute();

              $row = $stmt->fetch(PDO::FETCH_ASSOC);

              // Output the content of the <p> tag
              if ($row) {
                  $brgy = $row['brgy'];
                  $municipal = $row['municipal'];
                  $province = $row['province'];
                  $openhours = $row['openhours'];
                  $email = $row['email'];
                  $contact = $row['contact'];

                  echo "<p style='font-size: 30px; color: black;'>";
                  echo "$brgy, $municipal, $province<br />";
                  echo "$openhours<br />";
                  echo "$email | $contact<br />";
                  echo "</p>";
              } else {
                  echo "No content found for barangay information ID $id_brgy_info";
              }
          ?>
          <hr />
        </div>
      </div>
      <br />
    </header>

    <section class="section__container about__container" id="about">
      <div class="about__content">
        <div style="display: flex; justify-content: space-between; margin-left: 120px;">
          <div style="flex: 1;">
            <br><br><br><h2 class="section__header">BACKGROUND of BARANGAY</h2>
        <?php
              require('classes/conn.php');

              // Assuming $id_brgy_info contains the ID of the barangay information
              $id_brgy_info = 1; // Example barangay information ID

              // Query the database to fetch the content of the <p> tag associated with the barangay information ID
              $sql = "SELECT background FROM brgy_info WHERE id_brgy_info = :id";
              $stmt = $conn->prepare($sql);
              $stmt->bindParam(':id', $id_brgy_info);
              $stmt->execute();

              $row = $stmt->fetch(PDO::FETCH_ASSOC);

              // Output the content of the <p> tag
              if ($row) {
                  $background = $row['background'];

                  echo "<p class='section__description'>";
                  echo "$background<br />";
                  echo "</p>";
              } else {
                  echo "No content found for barangay information ID $id_brgy_info";
              }
          ?>
          </div>
          <div class="about__image-left" style="margin-right: 90px;">
            <br><img src="assets/golo1.png" alt="about" style="width:280px; height: 280px;" />
          </div>
        </div>
       <div class="about__container">
    <div class="about__image">
        <br /><img src="assets/golo.png" alt="about" style="width:300px; height: 300px; margin-left: 80px;" />
    </div>
    <div class="about__content">
        <br><h2 class="section__header">VISION</h2>
            <?php
              require('classes/conn.php');

              // Assuming $id_brgy_info contains the ID of the barangay information
              $id_brgy_info = 1; // Example barangay information ID

              // Query the database to fetch the content of the <p> tag associated with the barangay information ID
              $sql = "SELECT vision FROM brgy_info WHERE id_brgy_info = :id";
              $stmt = $conn->prepare($sql);
              $stmt->bindParam(':id', $id_brgy_info);
              $stmt->execute();

              $row = $stmt->fetch(PDO::FETCH_ASSOC);

              // Output the content of the <p> tag
              if ($row) {
                  $vision = $row['vision'];

                  echo "<p class='section__description'>";
                  echo "$vision<br />";
                  echo "</p>";
              } else {
                  echo "No content found for barangay information ID $id_brgy_info";
              }
          ?>
            <br />
            <h2 class="section__header">MISSION</h2>
            <?php
              require('classes/conn.php');

              // Assuming $id_brgy_info contains the ID of the barangay information
              $id_brgy_info = 1; // Example barangay information ID

              // Query the database to fetch the content of the <p> tag associated with the barangay information ID
              $sql = "SELECT mission FROM brgy_info WHERE id_brgy_info = :id";
              $stmt = $conn->prepare($sql);
              $stmt->bindParam(':id', $id_brgy_info);
              $stmt->execute();

              $row = $stmt->fetch(PDO::FETCH_ASSOC);

              // Output the content of the <p> tag
              if ($row) {
                  $mission = $row['mission'];

                  echo "<p class='section__description'>";
                  echo "$mission<br />";
                  echo "</p>";
              } else {
                  echo "No content found for barangay information ID $id_brgy_info";
              }
          ?>

    </div>
</div>
<div class="container-fluid">
    <br><br>
    <center><h2 class="section__header">BARANGAY OFFICIALS</h2></center><br>
    <div class="table-responsive">
        <table class="table table-hover text-center table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-light"> <!-- Use thead-light class for header styling -->
                <!--<tr>
                    <th style="width: 50%;">Full Name</th>
                    <th style="width: 50%;">Position</th>
                </tr>-->
            </thead>
            <tbody>
                <?php
                require('classes/conn.php');

                try {
                    // Establish database connection
                    $conn = new PDO('mysql:host=localhost;dbname=bmis', 'root', '');

                    // Set PDO error mode to exception
                    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                    // Prepare and execute SQL query
                    $stmt = $conn->prepare("SELECT name, position FROM tbl_officials");
                    $stmt->execute();

                    // Check if there are rows returned
                    if ($stmt->rowCount() > 0) {
                        // Fetch data and display in HTML table
                        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                            ?>
                            <tr>
                                <td><?= $row['name']; ?></td>
                                <td><?= $row['position']; ?></td>
                            </tr>
                            <?php
                        }
                    } else {
                        // Display message if no data found
                        echo '<tr><td colspan="2">No records found</td></tr>';
                    }
                } catch (PDOException $e) {
                    // Handle database errors
                    echo '<tr><td colspan="2">Error: ' . $e->getMessage() . '</td></tr>';
                }
                ?>
            </tbody>
        </table>
    </div>
</div>
      </div>
    </section>

    <section class="section__container service__container" id="service">
      <center><h2 class="section__header"><br>Our Services</h2>
      <p class="section__description">
        Barangay services cover safety, health, social welfare, development, dispute resolution, and disaster response.
      </p></center>
      <div class="service__grid">
        <div class="service__card">
    <?php
    require('classes/conn.php');

    // Assuming $id_services contains the ID of the service
    $id_services = 6; // Example service ID

    // Query the database to fetch the filename of the image associated with the service ID
    $sql = "SELECT image_service FROM tbl_services WHERE id_services = :id";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':id', $id_services);
    $stmt->execute();

    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    // Output the filename of the image
    if ($row) {
        $filename = $row['image_service'];

        // Construct the <img> tag to display the image
        echo '<img src="' . $filename . '" alt="Service Image">';
    } else {
        echo "No image found for service ID $id_services";
    }
    ?>

    <div>
        <div>
            <br><br><h4>BUSINESS CLEARANCE</h4>
            <p>
                A business clearance is a permit allowing a business to operate legally within a specific area by meeting local regulations and requirements.
            </p>
        </div>
    </div>
</div>
        <div class="service__card">
          <?php
            require('classes/conn.php');

            // Assuming $id_services contains the ID of the service
            $id_services = 1; // Example service ID

            // Query the database to fetch the filename of the image associated with the service ID
            $sql = "SELECT image_service FROM tbl_services WHERE id_services = :id";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':id', $id_services);
            $stmt->execute();

            $row = $stmt->fetch(PDO::FETCH_ASSOC);

            // Output the filename of the image
            if ($row) {
                $filename = $row['image_service'];

                // Construct the <img> tag to display the image
                echo '<img src="' . $filename . '" alt="Service Image">';
            } else {
                echo "No image found for service ID $id_services";
            }
          ?>
          <div>
            <div>
              <br><br><h4>BARANGAY CLEARANCE</h4>
              <p>
                A barangay clearance is a document certifying a person's residence and good standing within a local community in the Philippines.
              </p>
            </div>
            
          </div>
        </div>
        <div class="service__card">
          <?php
            require('classes/conn.php');

            // Assuming $id_services contains the ID of the service
            $id_services = 5; // Example service ID

            // Query the database to fetch the filename of the image associated with the service ID
            $sql = "SELECT image_service FROM tbl_services WHERE id_services = :id";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':id', $id_services);
            $stmt->execute();

            $row = $stmt->fetch(PDO::FETCH_ASSOC);

            // Output the filename of the image
            if ($row) {
                $filename = $row['image_service'];

                // Construct the <img> tag to display the image
                echo '<img src="' . $filename . '" alt="Service Image">';
            } else {
                echo "No image found for service ID $id_services";
            }
          ?>
          <div>
            <div>
              <br><br><h4>CERTIFICATE OF INDIGENCY</h4>
              <p>
                A document issued by a local government unit certifying that an individual or family is financially disadvantaged, often required for availing of social services or benefits.
              </p>
            </div>
            
          </div>
        </div>
        <div class="service__card">
          <?php
            require('classes/conn.php');

            // Assuming $id_services contains the ID of the service
            $id_services = 4; // Example service ID

            // Query the database to fetch the filename of the image associated with the service ID
            $sql = "SELECT image_service FROM tbl_services WHERE id_services = :id";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':id', $id_services);
            $stmt->execute();

            $row = $stmt->fetch(PDO::FETCH_ASSOC);

            // Output the filename of the image
            if ($row) {
                $filename = $row['image_service'];

                // Construct the <img> tag to display the image
                echo '<img src="' . $filename . '" alt="Service Image">';
            } else {
                echo "No image found for service ID $id_services";
            }
          ?>
          <div>
            <div>
              <br><h4>CERTIFICATE OF RESIDENCY</h4>
              <p>
                A Certificate of Residency is an official document confirming an individual's address within a specific area, often required for government services or local applications.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="client" id="client">
      <div class="section__container client__container">
        <center><br /><br /><h2 class="section__header">LOCATION</h2></center>
        <p class="section__description">
          <center>Biclatan Barangay Hall<br>
          7WG8+QH6, Green Breeze Village, General Trias, Cavite
        </p></center><br/>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.803085425483!2d120.91380297486442!3d14.276921184919763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd7fe85ac7b9e9%3A0x48fed9f90c1f68b7!2sBiclatan%20Barangay%20Hall!5e1!3m2!1sfil!2sph!4v1711619085743!5m2!1sfil!2sph" width="1200" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
    </section>

    <section class="section__container offer__container" id="offer">
      <div class="offer__header">
        <h2 class="section__header"><br /><br />Recent Activities</h2>
      </div>
      <div class="offer__grid">
        <div class="offer__card">
          <?php
              require('classes/conn.php');

              // Prepare the SQL query
              $stmt = $conn->prepare("SELECT name, date, image FROM tbl_activities ORDER BY date DESC LIMIT 1");

              // Execute the query
              $stmt->execute();

              // Fetch all the results
              $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

              // Loop through the results and display them
              foreach ($results as $result) {
                  $filename = $result['image']; // Corrected: Use $result instead of $results
                  
                  // Construct the <img> tag to display the image
                  echo '<img src="' . $filename . '" alt="Service Image">';
                  echo '<h4>'.$result['name'].'</h4>';
                  echo '<p>'.$result['date'].'</p>';
                  // Add more HTML here to display additional data if needed
              }
              ?>
        </div>
        <div class="offer__card">
          <?php
              require('classes/conn.php');

              // Prepare the SQL query
              $stmt = $conn->prepare("SELECT name, date, image FROM tbl_activities LIMIT 1 OFFSET 1");

              // Execute the query
              $stmt->execute();

              // Fetch all the results
              $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

              // Loop through the results and display them
              foreach ($results as $result) {
                  $filename = $result['image']; // Corrected: Use $result instead of $results
                  
                  // Construct the <img> tag to display the image
                  echo '<img src="' . $filename . '" alt="Service Image">';
                  echo '<h4>'.$result['name'].'</h4>';
                  echo '<p>'.$result['date'].'</p>';
                  // Add more HTML here to display additional data if needed
              }
          ?>
        </div>
        <div class="offer__card">
          <?php
              require('classes/conn.php');

              // Prepare the SQL query
              $stmt = $conn->prepare("SELECT name, date, image FROM tbl_activities LIMIT 1 OFFSET 2");

              // Execute the query
              $stmt->execute();

              // Fetch all the results
              $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

              // Loop through the results and display them
              foreach ($results as $result) {
                  $filename = $result['image']; // Corrected: Use $result instead of $results
                  
                  // Construct the <img> tag to display the image
                  echo '<img src="' . $filename . '" alt="Service Image">';
                  echo '<h4>'.$result['name'].'</h4>';
                  echo '<p>'.$result['date'].'</p>';
                  // Add more HTML here to display additional data if needed
              }
              ?>
        </div>
      </div>
    </section>


    <footer class="footer" style="padding-left: 240px;">
      <div class="section__container footer__container">
        <div class="footer__col">
          <div class="logo">
            <h4><b>INFORMATION SYSTEM</b></h4>
          </div>
          <hr>
          <p>
            <b>Biclatan</b> is a barangay in the city of General Trias, in the province of Cavite.
          </p>
          <ul class="footer__socials">
            <li>
              <a href="https://web.facebook.com/p/Barangay-Biclatan-100069121909069/?locale=en_GB&_rdc=1&_rdr"><i class="ri-facebook-fill"></i></a>
            </li>
            <!--<li>
              <a href="#"><i class="ri-instagram-line"></i></a>
            </li>
            <li>
              <a href="#"><i class="ri-youtube-line"></i></a>
            </li>-->
          </ul>
        </div>
        
        <div class="footer__col" style="width: 200px; margin-left: 20px">
          <h4>Contact Us</h4>
          <ul class="footer__links">
            <li style="color: #fff;">
                <?php
                  require('classes/conn.php');

                  // Assuming $id_brgy_info contains the ID of the barangay information
                  $id_brgy_info = 1; // Example barangay information ID

                  // Query the database to fetch the contact information associated with the barangay information ID
                  $sql = "SELECT contact FROM brgy_info WHERE id_brgy_info = :id";
                  $stmt = $conn->prepare($sql);
                  $stmt->bindParam(':id', $id_brgy_info);
                  $stmt->execute();

                  $row = $stmt->fetch(PDO::FETCH_ASSOC);

                  // Output the contact information along with the phone icon
                  if ($row) {
                      $contact = $row['contact'];

                      echo "<span>";
                      echo "<i class='ri-phone-fill'></i></span> $contact<br />";
                      echo "";
                  } else {
                      echo "No content found for barangay information ID $id_brgy_info";
                  }
                  ?>
            </li>
            <li style="color: #fff; font-size: 14px;">
                <?php
                  require('classes/conn.php');

                  // Assuming $id_brgy_info contains the ID of the barangay information
                  $id_brgy_info = 1; // Example barangay information ID

                  // Query the database to fetch the contact information associated with the barangay information ID
                  $sql = "SELECT email FROM brgy_info WHERE id_brgy_info = :id";
                  $stmt = $conn->prepare($sql);
                  $stmt->bindParam(':id', $id_brgy_info);
                  $stmt->execute();

                  $row = $stmt->fetch(PDO::FETCH_ASSOC);

                  // Output the contact information along with the phone icon
                  if ($row) {
                      $email = $row['email'];

                      echo "<span>";
                      echo "<i class='ri-mail-line'></i></span> $email<br />";
                      echo "";
                  } else {
                      echo "No content found for barangay information ID $id_brgy_info";
                  }
                  ?>
            </li>
            <li style="color: #fff; font-size: 14px;" >
                <?php
                  require('classes/conn.php');

                  // Assuming $id_brgy_info contains the ID of the barangay information
                  $id_brgy_info = 1; // Example barangay information ID

                  // Query the database to fetch the contact information associated with the barangay information ID
                  $sql = "SELECT brgy, municipal, province FROM brgy_info WHERE id_brgy_info = :id";
                  $stmt = $conn->prepare($sql);
                  $stmt->bindParam(':id', $id_brgy_info);
                  $stmt->execute();

                  $row = $stmt->fetch(PDO::FETCH_ASSOC);

                  // Output the contact information along with the phone icon
                  if ($row) {
                      $brgy = $row['brgy'];
                      $municipal = $row['municipal'];
                      $province = $row['province'];

                      echo "<span>";
                      echo "<i class='ri-map-pin-2-fill'></i></span> $brgy, $municipal, $province<br />";
                      echo "";
                  } else {
                      echo "No content found for barangay information ID $id_brgy_info";
                  }
                  ?>
            </li>
          </ul>
        </div>
        <!--<div class="footer__col">
          <h4>Contact Us</h4>
          <form action="/">
            <input type="text" placeholder="Enter your message" />
            <button class="btn">Send</button>
          </form>
        </div>
      </div>
      <div class="footer__bar">
        Copyright © 2024 Information System. All rights reserved.
      </div>-->
      <div class="about__image" style="margin-left: 100px;">
        <img src="assets/goloo.png" alt="about" style="width:200px; height: 200px; margin-left: 80px; margin-bottom: 10px;" />
    </div>
    </footer>

    <!-- Scroll to top button -->
    <button id="scrollTopBtn" onclick="scrollToTop()">
      <i class="ri-arrow-up-s-line"></i>
    </button>

    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="main.js"></script>
    <script>
      // Function to scroll to the top of the page
      function scrollToTop() {
        window.scrollTo({ top: 0, behavior: 'smooth' });
      }

      // Show or hide the scroll to top button based on scroll position
      window.onscroll = function () {
        var scrollTopBtn = document.getElementById("scrollTopBtn");
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          scrollTopBtn.style.display = "block";
        } else {
          scrollTopBtn.style.display = "none";
        }
      };
    </script>
  </body>
</html>
