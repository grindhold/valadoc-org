public interface Interface : Object {}
public abstract class AbstractGObject : Object, Interface {}
public abstract class AbstractSimpleObject {}
public enum Enum { E }
[Flags]
public enum Flags { E }

public static int main (string[] args) {
	// Output: ``false``
	Type type = typeof (Interface);
	stdout.printf (" is-flags: %s\n", type.is_flags ().to_string ());

	// Output: ``false``
	type = typeof (AbstractGObject);
	stdout.printf (" is-flags: %s\n", type.is_flags ().to_string ());

	// Output: ``false``
	type = typeof (AbstractSimpleObject);
	stdout.printf (" is-flags: %s\n", type.is_flags ().to_string ());

	// Output: ``false``
	type = typeof (Enum);
	stdout.printf (" is-flags: %s\n", type.is_flags ().to_string ());

	// Output: ``true``
	type = typeof (Flags);
	stdout.printf (" is-flags: %s\n", type.is_flags ().to_string ());

	return 0;
}
