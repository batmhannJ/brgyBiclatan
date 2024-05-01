<?php
    ini_set('display_errors',1);
    error_reporting(E_ALL ^ E_WARNING);
    include('classes/staff.class.php');
    include('classes/resident.class.php');
    include('classes/services.class.php');

    $userdetails = $bmis->get_userdata();
    $bmis->validate_admin();

    $rescount = $residentbmis->count_resident();
    $rescountm = $residentbmis->count_male_resident();
    $rescountf = $residentbmis->count_female_resident();
    $rescountfh = $residentbmis->count_head_resident();
    $rescountfm = $residentbmis->count_member_resident();
    $rescountvoter = $residentbmis->count_voters();
    $rescountsenior = $residentbmis->count_resident_senior();

    $reqscount = $residentbmis->count_approval();
    $minorcount = $residentbmis->count_minor();
    $pwdcount = $residentbmis->count_pwd();
    $spcount = $residentbmis->count_single_parent();
    $fourpscount = $residentbmis->count_fourps();
    $indigentcount = $residentbmis->count_indigent();
    $malcount = $residentbmis->count_malnourished();
    $vacxcount = $residentbmis->count_vaccinated();
    $pregnancycount = $residentbmis->count_pregnancy();
    $residencycount = $residentbmis->count_residency();
    $count = $residencycount['count'];
    $color = $residencycount['color'];

    $bspermitcount = $residentbmis->count_bspermit();
    $countbs = $bspermitcount['count'];
    $colorbs = $bspermitcount['color'];

    $clearancecount = $residentbmis->count_clearance();
    $countbc = $clearancecount['count'];
    $colorbc = $clearancecount['color'];

    $indigencycount = $residentbmis->count_indigency();
    $countindigency = $indigencycount['count'];
    $colorindigency = $indigencycount['color'];

    $blottercount = $residentbmis->count_blotter();
    $countblotter = $blottercount['count'];
    $colorblotter = $blottercount['color'];

    $staffcount = $staffbmis->count_staff();
    $staffcountm = $staffbmis->count_mstaff();
    $staffcountf = $staffbmis->count_fstaff();

    $servicescount = $servicesbmis->count_services();

?>

<style> 
    html, body{
        height: 100%;
    }
.container-fluid{
    min-height: 80%;
}
.card-upper-space {
    margin-top: 35px;
}

.card-row-gap {
    margin-top: 3em;
}
.chart-container {
    display: flex;
    width: 100%;
    overflow-x: auto; /* Allow horizontal scrolling if charts overflow */
}

.chart-container canvas {
    max-width: 50%; /* Limit the width of each chart to 50% of the container */
    flex-shrink: 0; /* Prevent charts from shrinking */
}
</style>


<?php 
    include('dashboard_sidebar_start.php');
?>

<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->


    <div class="row">
        <a href="admn_resident_request.php"><button class="btn btn-primary" style="margin-left: 10px;">View</button></a>
        <canvas id="numberOfRecordsChart" width="2000" height="300"></canvas>
    </div><br>
    <div class="row">
        <a href="admn_resident_crud.php"><button class="btn btn-primary" style="margin-left: 10px;">View</button></a>
        <canvas id="otherChart" width="2000" height="400"></canvas>
    </div>


    <br>
    <hr>
    <br>

    <!--<div class="row"> 
    <div class="col-md-4">
        <h4> Barangay Staff Data </h4> 
        <br>
        <div class="card border-left-info shadow">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                Total Barangay Staffs</div>
                                <div class="h5 mb-0 font-weight-bold text-dark"><?= $staffcount?></div>
                                <br>
                                <a href="admn_table_totalstaff.php"> View Records </a>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user-friends fa-2x text-dark"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">  
            <br>
            <div class="card border-left-info shadow card-upper-space">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                Total Barangay Male Staff
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-dark"><?= $staffcountm?></div>
                            <br>
                            <a href="admn_table_malestaff.php"> View Records </a>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-male fa-2x text-dark"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">  
            <br>
            <div class="card border-left-info shadow card-upper-space">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                Total Barangay Female Staffs</div>
                                <div class="h5 mb-0 font-weight-bold text-dark"><?= $staffcountf?></div>
                                <br>
                                <a href="admn_table_femalestaff.php"> View Records </a>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-female fa-2x text-dark"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>-->


