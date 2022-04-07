<!DOCTYPE html>
<html>
<head>
    <title>Directions Service</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>
<body>
    <iframe src="https://www.google.com/maps/embed/v1/directions?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&amp;&origin=Minsk+Belarus&destination=Moscow+Russia&avoid=tolls|highways&language=ru"
            width="1200"
            height="500"
            frameborder="0"
            style="border:0; width: 100%;" allowfullscreen="true"></iframe>
    <iframe src="http://map.project-osrm.org/?z=9&center=51.132831%2C17.108459&hl=ru&alt=0&srv=1"
            width="1200"
            height="500"
            frameborder="0"
            style="border:0; width: 100%;" allowfullscreen="true"></iframe>

<script
        src="https://www.google.com/maps/embed/v1/directions?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&amp;&origin=Minsk+Belarus
  &destination=Moscow+Russia
  &avoid=tolls|highways"
        async
></script>
</body>
</html>
<!--<!DOCTYPE html>-->
<!--<html>-->
<!--<head>-->
<!--    <meta charset="utf-8" />-->
<!--    <title>Google Maps v3 API Example</title>-->
<!--    <style>-->
<!--        html, body, #map {-->
<!--            height: 100%;-->
<!--            width: 100%;-->
<!--            margin: 0;-->
<!--            padding: 0;-->
<!--        }-->
<!--        div#footer {-->
<!--            position: fixed;-->
<!--            left: 0;-->
<!--            right: 0;-->
<!--            bottom: 0;-->
<!--            width: 100%;-->
<!--            height: 18px;-->
<!--            margin: 0;-->
<!--            padding: 6px;-->
<!--            z-index: 2;-->
<!--            background: WHITE;-->
<!--        }-->
<!--    </style>-->
<!--</head>-->
<!--<body>-->
<!--<div id="map" style="float: left;"></div>-->

<!--<div id="footer">&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors</div>-->

<!--&lt;!&ndash; bring in the google maps library &ndash;&gt;-->
<!--<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>-->

<!--<script type="text/javascript">-->
<!--            //Google maps API initialisation-->
<!--            var element = document.getElementById("map");-->

<!--            var map = new google.maps.Map(element, {-->
<!--                center: new google.maps.LatLng(57, 21),-->
<!--                zoom: 3,-->
<!--                mapTypeId: "OSM",-->
<!--                mapTypeControl: false,-->
<!--                streetViewControl: false-->
<!--            });-->

<!--            //Define OSM map type pointing at the OpenStreetMap tile server-->
<!--            map.mapTypes.set("OSM", new google.maps.ImageMapType({-->
<!--                getTileUrl: function(coord, zoom) {-->
<!--                    // "Wrap" x (longitude) at 180th meridian properly-->
<!--                    // NB: Don't touch coord.x: because coord param is by reference, and changing its x property breaks something in Google's lib-->
<!--                    var tilesPerGlobe = 1 << zoom;-->
<!--                    var x = coord.x % tilesPerGlobe;-->
<!--                    if (x < 0) {-->
<!--                        x = tilesPerGlobe+x;-->
<!--                    }-->
<!--                    // Wrap y (latitude) in a like manner if you want to enable vertical infinite scrolling-->

<!--                    return "https://tile.openstreetmap.org/" + zoom + "/" + x + "/" + coord.y + ".png";-->
<!--                },-->
<!--                tileSize: new google.maps.Size(256, 256),-->
<!--                name: "OpenStreetMap",-->
<!--                maxZoom: 18-->
<!--            }));-->
<!--        </script>-->
<!--</body>-->
<!--</html>-->