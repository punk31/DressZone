package in.dresszone.web.actions;

import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

public abstract class ParentAction extends ActionSupport implements ServletContextAware {
	
	int i;
	ServletContext servletContext;
	
	public ParentAction() {
	System.out.println("calling constructor of ParentAction");
	}
	
	@Override
    public void setServletContext(ServletContext context) {
        this.servletContext = context;
    }

}
