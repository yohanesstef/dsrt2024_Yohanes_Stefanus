v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Inverter CMOS
Yohanes Stefanus
5022211089
} -400 -280 0 0 0.4 0.4 {}
N 0 -90 0 -40 {
lab=output}
N -0 -120 90 -120 {
lab=#net1}
N 90 -190 90 -120 {
lab=#net1}
N -0 -190 -0 -150 {
lab=#net1}
N -0 -190 90 -190 {
lab=#net1}
N -0 -10 90 -10 {
lab=GND}
N 90 -10 90 10 {
lab=GND}
N 90 10 90 60 {
lab=GND}
N 0 60 90 60 {
lab=GND}
N 0 20 -0 60 {
lab=GND}
N -100 -120 -40 -120 {
lab=input}
N -100 -60 -100 -10 {
lab=input}
N -100 -10 -40 -10 {
lab=input}
N -100 -120 -100 -60 {
lab=input}
N -180 -60 -100 -60 {
lab=input}
N -400 -190 -400 -90 {
lab=#net1}
N -400 -190 -10 -190 {
lab=#net1}
N -10 -190 -0 -190 {
lab=#net1}
N -400 -30 -400 60 {
lab=GND}
N -400 60 0 60 {
lab=GND}
N 0 -60 40 -60 {
lab=output}
N -180 -60 -180 -30 {
lab=input}
N -180 30 -180 60 {
lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -20 -120 0 0 {name=M1
L=0.15
W=2.67
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 -10 0 0 {name=M2
L=0.15
W=0.89
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -400 -60 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -180 0 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -180 60 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -180 -30 0 0 {name=p1 sig_type=std_logic lab=input
}
C {devices/lab_pin.sym} 0 -70 2 0 {name=p2 sig_type=std_logic lab=output

}
C {sky130_fd_pr/corner.sym} -350 120 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} -200 120 0 0 {name=spice only_toplevel=false value=
"
.option wnflag=0
.option savecurrents
.control
dc v2 0 1.8 0.01
plot input output
op 
.endc
"}
