<%@ include file="cekSession.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Form Pegawai</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body class="bg-dark text-light font-weight-bold">
        <header>
          <div class="jumbotron text-center bg-danger">
          <p class="text-right"><a href="logout.jsp" class="text-light text-right"><i class='fas fa-sign-out-alt'></i> Logout</a></p>
            <div class="container">
              <div class="row">
                <div class="col">
                    <h1><p class="text-light">Website Mengisi Form Pegawai</p></h1>
                    <p class="text-light">Selamat Datang <u><% out.println(username); %></u></p>
                </div>
              </div>
            </div>
          </div>
        </header>
    </div>

    <div class="container">
        <h2>Form Data Dosen</h2>
        <form method="post" action="proses.jsp">
            <div class="form-group">
                <label>NIDN :</label>
                <input type="text" name="nidn" class="form-control" placeholder="Masukkan NIDN" required/>
            </div>

            <div class="form-group">
                <label>Nama :</label>
                <input type="text" name="nama" class="form-control" placeholder="Nama Lengkap" required/>
            </div>

            <div class="form-group">
                <label>Tempat Lahir :</label>
                <input type="text" name="tmpLahir" class="form-control" placeholder="Makassar" required/>
            </div>

            <div class="form-group">
                <label>Tanggal Lahir :</label>
                <input type="date" name="tglLahir" class="form-control" required/>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Telepon :</label>
                <input type="tel" name="telepon" pattern="^\d{4}-\d{4}-\d{4}$" class="form-control col-lg-3" placeholder="xxxx-xxxx-xxxx" required/>
            </div>

            <div class="form-group">
                <label>Pendidikan Terakhir :</label>
                <select class="form-control" name="pendidikan">
                    <option>S2</option>
                    <option>S3</option>
                </select>
            </div>

            <div class="form-group">
                <label>Jenis Kelamin :</label>
                <div class="form-check">
                    <label class="form-check-label">
                        <input type="radio" name="gender" class="form-check-input" value="L">Pria
                    </label>
                </div>

                <div class="form-check">
                    <label class="form-check-label">
                        <input type="radio" name="gender" class="form-check-input" value="P">Wanita
                    </label>
                </div>
            </div>

            <!--Spesialisasi-->
            <div class="form-group">
                <label class="font-weight-bold">Spesialisasi :</label><br>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="checkbox" name="ahli1" class="form-check-input" value="Programming" id="skill[]">Programming
                        </label>
                    </div>
            
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="checkbox" name="ahli2" class="form-check-input" value="Networking" id="ahli">Networking
                        </label>
                    </div>
            
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="checkbox" name="ahli3" class="form-check-input" value="Database" id="ahli">Database
                        </label>
                    </div>

                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="checkbox" name="ahli4" class="form-check-input" value="Analyst" id="ahli">Analyst
                        </label>
                    </div>
            </div>

            <!--Username-->
            <div class="form-group">
                <label class="font-weight-bold">Username :</label>
                <div class="input-group-append">
                    <input type="email" class="form-control" name="email" placeholder="Masukkan Email" required/>
                    <span class="input-group-text">@example.com</span>
                </div>
            </div>

            <div class="form-group">
                <label>Password  :</label>
                <input type="password" name="passku" class="form-control" placeholder="********" required/>
            </div>

            <!--Golongan-->
            <div class="form-group">
                <label>Golongan :</label>
                <select class="form-control" name="golongan">
                    <option>3A</option>
                    <option>3B</option>
                    <option>3C</option>
                    <option>4A</option>
                    <option>4B</option>
                    <option>4C</option>
                </select>
            </div>

            <!--Pangkat-->
            <div class="form-group">
                <label>Pangkat :</label>
                <select class="form-control" name="pangkat">
                    <option>AA</option>
                    <option>L</option>
                    <option>LK</option>
                    <option>GB</option>
                </select>
            </div>

            <div class="form-group">
                <label>Pengalaman Kerja :</label>
                <textarea class="form-control" name="pengalaman" rows="5" placeholder="Pengalaman"></textarea>
            </div>


            <div class="form-group">
                <label>Gaji Pokok :</label>
                <input type="text" name="gajiPokok" class="form-control" placeholder="1000000" required/>
            </div>

            <button type="submit" class="btn btn-success"><i class='fas fa-download'></i> Submit</button>
            <button type="reset" class="btn btn-warning"><i class='fas fa-cut'></i> Reset</button>
        </form>
    </div>
    <hr color="yellow">

    <div id="dashboard" style="padding-top:30px;padding-bottom:0px">
        <footer>
          <div class="footer text-center bg-info">
            <div class="container">
              <div class="row">
                <div class="col">
                  <h1><p class="text-light">Terima Kasih Telah Mengisi Form Pegawai Ini</p></h1>
                  <div class="lead"><p class="text-warning font-weight-bold">Paramita Aditung</p></div>
                </div>
              </div>
            </div>
          </div>
    </footer>
    </div>
</body>

</html>