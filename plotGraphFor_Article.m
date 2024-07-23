function plotGraphFor_Article(SNR,...
    PSNR,...
    SEGSNR,...
    name_figure_one, ... % Наименование рисунка первых данных
    name_figure_two, ... % Наименование рисунка вторых данных
    name_figure_three, ...% Наименование рисунка третих данных
    name_oy_one_graph, ...% Наименование оси OY первых данных
    name_oy_two_graph, ...% Наименование оси OY вторых данных
    name_oy_three_graph, ... % Наименование оси OY третих данных
    learn_step, ...
    windows_, ...
    LineWidth)

    marker = ["o", "+", "*", ".", "x", "_", "|", "square", "diamond", ...
        "^", "v", ">", "<", "pentagram", "hexagram"];
    
    figure(Name = name_figure_one);
    [numRows,numCols] = size(SNR);
    xlabel("Шаг обучения")
    ylabel(name_oy_one_graph)
    for i = 1:numRows
        hold on;
        plot(learn_step, SNR(i,:), marker(i)+'-','LineWidth',LineWidth);
    end
    lgd1 = legend(string(windows_),'Location','east');
    title(lgd1, 'Длины входных векторов')

    figure(Name = name_figure_two);
    [numRows,numCols] = size(PSNR);
    xlabel("Шаг обучения")
    ylabel(name_oy_two_graph)
    for i = 1:numRows
        hold on;
        plot(learn_step, PSNR(i,:), marker(i)+'-','LineWidth', LineWidth);
    end
    lgd2 = legend(string(windows_),'Location','east');
    title(lgd2, 'Длины входных векторов')

    figure(Name = name_figure_three);
    [numRows,numCols] = size(SEGSNR);
    xlabel("Шаг обучения")
    ylabel(name_oy_three_graph)
    for i = 1:numRows
        hold on;
        plot(learn_step, SEGSNR(i,:), marker(i)+'-','LineWidth', LineWidth);
    end
    lgd3 = legend(string(windows_),'Location','east');
    title(lgd3, 'Длины входных векторов')

    numCols = numCols;

end