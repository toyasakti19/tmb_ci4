<?php

namespace App\Controllers;

class Iframe extends BaseController
{
    public function index()
    {
        echo <<<HTML
        <!DOCTYPE html>
        <html>
        <head>
            <title>Halaman Load</title>
            <style>
                body, html {
                    margin: 0;
                    padding: 0;
                    height: 100%;
                    overflow: hidden;
                }
                iframe {
                    width: 100%;
                    height: 100%;
                    border: none;
                }
            </style>
        </head>
        <body>
            <iframe src="https://tmb.daihatsutajur.web.id/"></iframe>
        </body>
        </html>
        HTML;
    }
}
