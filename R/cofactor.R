minor <-
function(A, i, j){
  det(A[-i, -j, drop = FALSE])
}
cofactor <-
function(A, i, j){
  (-1)^(i+j)*minor(A, i, j)
}
