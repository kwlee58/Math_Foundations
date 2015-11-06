minor <-
function(A, i, j){
  det(A[-i, -j, drop=FALSE])
}
cofactor <-
function(A, i, j){
  (-1)^(i+j)*minor(A, i, j)
}
adjoint <-
function(A){
  n <- nrow(A)
  t(outer(1:n, 1:n, Vectorize(
    function(i, j) cofactor(A, i, j))))
}
