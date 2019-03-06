import i3ipc
from subprocess import call
import subprocess

windows = {}
default = "us"


def get_win_id(i3):
    focused = i3.get_tree().find_focused()
    ws_name = focused.id
    print(ws_name, focused)
    return ws_name


def get_cur():

    curlay = subprocess.Popen("xkb-switch",stdout=subprocess.PIPE).stdout.read()[:-1]
    return curlay.decode("utf-8")

def on_focus(i3,e):
    name = get_win_id(i3)
    lay = windows.get(name,default)
    curlay = get_cur()
    print("cur=",curlay,"desired=",lay)

    while curlay != lay:
        print("switching")
        print("cur=",curlay,"desired=",lay)
        call(["xkb-switch","-n"])
        curlay = get_cur()
    

def test(i3,e):
    if e.binding.command == "nop" and e.binding.symbol == "space":
        call(["xkb-switch","-n"])
        windows[get_win_id(i3)] = get_cur()

i3 = i3ipc.Connection()

i3.on("window::focus",on_focus)
i3.on("binding::run",test)

i3.main()
