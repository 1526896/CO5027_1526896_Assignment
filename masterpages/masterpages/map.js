function initMap() {
    var lcb = { lat: 4.885470, lng: 114.931614 };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 4,
        center: lcb
    });
    var marker = new google.maps.Marker({
        position: lcb,
        map: map
    });
}