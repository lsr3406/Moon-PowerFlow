%% getmpc: TODO getmpc description
function [mpc] = getmpc()
	mpc.baseMVA = 100;
	% Nodes(id,type,Pd,Qd,conductance,susceptance,area,mag0,ang0,baseKV,zone,Vmax,Vmin)
	mpc.bus = [

		1	3	0	0	0	0	1	1.0455	0	220	1	1.1	0.9;
		2	1	230	35	0	0	1	1	0	220	1	1.1	0.9;
		3	1	225	30	0	0	1	1	0	220	1	1.1	0.9;
		4	1	250	75	0	0	1	1	0	220	1	1.1	0.9;
		5	1	400	100	0	0	1	1	0	220	1	1.1	0.9;
		6	1	210	25	0	0	1	1	0	220	1	1.1	0.9;
		7	1	0	0	0	0	1	1	0	220	1	1.1	0.9;
		8	2	0	0	0	0	1	1.05	0	220	1	1.1	0.9;
		9	2	0	0	0	0	1	1.05	0	220	1	1.1	0.9;
		10	2	0	0	0	0	1	1.05	0	220	1	1.1	0.9;

		% 1	3	0	0	0	0	1	1.0455	0	220	1	1.1	0.9;
		% 2	1	230*0.65	35*0.65	0	0	1	1	0	220	1	1.1	0.9;
		% 3	1	225*0.65	30*0.65	0	0	1	1	0	220	1	1.1	0.9;
		% 4	1	250*0.65	75*0.65	0	0	1	1	0	220	1	1.1	0.9;
		% 5	1	400*0.65	100*0.65	0	0	1	1	0	220	1	1.1	0.9;
		% 6	1	210*0.65	25*0.65	0	0	1	1	0	220	1	1.1	0.9;
		% 7	1	0	0	0	0	1	1	0	220	1	1.1	0.9;
		% 8	2	0	0	0	0	1	1.05	0	220	1	1.1	0.9;
		% 9	2	0	0	0	0	1	1.05	0	220	1	1.1	0.9;
		% 10	2	0	0	0	0	1	1.05	0	220	1	1.1	0.9;

	];

	% Generator(nodeId,Pg,Qg,Qmax,Qmin,Vg,mBase,status,Pmax,Pmin)
	% 最后一个数表示暂态电抗
	mpc.gen = [

		1	0	0	999	-999	1.0455	100	1	999	-999	0.01;
		8	251.1	0	211.39	-211.39	1.05	100	1	279	-279	0.056;
		9	251.1	0	211.39	-211.39	1.05	100	1	279	-279	0.056;
		10	209.25	0	176.16	-176.16	1.05	100	1	232	-232	0.064;

		% 8	251.1*0.8/0.9	0	211.39	-211.39	1.05	100	1	279	279		0.056;
		% 9	251.1*0.8/0.9	0	211.39	-211.39	1.05	100	1	279	279		0.056;
		% 10	209.25*0.8/0.9	0	176.16	-176.16	1.05	100	1	232	232		0.064;

		% 教材数据
		% 3	20	0	30	-30	1.05	100	1	40	0	0	0	0	0	0	0	0	0	0	0	0;
	];

	% Branches(from,to,resistance,reactance,susceptance,rateA,rateB,rateC,ratio,angle,status,angmin,angmax)
	mpc.branch = [

		1	2	0.00357	0.02037	0.03992	0	0	0	0	0	1	-180	180;
		1	2	0.00357	0.02037	0.03992	0	0	0	0	0	1	-180	180;
		2	3	0.00223	0.01273	0.02495	0	0	0	0	0	1	-180	180;
		2	3	0.00223	0.01273	0.02495	0	0	0	0	0	1	-180	180;
		2	4	0.00112	0.00636	0.01248	0	0	0	0	0	1	-180	180;
		2	4	0.00112	0.00636	0.01248	0	0	0	0	0	1	-180	180;
		3	6	0.00089	0.00508	0.00998	0	0	0	0	0	1	-180	180;
		3	6	0.00089	0.00508	0.00998	0	0	0	0	0	1	-180	180;
		4	5	0.00101	0.00572	0.01123	0	0	0	0	0	1	-180	180;
		4	5	0.00101	0.00572	0.01123	0	0	0	0	0	1	-180	180;
		5	7	0.00279	0.01591	0.03118	0	0	0	0	0	1	-180	180;
		5	7	0.00279	0.01591	0.03118	0	0	0	0	0	1	-180	180;
		6	7	0.00200	0.01145	0.02245	0	0	0	0	0	1	-180	180;
		6	7	0.00200	0.01145	0.02245	0	0	0	0	0	1	-180	180;
		8	7	0	0.0363	0	0	0	0	0.95	0	1	-180	180;
		9	7	0	0.0363	0	0	0	0	0.95	0	1	-180	180;
		10	7	0	0.0424	0	0	0	0	0.95	0	1	-180	180;

	];
end