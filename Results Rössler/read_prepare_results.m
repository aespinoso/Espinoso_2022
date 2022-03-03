% Script to prepare the results for Rössler for github

%% A. Joint all 50 iterations from results surrogate

path_surrog = 'E:\PhD\Paper PhaseDiff\Codes and results github\Results Rössler\Figure 4\Original and surrogates all repetitions\';
dir_surrog = dir([path_surrog,'*.mat']);

V_x_surrog = zeros(20,20,19,50);
M_x_surrog = zeros(20,20,19,50);
S_x_surrog = zeros(20,20,19,50);

for ii = 1:length(dir_surrog)

    load([path_surrog,dir_surrog(ii).name])

    V_x_surrog(:,:,:,ii) = D_all_s;
    M_x_surrog(:,:,:,ii) = Mean_omega_all_s;
    S_x_surrog(:,:,:,ii) = Std_omega_all_s;
    disp([num2str(ii)])


end