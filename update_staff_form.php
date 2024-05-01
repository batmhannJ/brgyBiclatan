<?php
    error_reporting(E_ALL ^ E_WARNING);
    require('classes/staff.class.php');
    $userdetails = $bmis->get_userdata();
    //$bmis->validate_admin();
    $view = $staffbmis->view_staff();
    $staffbmis->create_staff();
    $upstaff = $staffbmis->update_staff();
    $staffbmis->delete_staff();
    $staffcount = $staffbmis->count_staff();
    $id_user = $_GET['id_user'];
    $staff = $staffbmis->get_single_staff($id_user);
?>

<?php 
    include('dashboard_sidebar_start.php');
?>

<!-- Begin Page Content -->

<div class="container-fluid">

    <!-- Page Heading -->

    <h1 class="mb-4 text-center">Barangay Staff Data</h1>

    <hr>
    <br>

    <div class="row">
        <div class="col-md-2"> </div>
        <div class="col-md-8">
            <div class="card"> 
                <div class="card-header bg-primary text-white"> Update Barangay Staff Data </div>
                <div class="card-body"> 
                    <form method="post">
                        <div class="row">
                            <div class="col">
                                <label class="form-group"> Last Name:</label>
                                <input type="text" class="form-control" name="lname" placeholder="Enter Last Name" value="<?= $staff['lname'];?>">
                            </div>
                            <div class="col">
                                <label class="form-group" >First Name: </label>
                                <input type="text" class="form-control" name="fname" placeholder="Enter First Name" value="<?= $staff['fname'];?>">
                            </div>
                            <div class="col">
                                <label class="form-group"> Middle Name: </label>
                                <input type="text" class="form-control" name="mi" placeholder="Enter Middle Name" value="<?= $staff['mi'];?>">
                            </div>
                        </div>
                        
                        <div class="row" style="margin-top: 1.1em;">
                            <div class="col">
                                <label class="form-group">Email: </label>
                                <input type="email" class="form-control" name="email"  placeholder="Enter Email" value="<?= $staff['email'];?>">
                            </div>
                            <div class="col">
                                <label class="form-group">Contact Number:</label>
                                <input type="tel" class="form-control" name="contact" placeholder="Enter Contact Number" value="<?= $staff['contact'];?>">
                            </div>
                            <div class="col">
                                <label class="form-group">Position: </label>
                                <input type="text" class="form-control" name="position"  placeholder="Enter Position" value="<?= $staff['position'];?>">
                            </div>
                        </div>

                        <div class="row" style="margin-top: 1.1em;">
                            <div class="col">
                                <div class="form-group">
                                    <label>House No:</label>
                                    <input class="form-control" type="text" name="houseno" placeholder="Enter House No." value="<?= $staff['houseno'];?>">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <label>Street:</label>
                                    <input class="form-control" type="text" name="street" placeholder="Enter Street" value="<?= $staff['street'];?>">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <label>Barangay:</label>
                                    <input class="form-control" type="text" name="brgy" placeholder="Enter Barangay" value="<?= $staff['brgy'];?>">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <label> Municipality: </label>
                                    <input type="text" class="form-control" name="municipal" placeholder="Enter Municipality" value="<?= $staff['municipal']?>" required>
                                </div>
                            </div>
                        </div>

                        <div class="row" style="margin-top: .5em;">
                            <div class="col">
                                <div class="form-group">
                                    <label>Age: </label>
                                    <input type="number" class="form-control" name="age" placeholder="Enter Age" value="<?= $staff['age'];?>">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <label> Gender: </label>
                                    <input type="text" class="form-control" name="gender" placeholder="Enter Gender" value="<?= $staff['sex'];?>" required>
                                </div>
                            </div>
                        </div>
                        
                        <input type="hidden" class="form-control" name="role" value="user">
                        <input type="hidden" class="form-control" name="addedby" value="<?= $userdetails['surname']?>, <?= $userdetails['firstname']?>">
                        <br>
                        <hr>
                        <a href="admn_staff_crud.php" class="btn btn-danger" style="width: 120px; font-size: 18px; border-radius:30px; margin-left:35%;"> Back </a>
                        <button class="btn btn-primary" type="submit" name="update_staff" style="width: 120px; font-size: 18px; border-radius:30px;"> 
                            Update 
                        </button>
                    </form>         
                </div>
            </div>
        </div>
        <div class="col-md-2"> </div>
    </div>
    
    <br>
</div>
<!-- /.container-fluid -->

<!-- End of Main Content -->

<!-- Footer -->
        <!-- Footer -->

        <footer id="footer" class="d-flex-column text-center">

            <!--Copyright-->

            <div class="py-3 text-center">
                2023 -
                <script>
                document.write(new Date().getFullYear())
                </script> 
                | Barangay Bicalatan Information System
            </div>

        </footer>

            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="logout.php">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-modal/2.2.6/js/bootstrap-modalmanager.min.js" integrity="sha512-/HL24m2nmyI2+ccX+dSHphAHqLw60Oj5sK8jf59VWtFWZi9vx7jzoxbZmcBeeTeCUc7z1mTs3LfyXGuBU32t+w==" crossorigin="anonymous"></script>
    <!-- responsive tags for screen compatibility -->
    <meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
    <!-- bootstrap css --> 
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"> 
    <!-- fontawesome icons -->
    <script src="https://kit.fontawesome.com/67a9b7069e.js" crossorigin="anonymous"></script>
    <script src="bootstrap/js/bootstrap.bundle.js" type="text/javascript"> </script>

</body>



</html>