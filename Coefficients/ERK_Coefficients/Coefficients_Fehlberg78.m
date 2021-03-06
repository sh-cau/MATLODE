function [ erkMethod, erkELO, erkS, erkName ] = Coefficients_Fehlberg78( RK8 )

    global rkA rkB rkC rkE

    erkMethod = RK8;
    erkELO = 8.0;
    erkS = 13;
    erkName = 'Fehlberg78';

	rkA(1,1)  = 0.0;
	rkA(1,2)  = 0.0;
	rkA(1,3)  = 0.0;
	rkA(1,4)  = 0.0;
	rkA(1,5)  = 0.0;
	rkA(1,6)  = 0.0;
	rkA(1,7)  = 0.0;
	rkA(1,8)  = 0.0;
	rkA(1,9)  = 0.0;
	rkA(1,10) = 0.0;
	rkA(1,11) = 0.0;
	rkA(1,12) = 0.0;
	rkA(1,13) = 0.0;
	
	rkA(2,1)  = 2.0/27.0;
	rkA(2,2)  = 0.0;
	rkA(2,3)  = 0.0;
	rkA(2,4)  = 0.0;
	rkA(2,5)  = 0.0;
	rkA(2,6)  = 0.0;
	rkA(2,7)  = 0.0;
	rkA(2,8)  = 0.0;
	rkA(2,9)  = 0.0;
	rkA(2,10) = 0.0;
	rkA(2,11) = 0.0;
	rkA(2,12) = 0.0;
	rkA(2,13) = 0.0;	

	rkA(3,1)  = 1.0/36.0;
	rkA(3,2)  = 1.0/12.0;
	rkA(3,3)  = 0.0;
	rkA(3,4)  = 0.0;
	rkA(3,5)  = 0.0;
	rkA(3,6)  = 0.0;
	rkA(3,7)  = 0.0;
	rkA(3,8)  = 0.0;
	rkA(3,9)  = 0.0;
	rkA(3,10) = 0.0;
	rkA(3,11) = 0.0;
	rkA(3,12) = 0.0;
	rkA(3,13) = 0.0;

	rkA(4,1)  = 1.0/24.0;
	rkA(4,2)  = 0.0;
	rkA(4,3)  = 1.0/8.0;
	rkA(4,4)  = 0.0;
	rkA(4,5)  = 0.0;
	rkA(4,6)  = 0.0;
	rkA(4,7)  = 0.0;
	rkA(4,8)  = 0.0;
	rkA(4,9)  = 0.0;
	rkA(4,10) = 0.0;
	rkA(4,11) = 0.0;
	rkA(4,12) = 0.0;
	rkA(4,13) = 0.0;

	rkA(5,1)  = 5.0/12.0;
	rkA(5,2)  = 0.0;
	rkA(5,3)  = -25.0/16.0;
	rkA(5,4)  = 25.0/16.0;
	rkA(5,5)  = 0.0;
	rkA(5,6)  = 0.0;
	rkA(5,7)  = 0.0;
	rkA(5,8)  = 0.0;
	rkA(5,9)  = 0.0;
	rkA(5,10) = 0.0;
	rkA(5,11) = 0.0;
	rkA(5,12) = 0.0;
	rkA(5,13) = 0.0;

	rkA(6,1)  = 1.0/20.0;
	rkA(6,2)  = 0.0;
	rkA(6,3)  = 0.0;
	rkA(6,4)  = 1.0/4.0;
	rkA(6,5)  = 1.0/5.0;
	rkA(6,6)  = 0.0;
	rkA(6,7)  = 0.0;
	rkA(6,8)  = 0.0;
	rkA(6,9)  = 0.0;
	rkA(6,10) = 0.0;
	rkA(6,11) = 0.0;
	rkA(6,12) = 0.0;
	rkA(6,13) = 0.0;

	rkA(7,1)  = -25.0/108.0;
	rkA(7,2)  = 0.0;
	rkA(7,3)  = 0.0;
	rkA(7,4)  = 125.0/108.0;
	rkA(7,5)  = -65.0/27.0;
	rkA(7,6)  = 125.0/54.0;
	rkA(7,7)  = 0.0;
	rkA(7,8)  = 0.0;
	rkA(7,9)  = 0.0;
	rkA(7,10) = 0.0;
	rkA(7,11) = 0.0;
	rkA(7,12) = 0.0;
	rkA(7,13) = 0.0;

	rkA(8,1)  = 31.0/300.0;
	rkA(8,2)  = 0.0;
	rkA(8,3)  = 0.0;
	rkA(8,4)  = 0.0;
	rkA(8,5)  = 61.0/225.0;
	rkA(8,6)  = -2.0/9.0;
	rkA(8,7)  = 13.0/900.0;
	rkA(8,8)  = 0.0;
	rkA(8,9)  = 0.0;
	rkA(8,10) = 0.0;
	rkA(8,11) = 0.0;
	rkA(8,12) = 0.0;
	rkA(8,13) = 0.0;

	rkA(9,1)  = 2.0;
	rkA(9,2)  = 0.0;
	rkA(9,3)  = 0.0;
	rkA(9,4)  = -53.0/6.0;
	rkA(9,5)  = 704.0/45.0;
	rkA(9,6)  = -107.0/9.0;
	rkA(9,7)  = 67.0/90.0;
	rkA(9,8)  = 3.0;
	rkA(9,9)  = 0.0;
	rkA(9,10) = 0.0;
	rkA(9,11) = 0.0;
	rkA(9,12) = 0.0;
	rkA(9,13) = 0.0;

	rkA(10,1)  = -91.0/108.0;
	rkA(10,2)  = 0.0;
	rkA(10,3)  = 0.0;
	rkA(10,4)  = 23.0/108.0;
	rkA(10,5)  = -976.0/135.0;
	rkA(10,6)  = 311.0/54.0;
	rkA(10,7)  = -19.0/60.0;
	rkA(10,8)  = 17.0/6.0;
	rkA(10,9)  = -1.0/12.0;
	rkA(10,10) = 0.0;
	rkA(10,11) = 0.0;
	rkA(10,12) = 0.0;
	rkA(10,13) = 0.0;

	rkA(11,1)  = 2383.0/4100.0;
	rkA(11,2)  = 0.0;
	rkA(11,3)  = 0.0;
	rkA(11,4)  = -341.0/164.0;
	rkA(11,5)  = 4496.0/1025.0;
	rkA(11,6)  = -301.0/82.0;
	rkA(11,7)  = 2133.0/4100.0;
	rkA(11,8)  = 45.0/82.0;
	rkA(11,9)  = 45.0/164.0;
	rkA(11,10) = 18.0/41.0;
	rkA(11,11) = 0.0;
	rkA(11,12) = 0.0;
	rkA(11,13) = 0.0;

	rkA(12,1)  = 3.0/205.0;
	rkA(12,2)  = 0.0;
	rkA(12,3)  = 0.0;
	rkA(12,4)  = 0.0;
	rkA(12,5)  = 0.0;
	rkA(12,6)  = -6.0/41.0;
	rkA(12,7)  = -3.0/205.0;
	rkA(12,8)  = -3.0/41.0;
	rkA(12,9)  = 3.0/41.0;
	rkA(12,10) = 6.0/41.0;
	rkA(12,11) = 0.0;
	rkA(12,12) = 0.0;
	rkA(12,13) = 0.0;

	rkA(13,1)  = -1777.0/4100.0;
	rkA(13,2)  = 0.0;
	rkA(13,3)  = 0.0;
	rkA(13,4)  = -341.0/164.0;
	rkA(13,5)  = 4496.0/1025.0;
	rkA(13,6)  = -289.0/82.0;
	rkA(13,7)  = 2193.0/4100.0;
	rkA(13,8)  = 51.0/82.0;
	rkA(13,9)  = 33.0/164.0;
	rkA(13,10) = 19.0/41.0;
	rkA(13,11) = 0.0;
	rkA(13,12) = 1.0;
	rkA(13,13) = 0.0;

	rkB(1,1)  = 41.0/840.0;
	rkB(1,2)  = 0.0;
	rkB(1,3)  = 0.0;
	rkB(1,4)  = 0.0;
	rkB(1,5)  = 0.0;
	rkB(1,6)  = 34.0/105.0;
	rkB(1,7)  = 9.0/35.0;
	rkB(1,8)  = 9.0/35.0;
	rkB(1,9)  = 9.0/280.0;
	rkB(1,10) = 9.0/280.0;
	rkB(1,11) = 41.0/840.0;
	rkB(1,12) = 0.0;
	rkB(1,13) = 0.0;

	rkC(1)  = 0.0;
	rkC(2)  = 2.0/27.0;
	rkC(3)  = 1.0/9.0;
	rkC(4)  = 1.0/6.0;
	rkC(5)  = 5.0/12.0;
	rkC(6)  = 1.0/2.0;
	rkC(7)  = 5.0/6.0;
	rkC(8)  = 1.0/6.0;
	rkC(9)  = 2.0/3.0;
	rkC(10) = 1.0/3.0;
	rkC(11) = 1.0;
	rkC(12) = 0.0;
	rkC(13) = 1.0;

	rkE(1)  = 0.0;
	rkE(2)  = 0.0;
	rkE(3)  = 0.0;
	rkE(4)  = 0.0;
	rkE(5)  = 0.0;
	rkE(6)  = 34.0/105.0;
	rkE(7)  = 9.0/35.0;
	rkE(8)  = 9.0/35.0;
	rkE(9)  = 9.0/280.0;
	rkE(10) = 9.0/280.0;
	rkE(11) = 0.0;
	rkE(12) = 41.0/840.0;
	rkE(13) = 41.0/840.0;

return;