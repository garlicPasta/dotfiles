xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

case $WM in
vb)
    VirtualBox -startvm "Windows10" -fullscreen
    ;;
i3)
    sh ~/.fehbg &
    exec i3
    ;;
*)
    sh ~/.fehbg &
    exec i3
    ;;
esac
