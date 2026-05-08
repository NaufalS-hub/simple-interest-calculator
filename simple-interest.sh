#!/bin/bash
# Script ini digunakan untuk menghitung bunga sederhana (simple interest).
# Penulis: [Nama Kamu]
# Input:
# p = pokok pinjaman (principal)
# t = periode waktu dalam tahun (time)
# r = suku bunga tahunan (annual rate of interest)
# Output:
# bunga sederhana = p * t * r / 100

echo "--- Kalkulator Bunga Sederhana ---"

echo "Masukkan pokok pinjaman (principal):"
read p
echo "Masukkan suku bunga per tahun (rate of interest dalam %):"
read r
echo "Masukkan periode waktu dalam tahun (time period):"
read t

# Melakukan perhitungan
# Menggunakan 'bc' untuk hasil desimal yang akurat
s=$(echo "scale=2; $p * $t * $r / 100" | bc 2>/dev/null || echo $((p * t * r / 100)))

echo "----------------------------------"
echo "Total Bunga Sederhana adalah: $s"
