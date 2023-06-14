

# awk -f avg.awk timing.txt


{
	real += $2
	user += $4
	sys += $6
	count += 1
}

END {
	printf "Average:\n real: %.3f\t user: %.3f\t sys: %.3f\n", real / count, user / count, sys / count
}

