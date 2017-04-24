package in.dresszone.web.beans;

/**
 * @author pkumar
 *
 */
public class Credential {

	private String customerID;
	private String customerSecret;
	private boolean authSuccess = false;
	private char customertype;

	public String getCustomerID() {
		return customerID;
	}

	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}

	public String getCustomerSecret() {
		return customerSecret;
	}

	public void setCustomerSecret(String customerSecret) {
		this.customerSecret = customerSecret;
	}

	public boolean isAuthSuccess() {
		return authSuccess;
	}

	public void setAuthSuccess(boolean authSuccess) {
		this.authSuccess = authSuccess;
	}

	public char getCustomertype() {
		return customertype;
	}

	public void setCustomertype(char customertype) {
		this.customertype = customertype;
	}

}
