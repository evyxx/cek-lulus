@extends('layouts.admin.app')

@section('title')
Admin
@endsection


@section('head')
<style>
    [v-cloak]>* {
        display: none;
    }

    [v-cloak]::before {
        content: "loading...";
    }
</style>
@endsection

@section('content')

<div id="app" v-cloak>
    <div class="row">
        <div class="col-12">
            <div class="card box-shadow-0 border-info">
                <div class="card-header card-head-inverse bg-secondary">
                    <h3 class="card-title text-center">LIST SISWA</h3>


                </div>
                <div class="card-content collpase show">
                    <br>
                    <a href="" @click.prevent="deleteRecordAll()" class="btn btn-social btn-min-width mr-1 mb-1 btn-danger pull-right" class="float-sm-left">
                        <span class="fa fa-trash"></span> Delete All &nbsp; </a>

                    <a href="/student/upload" class="btn btn-social btn-min-width mr-1 mb-1 btn-secondary pull-right" class="float-sm-left">
                        <span class="fa fa-plus"></span> Upload Siswa &nbsp; </a>



                    <br>
                    <br>


                    <div class="card-body card-dashboard">
                        <div class="table-responsive">
                        <table id="example" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr class="bg-success text-white" style="font-size: 14px;">
                                    <th>Nama</th>
                                    <th>Kelas</th>
                                    <th>NISN</th>
                                    <th>NIS</th>
                                    <th>Program Keahlian</th>
                                    <th>Kompetensi Keahlian</th>
                                    <th>PAI</th>
                                    <th>PPKn</th>
                                    <th>Bahasa Indonesia</th>
                                    <th>PJOK</th>
                                    <th>Sejarah</th>
                                    <th>Seni</th>
                                    <th>Bahasa Sunda</th>
                                    <th>Matematika</th>
                                    <th>Bahasa Inggris</th>
                                    <th>Informatika</th>
                                    <th>IPAS</th>
                                    <th>DK</th>
                                    <th>KK</th>
                                    <th>Bahasa Jepang</th>
                                    <th>DG</th>
                                    <th>Rata-rata</th>    
                                    <th>Status </th>
                                    <th>Pesan</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>


                                <tr style="font-size: 14px;" v-for="st in student">

                                    <td>@{{ st.name }}</td>
                                    <td>@{{ st.class }}</td>
                                    <td>@{{ st.nisn }}</td>
                                    <td>@{{ st.nis }}</td>
                                    <td>@{{ st.prog_keahlian }}</td>
                                    <td>@{{ st.komp_keahlian }}</td>
                                    <td>@{{ st.pai }}</td>
                                    <td>@{{ st.pkn }}</td>
                                    <td>@{{ st.bindo }}</td>
                                    <td>@{{ st.pjok }}</td>
                                    <td>@{{ st.seni }}</td>
                                    <td>@{{ st.bsun }}</td>
                                    <td>@{{ st.mat }}</td>
                                    <td>@{{ st.bing }}</td>
                                    <td>@{{ st.inf }}</td>
                                    <td>@{{ st.ipas }}</td>
                                    <td>@{{ st.dk }}</td>
                                    <td>@{{ st.kk }}</td>
                                    <td>@{{ st.pkl }}</td>
                                    <td>@{{ st.bjep }}</td>
                                    <td>@{{ st.dg }}</td>
                                    <td>@{{ st.rata_rata }}</td>
                                    <td v-if="st.status == 1">
                                        <span class="badge bg-success">
                                            LULUS
                                        </span>
                                    </td>

                                    <td v-if="st.status == 2">
                                        <span class="badge bg-danger">
                                            DITUNDA
                                        </span>
                                    </td>

                                    <td>@{{ st.message }}</td>
                                    <td><a class="btn btn-danger" href="" @click.prevent="deleteRecord(st.id)"><i class="fa fa-trash"></i></a>
                                        <a class="btn btn-warning" href="/student/edit/@{{ st.id }}"><i class="fa fa-edit"></i></a>
                                        <a class="btn btn-info" href="/student/view/@{{ st.id }}"><i class="fa fa-eye"></i></a>
                                    </td>

                                </tr>


                            </tbody>

                        </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@section('pagescript')
<script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>

<script>
    new Vue({
        el: '#app',
        data: {
            student: JSON.parse(String.raw `{!! json_encode($student) !!}`),
        },
        methods: {

            deleteRecord: function(id) {
                Swal.fire({
                    title: 'Are you sure?',
                    text: "The data will be deleted",
                    icon: 'warning',
                    reverseButtons: true,
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Delete',
                    cancelButtonText: 'Cancel',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return axios.delete('/student/' + id)
                            .then(function(response) {
                                console.log(response.data);
                            })
                            .catch(function(error) {
                                console.log(error.data);
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Oops',
                                    text: 'Something wrong',
                                })
                            });
                    },
                    allowOutsideClick: () => !Swal.isLoading()
                }).then((result) => {
                    if (result.isConfirmed) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: 'Data has been deleted',
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.reload();
                            }
                        })
                    }
                })
            },

            deleteRecordAll: function() {
                Swal.fire({
                    title: 'Are you sure?',
                    text: "The data will be deleted",
                    icon: 'warning',
                    reverseButtons: true,
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Delete',
                    cancelButtonText: 'Cancel',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return axios.delete('/hapus_siswa')
                            .then(function(response) {
                                console.log(response.data);
                            })
                            .catch(function(error) {
                                console.log(error.data);
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Oops',
                                    text: 'Something wrong',
                                })
                            });
                    },
                    allowOutsideClick: () => !Swal.isLoading()
                }).then((result) => {
                    if (result.isConfirmed) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: 'Data has been deleted',
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.reload();
                            }
                        })
                    }
                })
            },


        }
    })
</script>



@endsection