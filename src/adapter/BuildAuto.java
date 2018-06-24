package adapter;

import java.io.Serializable;

/** Assignment 4: we have added the scale package
 * which contains an interface scale.Scaleable <BR>
 * Assignment 5: we have added the server package
 * which contains an interface server.AutoServer <BR>
 * Assignment 6: BuildAuto is now serializable so that it
 * can be stored as a cookie in a session */
public class BuildAuto extends ProxyAutomobile
	implements CreateAuto, UpdateAuto, ChooseAuto, scale.Scaleable, server.AutoServer, Serializable {
	private static final long serialVersionUID = -2203679579159138554L;

}
