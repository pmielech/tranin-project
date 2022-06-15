fc = 3.6e06;
R = 50;
%m = 1; % m=(0;1)

% filtr typu pi
fprintf('\nFiltr typu pi\n')

for m = 0.1:0.1:0.9
    disp(['m = ', num2str(m)])
    Lk = R/(pi*fc);
    L1 = m*Lk
    L2 = ((1-m^2)*Lk)/(4*m);
    Ck = 1/(pi*fc*R);
    C1 = ((1-m^2)*Ck)/(4*m)
    C2 = m*Ck;
    L1_2 = L1/2
    C1_2 = 2*C1
    C2_2 = C2/2
    disp(['end of ', num2str(m)])
end


% filtr typu T
fprintf('\nFiltr typu T\n')

for m = 0.1:0.1:0.9
    disp(['m = ', num2str(m)])
    Lk = R/(pi*fc);
    L1 = m*Lk;
    L2 = ((1-m^2)*Lk)/(4*m)
    Ck = 1/(pi*fc*R);
    C1 = ((1-m^2)*Ck)/(4*m);
    C2 = m*Ck
    L1_2 = L1/2
    L2_2 = 2*L2
    C1_2 = 2*C1
    C2_2 = C2/2
    disp(['end of ', num2str(m)])
end

