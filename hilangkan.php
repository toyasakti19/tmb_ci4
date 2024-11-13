<?php
$servername = "localhost";
$database = "javawebmedia_webci4";
$username = "root";
$password = "";

$db = mysqli_connect($servername, $username, $password, $database);
// mengecek koneksi
if (!$db) {
    die("Koneksi gagal: " . mysqli_connect_error());
}

// Query untuk mengambil data video
$data = mysqli_query($db, "SELECT * FROM video ORDER BY id_video DESC LIMIT 6");

// Query untuk mengambil berita
$Qnews = mysqli_query($db, "SELECT * FROM berita ORDER BY id_berita DESC LIMIT 3");

// Tutup koneksi
mysqli_close($db);
?>



							<?php foreach($data as $data){ ?>
							<li class="grid-item">
								<div class="list_inner">

									<div class="image">

										<img src="<?php echo 'http://img.youtube.com/vi/'.$data['video'].'/0.jpg'; ?>" alt="" />

										<div class="main" data-img-url="<?php echo 'http://img.youtube.com/vi/'.$data['video'].'/0.jpg'; ?>"></div>

									</div>

									<div class="details">

										<span class="category"><?php echo substr($data['judul'],0,30); ?>...</span>

										<h3 class="title">@teknikmesindanbiosistemipb539</h3>

										<img class="svg" src="img/svg/vector5.svg" alt="" />

									</div>

									<a class="tonni_tm_full_link popup-youtube" href="https://www.youtube.com/watch?v=<?php echo $data['video']; ?>"></a>

								</div>
							</li>
<?php } ?>






							<div class="news_list">

								<ul>
									<?php foreach($Qnews as $news){ ?>
									<li class="wow fadeInUp" data-wow-duration="1s">
										<div class="list_inner">
											<div class="image">
											    
												<img src="https://baguspasta.com/page/assets/upload/image/<?php echo $news['gambar']; ?>" alt="" />
												<div class="main" data-img-url="https://baguspasta.com/page/assets/upload/image/<?php echo $news['gambar']; ?>"></div>
												<a class="tonni_tm_full_link" href="#"></a>
											</div>

											<div class="details">
												<span class="date"><?php $date=date_create($news['tanggal_publish']);
												echo date_format($date,"D, d-M-Y"); ?></span>
												<h3 class="title"><a href="#"><?php echo substr($news['judul_berita'],0,40); ?>...</a></h3>
											</div>											

											
											<div class="news_hidden_details">
												<div class="news_popup_informations">
													<div class="text">
														<?php echo $news['isi']; ?>
													</div>
												</div>
											</div>
																			
										</div>
									</li>									
									<?php } ?>	

									</li>
								</ul>
							</div>