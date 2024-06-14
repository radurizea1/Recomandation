function similarity = cosine_similarity(A, B)
  % A*B
  dot_product = dot(A, B);

  % norma 2 a lui A si B
  normA = norm(A);
  normB = norm(B);

  % formula finala
  similarity = dot_product / (normA * normB);
end
