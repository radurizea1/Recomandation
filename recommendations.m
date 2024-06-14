function recoms = recommendations(path, liked_theme, num_recoms, min_reviews, num_features)
    % apelam functiile deja implementate read_mat si preprocess
    A = read_mat(path);
    A = preprocess(A, min_reviews);

    % Pas 3 din task
    [U, S, V] = svds(A, num_features);

    % extrage linia care se potriveste cu tema dorita
    liked_theme_vector = V(liked_theme, :);

    % calculam similaritatea pt fiecare reteta
    similarities = arrayfun(@(i) cosine_similarity(liked_theme_vector, V(i, :)), 1:size(V, 1));

    % punem valorile cele mai mari la inceput
    [~, sorted_indices] = sort(similarities, 'descend');

    % lumam cea mai buna recomandare(aceasta se afla pe poza 2, pe poz 1 se afla ce ii place urilizatorului)
    recoms = sorted_indices(2 : num_recoms + 1);
end

