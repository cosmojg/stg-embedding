% defines a universal colorscheme
% for the categories
% the returned object is a dictionary object

function colors = colorscheme(cats)


if iscategorical(cats)
	cats = categories(cats);
end

% make a colorscheme

C = colormaps.dcol(length(cats));

colors = dictionary;
for i = 1:length(cats)
    colors.(cats(i)) = C(i,:);
end

colors('normal') = color.aqua('blue');
colors('LP-weak-skipped') = color.aqua('brown');
colors('PD-weak-skipped') = color.aqua('green');
colors('sparse-irregular') = color.aqua('indigo');
colors('LP-silent-PD-bursting') = color.aqua('orange');
colors('LP-silent') = color.aqua('pink');
