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
                        <div class="weight-700 font-24 text-dark">Thursday</div>
                        <div class="font-14 text-secondary weight-500">
                            30 May 2024
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
                        <div class="weight-700 font-24 text-dark">10</div>
                        <div class="font-14 text-secondary weight-500">
                            Device
                        </div>
                    </div>
                    <div class="widget-icon">
                        <div class="icon" data-color="#ff5b5b">
                            <span class="icon-copy bi bi-device-ssd"></span>
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
                            <i class="icon-copy bi bi-clock-history" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-3 col-md-6 mb-20">
            <div class="card-box height-100-p widget-style3">
                <div class="d-flex flex-wrap">
                    <div class="widget-data">
                        <div class="weight-700 font-24 text-dark">2800</div>
                        <div class="font-14 text-secondary weight-500">Data Receive</div>
                    </div>
                    <div class="widget-icon">
                        <div class="icon" data-color="#09cc06">
                            <i class="icon-copy bi bi-activity" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card-box pb-10 mb-30">
        <div class="h5 pd-20">Recent Location</div>
        <div id="map"></div>
    </div>

    <div class="row pb-10">
        <div class="col-xl-8 mb-30">
            <div class="card-box height-100-p pd-20">
                <h2 class="h4 mb-20">Highest Vehicle Scan</h2>
                <div id="chart5"></div>
            </div>
        </div>

        <div class="col-xl-4 mb-30">
            <div class="card-box height-100-p pd-20">
                <h2 class="h4 mb-20">Total Vehicle Scan</h2>
                <div id="chart6"></div>
            </div>
        </div>
    </div>
</div>
@endsection
@push('scripts')
<script src="/assets/src/plugins/apexcharts/apexcharts.min.js"></script>
<script>
    $(document).ready(function() {
        getDataLocation()
        //chart highest vehicle scan
        var chart5 = new ApexCharts(document.querySelector("#chart5"), options5);
        chart5.render();
        //chart total scan
        var chart6 = new ApexCharts(document.querySelector("#chart6"), options6);
        chart6.render();
    });
    mapboxgl.accessToken = 'pk.eyJ1IjoiYnVkaW9kYW5rIiwiYSI6ImNrMGRyM2RuYTA2ZG0zbWsxdWx1cjhxMG0ifQ.4lvzq1eA8Kp8Pg7w5lAFRg';

    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v11',
        center: [106.95, -6.76], // Starting position [lng, lat]
        zoom: 7 // Starting zoom level
    });

    var options5 = {
        chart: {
            height: 350,
            type: 'bar',
            parentHeightOffset: 0,
            fontFamily: 'Poppins, sans-serif',
            toolbar: {
                show: false,
            },
        },
        colors: ['#1b00ff'],
        grid: {
            borderColor: '#c7d2dd',
            strokeDashArray: 5,
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: '25%',
                endingShape: 'rounded'
            },
        },
        dataLabels: {
            enabled: false
        },
        stroke: {
            show: true,
            width: 2,
            colors: ['transparent']
        },
        series: [{
            name: 'Total',
            data: [189, 133, 102, 87, 71, 11]
        }],
        xaxis: {
            categories: ['Jakarta Pusat', 'Jakarta Selatan', 'Jakarta Barat', 'Kota Bekasi', 'Kota Tangerang', 'Kota Bogor'],
            labels: {
                style: {
                    colors: ['#353535'],
                    fontSize: '16px',
                },
            },
            axisBorder: {
                color: '#8fa6bc',
            }
        },
        yaxis: {
            title: {
                text: ''
            },
            labels: {
                style: {
                    colors: '#353535',
                    fontSize: '16px',
                },
            },
            axisBorder: {
                color: '#f00',
            }
        },
        legend: {
            horizontalAlign: 'right',
            position: 'top',
            fontSize: '16px',
            offsetY: 0,
            labels: {
                colors: '#353535',
            },
            markers: {
                width: 10,
                height: 10,
                radius: 15,
            },
            itemMargin: {
                vertical: 0
            },
        },
        fill: {
            opacity: 1

        },
        tooltip: {
            style: {
                fontSize: '15px',
                fontFamily: 'Poppins, sans-serif',
            },
            y: {
                formatter: function(val) {
                    return val
                }
            }
        }
    }

    var options6 = {
        series: [100],
        chart: {
            height: 350,
            type: 'radialBar',
            offsetY: 0
        },
        colors: ['#0B132B', '#222222'],
        plotOptions: {
            radialBar: {
                startAngle: -135,
                endAngle: 135,
                dataLabels: {
                    name: {
                        fontSize: '16px',
                        color: undefined,
                        offsetY: 120
                    },
                    value: {
                        offsetY: 76,
                        fontSize: '22px',
                        color: undefined,
                        formatter: function(val) {
                            return val + "%";
                        }
                    }
                }
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                shadeIntensity: 0.15,
                inverseColors: false,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 50, 65, 91]
            },
        },
        stroke: {
            dashArray: 4
        },
        labels: ['From 2800 Scan'],
    };

    let geoJSON = [];

    function getDataLocation() {
        // const data = {
        //     device_eui: '2CF7F1C0530003E4'
        // }
        $.ajax({
            type: 'POST',
            url: `/apis/transaction/location/show-vehicle-location`,
            // data: JSON.stringify(data),
            dataType: 'JSON',
            contentType: "application/json; charset=utf-8",
            success: function(res) {
                $.each(res.result, function(index, item) {
                    let location = {
                        license_plate: item.vehicle.license_plate,
                        device_eui: item.vehicle.node_eui,
                        owner_name: item.vehicle.owner_name,
                        coordinates: [item.longitude, item.latitude],
                        create_time: item.created_tm,
                        online_status: 'Offline'
                    }
                    geoJSON.push(location)
                })
                setMarkerMap()
            },
            error: function(xhr, status, error) {
                errorMessage(xhr, status, error)
            }
        });
    }

    function setMarkerMap() {
        // add markers to map
        for (const feature of geoJSON) {
            // create a HTML element for each feature
            const el = document.createElement('div');
            el.className = 'marker';

            // make a marker for each feature and add it to the map
            new mapboxgl.Marker(el)
                .setLngLat(feature.coordinates)
                .setPopup(
                    new mapboxgl.Popup({
                        offset: 25
                    }) // add popups
                    .setHTML(
                        `<h5>${feature.license_plate}</h5>
                        <p>${feature.owner_name}</p>
                        <p>${feature.device_eui}</p>
                        <p>${feature.online_status}</p>
                        <p>${feature.create_time}</p>`
                    )
                )
                .addTo(map);
        }
    }
</script>
@endpush