
ans_u <- commandArgs(trailingOnly = TRUE)

diagnosis <- c("まちがってるよ\n", "あってるよ\n")

cat( ans_u )
cat( "\n" )

cat(diagnosis[ (ans_u == "さくらんぼ") + 1 ])
