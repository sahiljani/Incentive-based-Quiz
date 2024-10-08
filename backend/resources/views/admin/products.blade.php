@extends('layout.master')

@push('plugin-styles')
<meta name="csrf-token" content="{{ csrf_token() }}" />

    <link href="{{ asset('assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css') }}" rel="stylesheet" />
@endpush

@section('content')
    <div class="d-flex justify-content-between align-items-center flex-wrap grid-margin">
        <div>
            <h4 class="mb-3 mb-md-0">Add Products</h4>
        </div>

    </div>
    <div class="row">
        <div class="col-md-6 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    @if (Session::has('message'))
                        <div class="alert alert-success">
                            <div>{{ Session::get('message') }}</div>
                        </div>
                    @endif


                    <h6 class="card-title"> Form</h6>
                    
                    <form action="{{ route('products.store') }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="row mb-3">
                            <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Product Name</label>
                            <div class="col-sm-9">
                                <input name="name" type="text" class="form-control"
                                    placeholder="Enter Product Name...">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Product Image</label>
                            <div class="col-sm-9">
                                <input name="image" type="file" class="form-control"
                                    placeholder="Upload Image...">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Product Description</label>
                            <div class="col-sm-9">                                                                    
                                    <textarea name="description" class="form-control" name="text" rows="5"></textarea>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Product Coins</label>
                            <div class="col-sm-9">
                                <input name="coins" type="number" class="form-control"
                                    placeholder="Enter Coins....">
                            </div>
                        </div>



                        <button type="submit" class="btn btn-primary me-2">Submit</button>

                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-9 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h6 class="card-title">Products List</h6>

                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Description</th>
                                    <th>Coins</th>
                                </tr>
                            </thead>
                            <tbody>
                              @foreach ($products as $item)
                              <tr id="data{{$item->id}}">
                                <th>1</th>
                                <td id="name">{{$item->name}}</td>                              
                                <td id="image"><img src="{{ asset("images/$item->image") }}" /></td>
                                <td id="description">{{$item->description}}</td>
                                <td id="coins">{{$item->coins}}</td>
                                <td>
                                    <div class="icons-list row product-icon-list">                                        
                                        <div class="editicon col-md-6 col-sm-12 bg-transparent justify-content-center"
                                        data-bs-toggle="modal"
                                        id="modalBTN"
                                        data-bs-target="#editmodal"
                                        onclick="EditData('{{$item->id}}')"
                                        >
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                        </svg>
                                    </div>
                                        <div
                                        onclick="DeleteData('{{route('products.deleted',[$item->id])}}')"
                                        class="editicon col-md-6  col-sm-12 bg-transparent justify-content-center "> <i
                                                data-feather="x"></i> </div>

                                    </div>
                                </td>
                            </tr>


                              @endforeach


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
 

    <div class="modal fade" id="editmodal" tabindex="-1" aria-labelledby="plusmodel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="editmodal">Edit Category</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="btn-close"></button>
            </div>
            <div class="modal-body">

            <form  action="{{ route('products.edited') }}" method="POST" id="editform" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="id" />                   
                    
                    <div class="row mb-3">
                        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Product Name</label>
                        <div class="col-sm-9">
                            <input name="name" type="text" class="form-control"
                                placeholder="Enter Product Name...">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <img id="displayimg">
                    </div>
                    <div class="row mb-3">
                        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Product Image</label>
                        <div class="col-sm-9">
                            <input name="image" type="file" class="form-control"
                                placeholder="Upload Image...">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Product Description</label>
                        <div class="col-sm-9">                                                                    
                                <textarea name="description" class="form-control" name="text" rows="5"></textarea>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Product Coins</label>
                        <div class="col-sm-9">
                            <input name="coins" type="number" class="form-control"
                                placeholder="Enter Coins....">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="submit"  class="btn btn-primary">Save changes</button>
            </form>
            </div>
          </div>
        </div>
      </div>





@endsection

@push('plugin-scripts')
    <script src="{{ asset('assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/apexcharts/apexcharts.min.js') }}"></script>
@endpush

@push('custom-scripts')
    <script src="{{ asset('assets/js/dashboard.js') }}"></script>
    <script src="{{ asset('assets/js/datepicker.js') }}"></script>

    <script>
        function EditData(id){
            const main = document.querySelector(`#data${id}`);

            const name = main.querySelector("#name").innerText;
            const image = main.querySelector("#image img").src;
            const description = main.querySelector("#description").innerText;
            const coins = main.querySelector("#coins").innerText;  
            
            const editname = document.querySelector('#editform').name;
            const editid = document.querySelector('#editform').id;
            const displayimg = document.querySelector('#displayimg');
            const editdescription = document.querySelector('#editform').description;
            const editcoins = document.querySelector('#editform').coins;
            editid.value = id;
            editname.value = name;
            displayimg.src = image;
            editdescription.value = description;
            editcoins.value = coins;            
            
        }
        function DeleteData(url){
            let text = "Press a button!\nEither OK or Cancel.";
            if (confirm(text) == true) {
                window.location = url;
            } 
            else {               
            }

        }
    </script>
     
@endpush
