L0 = 73.03;
L1 = 99.85;
L2 = 327.0;

s = 'Tz(L0).Rz(q1).Tz(L1).Rx(q2).Tz(-L2)';
dh = DHFactor(s);

AFER = eval(dh.command('AFER') );
AFER.links(1).m = 232.47
AFER.links(2).m = 67.49;

AFER.links(1).Jm = 0;
AFER.links(2).Jm = 0;

AFER.links(1).r = [-.35 9.14 40.71];
AFER.links(2).r = [23.78 5.77 11.77];

AFER.links(1).I = [650363.77 7092.63 8748.46; 7092.63 599737.86 77058.11; 8748.46 77058.11 992678.68];

AFER.links(2).I = [8528.01 576.08 5960.04; 576.08 998206.35 491.94; 5960.04 491.94 992840.90];

%AFER.plot([ 0 0 ])

cGen = CodeGenerator(AFER);
%fkine = vpa(cGen.genfkine);
%jacobian = vpa(cGen.genjacobian);
%inertia = vpa(cGen.geninertia);
%fwddyn = vpa(cGen.genfdyn);
%invdyn = vpa(cGen.geninvdyn);
