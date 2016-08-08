case $WM in
vb)
    VirtualBox -startvm "Windows10" -fullscreen
    ;;
i3)
    exec i3
    ;;
*)
    exec i3
    ;;
esac
