prob_vec <- sample(1:5, size = 5)
vec1 <- sample(
  1:5,
  size = 10000,
  replace = TRUE,
  prob = prob_vec
)
vec1_length <- length(vec1)
vec1_mojivec <- rep(NA, vec1_length)

dyn.load("C/newbie_replace_abcde.so")

.C("replace_abcde_c", as.integer(vec1), as.integer(vec1_length), as.character(vec1_mojivec))

dyn.unload("C/newbie_replace_abcde.so")
