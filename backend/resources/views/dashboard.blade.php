@extends('layouts.app')
@section('title', 'General Dashboard')
@push('style')
<link rel="stylesheet" type="text/css" href="/assets/src/plugins/mapbox/mapbox.css" />
<script src="/assets/src/plugins/mapbox/mapbox.js"></script>
<style>
    #map {
        width: 100%;
        height: 400px;
    }

    .marker {
        background-image: url('/assets/src/images/icon-marker.png');
        background-size: cover;
        width: 50px;
        height: 50px;
        border-radius: 50%;
        cursor: pointer;
    }

    .mapboxgl-popup {
        max-width: 200px;
    }

    .mapboxgl-popup-content {
        text-align: center;
    }
</style>
@endpush
@section('content')
<div class="xs-pd-20-10 pd-ltr-20">
    <div class="title pb-20">
        <h2 class="h3 mb-0">Location Overview</h2>
    </div>

    <div class="row pb-10">
        <div class="col-xl-3 col-lg-3 col-md-6 mb-20">
            <div class="card-box height-100-p widget-style3">
                <div class="d-flex flex-wrap">
                    <div class="widget-data">
                        <div class="weight-700 font-24 text-dark">Sunday</div>
                        <div class="font-14 text-secondary weight-500">
                            12 May 2024
                        </div>
                    </div>
                    <div class="widget-icon">
                        <div class="icon" data-color="#00eccf">
                            <i class="icon-copy dw dw-calendar1"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-3 col-md-6 mb-20">
            <div class="card-box height-100-p widget-style3">
                <div class="d-flex flex-wrap">
                    <div class="widget-data">
                        <div class="weight-700 font-24 text-dark">1</div>
                        <div class="font-14 text-secondary weight-500">
                            Device
                        </div>
                    </div>
                    <div class="widget-icon">
                        <div class="icon" data-color="#ff5b5b">
                            <span class="icon-copy ti-heart"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-3 col-md-6 mb-20">
            <div class="card-box height-100-p widget-style3">
                <div class="d-flex flex-wrap">
                    <div class="widget-data">
                        <div class="weight-700 font-24 text-dark">1h ago</div>
                        <div class="font-14 text-secondary weight-500">
                            Last Update
                        </div>
                    </div>
                    <div class="widget-icon">
                        <div class="icon">
                            <i class="icon-copy fa fa-stethoscope" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-3 col-md-6 mb-20">
            <div class="card-box height-100-p widget-style3">
                <div class="d-flex flex-wrap">
                    <div class="widget-data">
                        <div class="weight-700 font-24 text-dark">31000</div>
                        <div class="font-14 text-secondary weight-500">Data Receive</div>
                    </div>
                    <div class="widget-icon">
                        <div class="icon" data-color="#09cc06">
                            <i class="icon-copy fa fa-money" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card-box pb-10">
        <div class="h5 pd-20 mb-0">Recent Location</div>
        <div id="map"></div>
    </div>
</div>
@endsection
@push('scripts')
<script>
    mapboxgl.accessToken = 'pk.eyJ1IjoiYnVkaW9kYW5rIiwiYSI6ImNrMGRyM2RuYTA2ZG0zbWsxdWx1cjhxMG0ifQ.4lvzq1eA8Kp8Pg7w5lAFRg';

    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v11',
        center: [-74.5, 40], // Starting position [lng, lat]
        zoom: 6 // Starting zoom level
    });

    const geojson = {
        'type': 'FeatureCollection',
        'features': [{
                'type': 'Feature',
                'geometry': {
                    'type': 'Point',
                    'coordinates': [-77.032, 38.913]
                },
                'properties': {
                    'title': 'Device 1',
                    'description': 'Washington, D.C.'
                }
            },
            {
                'type': 'Feature',
                'geometry': {
                    'type': 'Point',
                    'coordinates': [-122.414, 37.776]
                },
                'properties': {
                    'title': 'Device 2',
                    'description': 'San Francisco, California'
                }
            }
        ]
    };

    // add markers to map
    for (const feature of geojson.features) {
        // create a HTML element for each feature
        const el = document.createElement('div');
        el.className = 'marker';

        // make a marker for each feature and add it to the map
        new mapboxgl.Marker(el)
            .setLngLat(feature.geometry.coordinates)
            .setPopup(
                new mapboxgl.Popup({
                    offset: 25
                }) // add popups
                .setHTML(
                    `<h5>${feature.properties.title}</h5><p>${feature.properties.description}</p>`
                )
            )
            .addTo(map);
    }
</script>
@endpush