function myfunc, x

print,'x in myfunc',x
integrand = (2./(sqrt(!pi)))*(exp(-(x^2)))
print,'exp((-x)^2)',exp(-(x^2))

return, integrand

end

pro fdf

;; eqn 6 in Zentner & Bullock 2003:
;; 1-d velocity dispersion of halo:

kms = 1.d5
Vmax=215. ;; in km/s
x=findgen(1000)/10.
term=(1.439*(x^0.354))/(1.+1.1756*(x^0.725))
sigma = Vmax*term
print,'median of sigma=',median(sigma)

m0=1.989d45
a=9.39186760d22
r=1.453012116d23

rho = (m0/(2.*!pi))*(a/(r*(r+a)^3D0))

print,'rho=',rho

; v of LMC:
vx=-81.0296761539
vy=-313.816028631
vz=204.350151223

v_LMC = sqrt(vx^2+vy^2+vz^2)

print,'v_LMC=',v_LMC

; v of Sgr:

vx = 228.20974909
vy = -21.5114930753
vz = 201.210785419

v_Sgr = sqrt(vx^2+vy^2+vz^2)

print,'v_Sgr=',v_Sgr

;; compare to Besla et al. 2007:
x_minus1Gyr=[0.51438E+02]
y_minus1Gyr=[0.26910E+03]
z_minus1Gyr=[-0.73283E+02]

;x_minus1Gyr=[0.76757E+02]
;;y_minus1Gyr=[0.37316E+03]                                                                                         
;z_minus1Gyr=[-0.14098E+03] 

r_minus1Gyr_LMC = sqrt(x_minus1Gyr^2+y_minus1Gyr^2+y_minus1Gyr^2)

print,'r_LMC at -1 Gyr=',r_minus1Gyr_LMC

;; Sgr:

x_minus1Gyr=[-0.51689E+02]
y_minus1Gyr=[-0.86144E+01]
z_minus1Gyr=[0.23257E+02]

r_minus1Gyr_Sgr = sqrt(x_minus1Gyr^2+y_minus1Gyr^2+y_minus1Gyr^2)

print,'r_Sgr at -1 Gyr=',r_minus1Gyr_Sgr

stop

end
