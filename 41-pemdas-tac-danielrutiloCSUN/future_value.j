public static int future_value(int I, int R, int T) {

	int $v0; // $v0 = I * (100 + (R * T)) / 100;

	int $a0 = I;
	int $a1 = R;
	int $a2 = T; 

	int $t0 = 100;
	int $t1 = $a1 * $a2; //(R * T)
	int $t2 = $t0 + $t1; //(100 + (R * T))
	int $t3 = $a0 * $t2; // I * (100 + (R * T))

	$v0 = $t3 / $t0;

	return $v0;
}