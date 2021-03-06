public static int main (string[] args) {
	MainLoop loop = new MainLoop ();
	try {
		Rest.Proxy proxy = new Rest.Proxy ("http://www.flickr.com/services/rest/", false);
		Rest.ProxyCall call = proxy.new_call ();
		call.add_params (
				"method", "flickr.test.echo",
				"api_key", "314691be2e63a4d58994b2be01faacfb",
				"format", "json"
			);

		call.run ();
		string payload = call.get_payload ();
		int64 len = call.get_payload_length ();

		// We interpret the result as data:
		unowned uint8[] arr = (uint8[]) payload;
		arr.length = (int) len;
		stdout.write (arr, sizeof (uint8));
	} catch (Error e) {
		stderr.puts (e.message);
		stderr.putc ('\n');
	}
	loop = null;
	return 0;
}