<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<br>
<br>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-modal/2.2.6/js/bootstrap-modalmanager.min.js" integrity="sha512-/HL24m2nmyI2+ccX+dSHphAHqLw60Oj5sK8jf59VWtFWZi9vx7jzoxbZmcBeeTeCUc7z1mTs3LfyXGuBU32t+w==" crossorigin="anonymous"></script>
<!-- responsive tags for screen compatibility -->
<meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
<!-- custom css --> 
<link href="customcss/regiformstyle.css" rel="stylesheet" type="text/css">
<!-- bootstrap css --> 
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"> 
<!-- fontawesome icons -->
<script src="https://kit.fontawesome.com/67a9b7069e.js" crossorigin="anonymous"></script>
<script src="bootstrap/js/bootstrap.bundle.js" type="text/javascript"> </script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
    // Get the canvas elements
    var ctxNumberOfRecords = document.getElementById('numberOfRecordsChart').getContext('2d');
    var ctxOther = document.getElementById('otherChart').getContext('2d');

    // Data for the charts
    var documentData = [
        {
            documentType: 'Total Request for Approval',
            count:  <?= $reqscount ?>,
        },
        {
            documentType: 'Certificate of Residency',
            count: <?= $count ?>
        },
        {
            documentType: 'Business Clearance',
            count: <?= $countbs ?>
        },
        {
            documentType: 'Barangay Clearance',
            count: <?= $countbc ?>
        },
        {
            documentType: 'Certificate of Indigency',
            count: <?= $countindigency ?>
        },
        {
            documentType: 'Blotter Reports',
            count: <?= $countblotter ?>
        }
    ];

    // Function to extract labels and counts from the data
    function extractData(data) {
        var labels = data.map(function(item) {
            return item.documentType;
        });

        var counts = data.map(function(item) {
            return item.count;
        });

        return {
            labels: labels,
            counts: counts
        };
    }



    // Data for the charts
    var chartData = extractData(documentData);

    // Chart configuration
    var options = {
        scales: {
            xAxes: [{
                ticks: {
                    maxRotation: 90,
                    minRotation: 0
                }
            }],
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    };

    // Create the bar charts
    var numberOfRecordsChart = new Chart(ctxNumberOfRecords, {
        type: 'bar',
        data: {
            labels: chartData.labels,
            datasets: [{
                label: 'Number of Records',
                backgroundColor: '#4e73df',
                borderColor: '#4e73df',
                data: chartData.counts
            }]
        },
        options: options
    });

    /*var brgyChartData = {
        labels: ['Total Barangay Residents', 'Total Registered Voters', 'Total Unregistered Voters', 'Total Male Residents', 'Total Female Residents'],
        datasets: [{
            label: 'Barangay Residents Data',
            backgroundColor: '#1cc88a',
            borderColor: '#1cc88a',
            data: [<?= $rescount ?>, <?= $rescountvoter ?>, <?= $rescountm ?>, <?= $rescountm ?>, <?= $rescountf ?>]
        }]
    };

    var brgyChart = new Chart(ctxBrgy, {
        type: 'bar',
        data: brgyChartData,
        options: options
    });*/

    var otherChartData = {
        labels: ['Total Barangay Residents', 'Total Registered Voters', 'Total Unregistered Voters', 'Total Male Residents', 'Total Female Residents', 'Total Minor Residents', 'Total Senior Residents', 'Total PWD Residents', 'Total Single Parents', 'Total 4Ps Members', 'Total Indigent Residents', 'Total Malnourished Residents'],
        datasets: [{
            label: 'Other Resident Data',
            backgroundColor: '#36b9cc',
            borderColor: '#36b9cc',
            data: [<?= $rescount ?>, <?= $rescountvoter ?>, <?= $rescountm ?>, <?= $rescountm ?>, <?= $rescountf ?>, <?= $minorcount ?>, <?= $rescountsenior ?>, <?= $pwdcount ?>, <?= $spcount ?>, <?= $fourpscount ?>, <?= $indigentcount ?>, <?= $malcount ?>]
        }]
    };

    var otherChart = new Chart(ctxOther, {
        type: 'bar',
        data: otherChartData, // Change chartData to otherChartData
        options: options
    });

</script>
<?php 
    include('dashboard_sidebar_end.php');
?>
