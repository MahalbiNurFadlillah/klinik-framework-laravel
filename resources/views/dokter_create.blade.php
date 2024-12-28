@extends('layouts.sbadmin2')

@section('content')
    <div class="card">
        <div class="card-header">TAMBAH DOKTER</div>
        <div class="card-body">
            <form action="/dokter" method="POST" enctype="multipart/form-data">
                @method('POST')
                @csrf
                <div class="form-group mt-1">
                    <label for="nama_dokter">Nama Dokter</label>
                    <input class="form-control" type="text" name="nama_dokter" value="{{ old('nama_dokter') }}" autofocus>
                    <span class="text-danger">{{ $errors->first('nama_dokter') }}</span>
                </div>
                <div class="form-group mt-3">
                    <label for="foto">Foto Dokter</label>
                    <input class="form-control" type="file" name="foto" value="{{ old('foto') }}">
                    <span class="text-danger">{{ $errors->first('foto') }}</span>
                </div>
                <div class="form-group mt-3">
                    <label for="spesialis">Spesialis</label>
                    <select name="spesialis" class="form-control">
                        <option value="mata" @selected(old('spesialis') == 'mata')> Spesialis Mata</option>
                        <option value="tht" @selected(old('spesialis') == 'tht')> Spesialis THT</option>
                        <option value="jantung" @selected(old('spesialis') == 'jantung')> Spesialis Jantung</option>
                        <option value="paru" @selected(old('spesialis') == 'paru')> Spesialis Paru</option>
                        <option value="Gigi" @selected(old('spesialis') == 'Gigi')> Spesialis Gigi</option>
                        <option value="umum" @selected(old('spesialis') == 'umum')>Spesialis Umum</option>
                        <option value="anak" @selected(old('spesialis') == 'anak')>Spesialis Anak</option>
                        <option value="penyakit_dalam" @selected(old('spesialis') == 'penyakit_dalam')>Spesialis Penyakit Dalam</option>
                        <option value="bedah_orthopedi" @selected(old('spesialis') == 'bedah_orthopedi')>Spesialis Bedah Orthopedi</option>
                        <option value="kulit" @selected(old('spesialis') == 'kulit')>Spesialis Kulit</option>
                        <option value="gizi" @selected(old('spesialis') == 'gizi')>Spesialis Gizi</option>
                        <option value="saraf" @selected(old('spesialis') == 'saraf')>Spesialis Saraf</option>
                        <option value="radiologi" @selected(old('spesialis') == 'radiologi')>Spesialis Radiologi</option>
                        <option value="psikiater" @selected(old('spesialis') == 'psikiater')>Spesialis Psikiater</option>
                        <option value="ginjal" @selected(old('spesialis') == 'ginjal')>Spesialis Ginjal</option>
                    </select>
                    <span class="text-danger">{{ $errors->first('spesialis') }}</span>
                </div>
                <div class="form-group mt-3">
                    <label for="nomor_hp">Nomor HP</label>
                    <input class="form-control" type="text" name="nomor_hp" value="{{ old('nomor_hp') }}">
                    <span class="text-danger">{{ $errors->first('nomor_hp') }}</span>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group mt-3">
                            <label for="twitter">Akun Twitter</label>
                            <input class="form-control" type="text" name="twitter"
                                value="{{ old('twitter') !== null ? old('twitter') : '#' }}">
                            <span class="text-danger">{{ $errors->first('twitter') }}</span>
                        </div>
                        <div class="form-group mt-3">
                            <label for="facebook">Akun Facebook</label>
                            <input class="form-control" type="text" name="facebook"
                                value="{{ old('facebook') !== null ? old('facebook') : '#' }}">
                            <span class="text-danger">{{ $errors->first('facebook') }}</span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group mt-3">
                            <label for="instagram">Akun Instagram</label>
                            <input class="form-control" type="text" name="instagram"
                                value="{{ old('instagram') !== null ? old('instagram') : '#' }}">
                            <span class="text-danger">{{ $errors->first('instagram') }}</span>
                        </div>
                        <div class="form-group mt-3">
                            <label for="tiktok">Akun Tiktok</label>
                            <input class="form-control" type="text" name="tiktok"
                                value="{{ old('tiktok') !== null ? old('tiktok') : '#' }}">
                            <span class="text-danger">{{ $errors->first('tiktok') }}</span>
                        </div>
                    </div>
                </div>

                <div class="form-group mt-3">
                    <label for="password">Password</label>
                    <input class="form-control" type="text" name="password" value="{{ old('password') }}">
                    <span class="text-danger">{{ $errors->first('password') }}</span>
                </div>
                <div class="form-group mt-2">
                    <button type="submit" class="btn btn-primary">SIMPAN</button>
                </div>
            </form>
        </div>
    </div>
@endsection
