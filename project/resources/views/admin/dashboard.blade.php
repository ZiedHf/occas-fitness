@extends('admin.includes.master-admin')

@section('content')

<div id="page-wrapper">
    <div class="container-fluid">
        <!-- Page Heading -->
        <h3>Admin Dashboard! </h3>

        <div class="row" id="main" >
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-shopping-cart fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{ \App\Product::count() }}</div>
                                <p class="titles">Total Products!</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('admin/products')}}"><span class="pull-left">View All</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-usd fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{ \App\Order::where('payment_status','Completed')->where('status','pending')->count() }}</div>
                                <p class="titles">Orders Pending!</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('admin/orders')}}"><span class="pull-left">View All</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-truck fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{ \App\Order::where('payment_status','Completed')->where('status','processing')->count() }}</div>
                                <p class="titles">Orders Processing!</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('admin/orders')}}"><span class="pull-left">View All</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-check fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{ \App\Order::where('payment_status','Completed')->where('status','completed')->count() }}</div>
                                <p class="titles">Orders Completed!</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('admin/orders')}}"><span class="pull-left">View All</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-bank fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{ \App\Withdraw::where('status','pending')->count() }}</div>
                                <p class="titles">Pending Withdraws!</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('admin/withdraws/pending')}}"><span class="pull-left">View All</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-user fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{ \App\UserProfile::count() }}</div>
                                <p class="titles">Total Customers!</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('admin/customers')}}"><span class="pull-left">View All</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-bell fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{ \App\Vendors::where('status',0)->count() }}</div>
                                <p class="titles">Vendors Pending!</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('admin/vendors/pending')}}"><span class="pull-left">View All</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>

            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-group fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{ \App\Vendors::count() }}</div>
                                <p class="titles">Total Vendors!</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('admin/vendors')}}"><span class="pull-left">View All</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>

            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-at fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{ \App\Subscribers::count() }}</div>
                                <p class="titles">Total Subscribers!</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('admin/subscribers')}}"><span class="pull-left">View All</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>

            <div class="col-md-12" style="padding: 0">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading"><strong>Top Referrals</strong></div>
                        <div class="panel-body">
                            <table class="table" style="margin-bottom: 0">
                                <tbody>
                                @foreach($referrals as $referral)
                                <tr>
                                    <td>{{$referral->referral}}</td>
                                    <td>{{$referral->total_count}}</td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading"><strong>Most Used Browser</strong></div>
                        <div class="panel-body">
                            <table class="table" style="margin-bottom: 0">
                                <tbody>
                                @foreach($browsers as $browser)
                                    <tr>
                                        <td>{{$browser->referral}}</td>
                                        <td>{{$browser->total_count}}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12" style="padding: 0">
                <canvas id="lineChart" style="width: 100%"></canvas>
            </div>

        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

@stop

@section('footer')
    <script language="JavaScript">
        displayLineChart();
        function displayLineChart() {
            var data = {
                labels: [
                    {!! $days !!}
                ],
                datasets: [
                    {
                        label: "Prime and Fibonacci",
                        fillColor: "#3dbcff",
                        strokeColor: "#0099ff",
                        pointColor: "rgba(220,220,220,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(220,220,220,1)",
                        data: [
                            {!! $sales !!}
                        ]
                    }
                ]
            };
            var ctx = document.getElementById("lineChart").getContext("2d");
            var options = {
                responsive: true
            };
            var lineChart = new Chart(ctx).Line(data, options);
        }
        </script>
@stop