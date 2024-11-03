<?php
namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class CompressImageController extends Controller
{

    public function compressImageToWebP($sourcePath, $outputPath, $quality = 80) {
        $imageInfo = getimagesize($sourcePath);
        $mimeType = $imageInfo['mime'];
    
        switch ($mimeType) {
            case 'image/jpeg':
                $image = imagecreatefromjpeg($sourcePath);
                break;
            case 'image/png':
                $image = imagecreatefrompng($sourcePath);
                // Cek apakah gambar PNG adalah paletted
                if (imageistruecolor($image) === false) {
                    // Konversi gambar paletted menjadi true color
                    $trueColorImage = imagecreatetruecolor(imagesx($image), imagesy($image));
                    imagecopy($trueColorImage, $image, 0, 0, 0, 0, imagesx($image), imagesy($image));
                    imagedestroy($image); // Hancurkan gambar paletted
                    $image = $trueColorImage; // Gunakan gambar true color
                }
                break;
            default:
                throw new Exception('Unsupported image type: ' . $mimeType);
        }
    
        // Mengkonversi gambar ke format WebP
        imagewebp($image, $outputPath, $quality);
        imagedestroy($image);
    
        return $outputPath;
    }

    public function runCompress(){
        // Directory tempat gambar berada
        $sourceDirectory = 'storage/images/';
        $outputDirectory = 'storage/images/webp/'; // Directory untuk menyimpan gambar WebP

        // Buat directory output jika belum ada
        if (!is_dir($outputDirectory)) {
            mkdir($outputDirectory, 0777, true);
        }

        // Baca semua file gambar di direktori
        $files = scandir($sourceDirectory);
        foreach ($files as $file) {
            // Cek apakah file adalah gambar dengan ekstensi yang valid
            if (preg_match('/\.(jpg|jpeg|png)$/i', $file)) {
                $sourcePath = $sourceDirectory . $file;
                $outputPath = $outputDirectory . pathinfo($file, PATHINFO_FILENAME) . '.webp'; // Ganti ekstensi menjadi .webp

                try {
                    $this->compressImageToWebP($sourcePath, $outputPath);
                    echo "Gambar berhasil dikompres: $outputPath\n";
                } catch (Exception $e) {
                    echo 'Error: ' . $e->getMessage() . "\n";
                }
            }
        }
    }
}
