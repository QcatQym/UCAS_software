import os
she='"HistCite _1_.exe" '
cc=input()
if os.path.isdir(cc):
	file=os.listdir(cc)
	for fil in file:
		filad=os.path.join(cc,fil)
		with open(filad,'r',encoding='utf-8') as d:
			fir=d.readlines()
			print(fir[0][3:7])
		if  not fir[0][3:7]=='Thom':
			print(6)
			os.remove(filad)
			with open(filad,'w',encoding='utf-8') as dd:
				dd.write('FN Thomson Reuters Web of Knowledge\n')
				dd.writelines(fir[1:len(fir)+1])
		she+=(filad+' ')

os.system(she)