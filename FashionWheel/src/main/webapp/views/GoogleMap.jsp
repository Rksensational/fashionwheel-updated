<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Direction Google Map</title>
    <!-- <style>
            #map{
              height:580px;
              width:100%;
            }
          </style> -->
</head>
<body>
    <center>
            <h1>Fasion Wheel Direction </h1>
    </center>

    <div id="map"></div>

  <script>
            function initMap() {

            //India
            var uluru = {lat: 20.5937, lng: 78.9629};
            //Mumbai
            var city1 = {lat: 19.0760, lng: 72.8777};
            //New Delhi
            var Head = {lat: 28.7041, lng: 77.1025};

            var map = new google.maps.Map(document.getElementById('map'), 
            {
            zoom: 4,
            center: uluru
            });

//INDIA

        //Marker For India !!!
        var marker1 = new google.maps.Marker
        ({
        position: uluru,
        map: map,
        icon:'https://png.icons8.com/wired/50/000000/order-delivered.png'
         
        });
        //Click On India ...
        var infoWindow1 = new google.maps.InfoWindow
        ({
        content:'<h1>INDIA</h1>'
        });
        marker1.addListener
        ('click', function(){
        infoWindow1.open(map, marker1);
        });

//MUMBAI
        
        //Marker For Mumbai !!!
        var marker2 = new google.maps.Marker
        ({
        position: city1,
        map: map
        });
        //Click On Mumbai   ...
        var infoWindow2 = new google.maps.InfoWindow
        ({
         content:'<h1>Mumbai</h1>'
        });
        marker2.addListener('click', function(){
        infoWindow2.open(map, marker2);
        });

//NEW DELHI

        //Marker For New Delhi !!!
        var marker3 = new google.maps.Marker
        ({
        position: Head,
        map: map
        });
        //Click On New Delhi   ...
        var infoWindow3 = new google.maps.InfoWindow
        ({
        content:'<h1>New Delhi</h1>'
        });
        marker3.addListener('click', function(){
        infoWindow3.open(map, marker3);
        });


      }
</script>


<script>
        //new map
        //india {lat: 20.5937, lng: 78.9629};
        //mumbai {lat: 19.0760, lng: 72.8777};
        //NewDelhi {lat: 28.7041, lng: 77.1025};
</script>





          </script>
          <script async defer
          src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjDHsG4hw1nbNz7yEiGgkADpy7mQ96FGE&callback=initMap">
          </script>
        </body>
      </html>