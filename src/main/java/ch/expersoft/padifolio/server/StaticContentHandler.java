package ch.expersoft.padifolio.server;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sun.net.httpserver.Headers;
import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;

@SuppressWarnings("restriction")
public class StaticContentHandler implements HttpHandler {

	private static Logger LOGGER = LoggerFactory.getLogger(StaticContentHandler.class);

	@Override
	public void handle(HttpExchange t) throws IOException {

		String path = t.getRequestURI().getPath().substring("/padifolio".length());
		LOGGER.trace("Looking for: " + path);
		InputStream inputStream = getClass().getResourceAsStream(path);

		if (inputStream == null) {
			// Object does not exist or is not a file: reject with 404 error.
			String response = "404 (Not Found)\n";
			t.sendResponseHeaders(404, response.length());
			OutputStream os = t.getResponseBody();
			os.write(response.getBytes());
			os.close();

		} else {
			// Object exists and is a file: accept with response code 200.
			String mime = "text/html";
			if (path.substring(path.length() - 3).equals(".js")) {
				mime = "application/javascript";
			} else if (path.substring(path.length() - 3).equals("css")) {
				mime = "text/css";
			} else if (path.substring(path.length() - 3).equals("gif")) {
				mime = "image/gif";
			} else if (path.substring(path.length() - 3).equals("jpg")) {
				mime = "image/jpg";
			}

			Headers h = t.getResponseHeaders();
			h.set("Content-Type", mime);
			t.sendResponseHeaders(200, 0);

			copyStream(inputStream, t.getResponseBody());
		}

	}

	private void copyStream(InputStream in, OutputStream out) throws IOException {
		try {
			byte[] buffer = new byte[2048];
			for (int n = in.read(buffer); n >= 0; n = in.read(buffer)) {
				out.write(buffer, 0, n);
			}
		} finally {
			out.close();
		}
	}

}
