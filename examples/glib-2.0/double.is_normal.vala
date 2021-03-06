public static int main (string[] args) {
	// Output: ``false``
	double val = double.INFINITY;
	stdout.printf ("%s\n", val.is_normal ().to_string ());

	// Output: ``false``
	val = double.NAN;
	stdout.printf ("%s\n", val.is_normal ().to_string ());

	// Output: ``true``
	val = 0.3f;
	stdout.printf ("%s\n", val.is_normal ().to_string ());

	// Output: ``true``
	val = 0.3f;
	stdout.printf ("%s\n", val.is_normal ().to_string ());

	// Output: ``true``
	val = 1.0f;
	stdout.printf ("%s\n", val.is_normal ().to_string ());

	return 0;
}
