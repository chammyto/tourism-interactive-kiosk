@extends('admin.template.app')

@section('content')
<div class="container-fluid mt--7">
  <!-- Table -->
  <div class="row">
    <div class="col">
      <div class="card shadow">
        <div class="card-header border-0">
          <h3 class="mb-0">Dashboard</h3>
        </div>
        <div class="row col-md-12">
          <div class="col-xl-3 col-md-6">
            <div class="card card-stats">
              <!-- Card body -->
              <div class="card-body">
                <div class="row">
                  <div class="col">
                    <h5 class="card-title text-uppercase text-muted mb-0">Monthly Visitors</h5>
                    <span class="h2 font-weight-bold mb-0">{{ $monthly_visitors}}</span>
                  </div>
                  <div class="col-auto">
                    <div class="icon icon-shape bg-success text-white rounded-circle shadow">
                      <i class="ni ni-single-02"></i>
                    </div>
                  </div>
                </div>
                <p class="mt-3 mb-0 text-sm">
                  <span class="text-nowrap">{{ date('F')}}</span>
                </p>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-md-6">
            <div class="card card-stats">
              <!-- Card body -->
              <div class="card-body">
                <div class="row">
                  <div class="col">
                    <h5 class="card-title text-uppercase text-muted mb-0">Total visitors</h5>
                    <span class="h2 font-weight-bold mb-0">{{ $total_visitors }}</span>
                  </div>
                  <div class="col-auto">
                    <div class="icon icon-shape bg-primary text-white rounded-circle shadow">
                      <i class="ni ni-single-02"></i>
                    </div>
                  </div>
                </div>
                <p class="mt-3 mb-0 text-sm">
                  <span class="text-nowrap">Since last month</span>
                </p>
              </div>
            </div>
          </div>


        </div>
        <div class="card-footer py-4">

        </div>
      </div>
    </div>
  </div>


</div>
@endsection