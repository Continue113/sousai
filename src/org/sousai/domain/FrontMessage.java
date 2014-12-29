package org.sousai.domain;

public class FrontMessage {
	int count;
	Object body;

	/**
	 * @param count
	 *            the count to set
	 */
	public void setCount(int count) {
		this.count = count;
	}

	/**
	 * @param body
	 *            the body to set
	 */
	public void setBody(Object body) {
		this.body = body;
	}

	public FrontMessage(Object body, int count) {
		super();
		this.body = body;
		this.count = count;
	}

	public FrontMessage() {
		super();
	}

}
