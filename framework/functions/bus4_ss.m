%% bus4_ss: 4 节点系统, 用于测试全纯函数法
function [mpc] = bus4_ss()

	mpc.baseMVA = 100;

	mpc.bus = [
		1	3	50	30.99	0	0	1	1	0	0	1	1.1	0.9;
		2	1	170	105.35	0	0	1	1	0	0	1	1.1	0.9;
		3	1	200	123.94	0	0	1	1	0	0	1	1.1	0.9;
		4	2	80	49.58	0	0	1	1.02	0	0	1	1.1	0.9;
	];

	mpc.gen = [
		4	318	0	9999	-9999	1.02	100	1	9999	-9999;
	];

	mpc.branch = [
		1	2	0.01008	0.05040	0.1025	0	0	0	0	0	1	-180	180;
		1	3	0.00744	0.03720	0.0775	0	0	0	0	0	1	-180	180;
		2	4	0.00744	0.03720	0.0775	0	0	0	0	0	1	-180	180;
		3	4	0.01272	0.06360	0.1275	0	0	0	0	0	1	-180	180;
	];
end

% NR
% real imag Pg Qg Pd Qd
% 1  1.0000         0    1.8681    1.1450    0.5000    0.3099
% 2  0.9823   -0.0167         0         0    1.7000    1.0535
% 3  0.9685   -0.0317         0         0    2.0000    1.2394
% 4  1.0196    0.0271    3.1800    1.8143    0.8000    0.4958

% from to Pij Qij Pji Qji dP dQ
% 1  2   38.6915   27.4235  -38.4648  -26.2899    0.2267    1.1335
% 1  3   98.1175   65.0874  -97.0861  -59.9302    1.0314    5.1572
% 2  4 -131.5352  -70.3737  133.2507   78.9511    1.7155    8.5774
% 3  4 -102.9139  -54.3854  104.7493   63.5626    1.8355    9.1773