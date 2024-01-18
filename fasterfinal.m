file_path = 'faster than MRiter50.csv';
data = readtable(file_path);

figure;
histogram(data.A_Iterations);
hold on;
histogram(data.B_Iterations);
title('Comparison of Iterations');
legend('Scenario A', 'Scenario B');
xlabel('Iterations');
ylabel('Frequency');
hold off;


figure;
histogram(data.A_Distance);
hold on;
histogram(data.B_Distance);
title('Comparison of Distance');
legend('Scenario A', 'Scenario B');
xlabel('Distance');
ylabel('Frequency');
hold off;

figure;
histogram(data.A_crashed);
hold on;
histogram(data.B_crashed);
title('Comparison of Crashes');
legend('Scenario A', 'Scenario B');
xlabel('Crashes');
ylabel('Frequency');
hold off;

figure;
boxplot(data.A_Iterations);
title("A Iteration Box Plot");

figure;
boxplot(data.B_Iterations)
title("B Iteration Box Plot");


figure;
boxplot(data.A_Iterations);
title("A Distance Box Plot");

figure;
boxplot(data.B_Iterations)
title("B Distance Box Plot");

mean_data_A = mean(data.A_Distance);
mode_data_A = mode(data.A_Distance);
median_data_A = median(data.A_Distance);
quartiles_A = quantile(data.A_Distance, [0.25, 0.5, 0.75]);

mean_data_B = mean(data.B_Distance);
mode_data_B = mode(data.B_Distance);
median_data_B = median(data.B_Distance);
quartiles_B = quantile(data.B_Distance, [0.25, 0.5, 0.75]);

figure;
bar([mean_data_A, mode_data_A, median_data_A, quartiles_A; mean_data_B, mode_data_B, median_data_B, quartiles_B]);
xticks(1:2);
xticklabels({'A Distance','B Distance'});
ylabel('Values');
title('Statistics for A_Distance and B_Distance');
legend('Mean', 'Mode','Medain',"1st Quartile","2nd Quartile","3rd Quartile");


mean_iterations_A = mean(data.A_Iterations);
mode_iterations_A = mode(data.A_Iterations);
median_iterations_A = median(data.A_Iterations);
quartiles_iterations_A = quantile(data.A_Iterations, [0.25, 0.5, 0.75]);

mean_iterations_B = mean(data.B_Iterations);
mode_iterations_B = mode(data.B_Iterations);
median_iterations_B = median(data.B_Iterations);
quartiles_iterations_B = quantile(data.B_Iterations, [0.25, 0.5, 0.75]);

figure;
bar([mean_iterations_A, mode_iterations_A, median_iterations_A,quartiles_iterations_A; mean_iterations_B, mode_iterations_B, median_iterations_B,quartiles_iterations_B]);
xticks(1:2);
xticklabels({'A Iterations';'B Iteration'});
ylabel('Values');
title('Statistics for A_Iterations and B_Iterations');
legend('Mean', 'Mode','Medain',"1st Quartile","2nd Quartile","3rd Quartile");
