<?php

namespace App\Controllers;

use App\Models\Berita_model;
use App\Models\Client_model;
use App\Models\Galeri_model;
use App\Models\Konfigurasi_model;
use App\Models\Video_model;

class Utama extends BaseController
{
    // Homepage
    public function index()
    {
        $m_konfigurasi = new Konfigurasi_model();

        $m_berita      = new Berita_model();
        $berita        = $m_berita->home();

        $m_video       = new Video_model();
        $konfigurasi   = $m_konfigurasi->listing();
        $video         = $m_video->listing();

        $data = ['title'  => 'Video File',
            'description' => 'Video File ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => 'Video File ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'video'       => $video,
            'konfigurasi' => $konfigurasi,
            'content'     => 'video/index',
            'berita' => $berita,
        ];
        echo view('utama/index', $data);
    }
}
