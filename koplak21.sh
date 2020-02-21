#!/bin/sh

sandi="1234"
while [ "$masukan" != "$sandi" ]
do
     read -p "Masukan sandi anda : " masukan
done

echo "Selamat Datang"
echo "Silahkan pilih kebutuhan anda"
echo "__________________________________"
echo "(1)Install Python"
echo "(2)Install Git"
echo "(3)Install Clang"
echo "(4)Exit"
echo "__________________________________"
read -p "Masukan pilihan anda disini :" pilih
if [ $pilih = "1" ]
then
    echo "Installing Python ..."
    cd $HOME
    apt update && apt upgrade
    apt install python
    echo "Penginstallan selesai"
elif [ $pilih = "2" ]
then
    echo "Installing Git"
    cd $HOME
    apt install git
    echo "Penginstallan selesai"
elif [ $pilih = "3" ]
then
    echo "Installing Clang"
    cd $HOME
    apt install clang
    echo "Penginstallan selesai"
elif [ $pilih = "4" ]
then
    echo "Exit"
    echo "Terimakasih sudah mampir^_^"
    echo "___________________________"
    sleep 1
fi