<%@ include file="cekSession.jsp" %>

<%

//date_default_timezone_set('Asia/Makassar');
//$tanggal = date("Y-m-d H:i:sa");

String nidn = request.getParameter("nidn");
String nama = request.getParameter("nama");
String tmpLahir = request.getParameter("tmpLahir");
String tglLahir = request.getParameter("tglLahir");
String telepon = request.getParameter("telepon");
String pendidikan = request.getParameter("pendidikan");
String gender = request.getParameter("gender");

String keahlian = "";
String ahli;

for(int i=1; i<=4; i++){
  ahli = request.getParameter("ahli" + i);
  if(ahli != null){
    keahlian += ahli + ", ";
  }
}

String email = request.getParameter("email");
String passku = request.getParameter("passku");
String golongan = request.getParameter("golongan");
String pangkat = request.getParameter("pangkat");
String pengalaman = request.getParameter("pengalaman");
String gaji = request.getParameter("gajiPokok");

int gajiPokok = Integer.parseInt(gaji);

int total_gaji = 0;

if(golongan.equals("3A") || golongan.equals("3B")){
  total_gaji = gajiPokok + 500000;
}
else if(golongan.equals("3C")){
  total_gaji = gajiPokok + 750000;
}
else if(golongan.equals("4A") || golongan.equals("4B")){
  total_gaji = gajiPokok + 1000000;
}
else if(golongan.equals("4C")){
  total_gaji = gajiPokok + 1500000;
}

if(pangkat.equals("AA")){
  total_gaji += 375000;
}
else if(pangkat.equals("L")){
  total_gaji += 750000;
}
else if(pangkat.equals("LK")){
  total_gaji += 1500000;
}
else if(pangkat.equals("GB")){
  total_gaji += 7500000;
}

%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hasil Inputan</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">
<div class="container" style="padding-top: 50px;">
  <div class="row">
    <div class="col-lg-12">
      <div class="card">
        <div class="card-header bg-success">
          <h3 class="text-light text-center">Hasil Inputan</h3>
        </div>

        <div class="card-body text-dark">
          <ul class="list-group list-group-flush">
            <li class="list-group-item"><b>NIDN :</b> <%=nidn%></li>
            <li class="list-group-item"><b>Nama :</b> <%=nama%></li>
            <li class="list-group-item"><b>Tempat Lahir :</b> <%=tmpLahir%></li>
            <li class="list-group-item"><b>Tanggal Lahir :</b> <%=tglLahir%></li>
            <li class="list-group-item"><b>Telepon :</b> <%=telepon%></li>
            <li class="list-group-item"><b>Pendidikan :</b> <%=pendidikan%></li>
            <li class="list-group-item"><b>Jenis Kelamin :</b> <%=gender%></li>
            <li class="list-group-item"><b>Keahlian :</b> <%=keahlian%></li>
            <li class="list-group-item"><b>Email :</b> <%=email%></li>
            <li class="list-group-item"><b>Password :</b> <%=passku%></li>
            <li class="list-group-item"><b>Golongan :</b> <%=golongan%></li>
            <li class="list-group-item"><b>Pangkat :</b> <%=pangkat%></li>
            <li class="list-group-item"><b>Pengalaman :</b> <%=pengalaman%></li>
            <li class="list-group-item"><b>Gaji Pokok :</b> <%=gajiPokok%></li>
            <li class="list-group-item"><b>Total Gaji :</b> <%=total_gaji%></li>            
          </ul>
        </div>

        <div class="card-footer text-center">
          <button type="button" class="btn btn-warning"><a href="input.jsp" class="text-dark">Back</a></button>
          <button type="button" class="btn btn-danger"><a href="logout.jsp" class="text-light">Logout</a></button>
        </div>
      </div>
    </div>
  </div>
</div>

</body>

</html>