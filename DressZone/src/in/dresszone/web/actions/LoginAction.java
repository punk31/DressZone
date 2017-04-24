package in.dresszone.web.actions;

public class LoginAction extends ParentAction {

	public String execute() {
		if (servletContext.getAttribute("sessionSerialNo") == null)
			i = 1;
		else
			i = (int) servletContext.getAttribute("sessionSerialNo");
		System.out.println("session tracker count >>> " + i);
		servletContext.setAttribute("sessionSerialNo", ++i);

		return "LOGINCHKPASS";
	}

}
