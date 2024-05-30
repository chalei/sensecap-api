@extends('layouts.app')
@section('title', 'All Vehicle')

@section('content')
<div class="pd-20 card-box mb-30">
    <div class="clearfix mb-20">
        <div class="pull-left">
            <h4 class="h4">All Vehicle</h4>
        </div>
    </div>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">License Plate</th>
                <th scope="col">Owner Name</th>
                <th scope="col">STNK Date</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">1</th>
                <td>A 5512 BYQ</td>
                <td>Dede Rohmat</td>
                <td>2021-10-09</td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>B 1145 ZA</td>
                <td>Freddy Budiman</td>
                <td>2023-11-09</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>B 5677 MN</td>
                <td>Koesnadi</td>
                <td>2022-11-21</td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td>B 6678 QBA</td>
                <td>Alonso</td>
                <td>2022-02-11</td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td>B 4555 RQQ</td>
                <td>Joko Sudirso</td>
                <td>2023-07-01</td>
            </tr>
            <tr>
                <th scope="row">6</th>
                <td>L 555 XUS</td>
                <td>Che Le</td>
                <td>2024-01-11</td>
            </tr>
            <tr>
                <th scope="row">7</th>
                <td>KT 1433 RW</td>
                <td>Martin Joe</td>
                <td>2022-05-30</td>
            </tr>
            <tr>
                <th scope="row">8</th>
                <td>R 6565 SQ</td>
                <td>Kasdi</td>
                <td>2021-11-30</td>
            </tr>
            <tr>
                <th scope="row">9</th>
                <td>A 44 Q</td>
                <td>Alex Firli</td>
                <td>2020-06-15</td>
            </tr>
            <tr>
                <th scope="row">10</th>
                <td>B 9888 RT</td>
                <td>Renita Kusuma</td>
                <td>2021-02-02</td>
            </tr>
        </tbody>
    </table>
</div>
@endsection