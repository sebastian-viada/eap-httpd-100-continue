package de.viada.middleware.sebastian.helloworld;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Response;

@Path("/")
public class SleepyResource {

	private Logger logDog = LoggerFactory.getLogger(this.getClass());

	@PUT
	@POST
	@GET
	public Response sleepAndSayHello() {
		logDog.info("I will go to bed");
		try {
			Thread.sleep(11000);
			logDog.info("I slept very well");
		} catch (InterruptedException e) {
			logDog.info("My sleep was interupted.");
		}
		return Response.ok("Hello World!").build();
	}

	@PUT
	@GET
	@POST
	@Path("/nosleep")
	public Response noSleepAndSayHello() {
		logDog.info("No sleep till brooklyn");

		return Response.ok("Hello World!").build();
	}

}