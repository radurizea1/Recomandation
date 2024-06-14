function reduced_mat = preprocess(mat, min_reviews)
    % review_counts = numar de zero
    review_counts = sum(mat ~= 0, 2);

    % cel mai mic nr review
    valid_rows = review_counts >= min_reviews;

    % Filtrarea matricei scotand review-uri
    reduced_mat = mat(valid_rows, :);
end
