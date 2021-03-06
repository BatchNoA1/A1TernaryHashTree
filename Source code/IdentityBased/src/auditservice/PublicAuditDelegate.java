package auditservice;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

/**
 * This class was generated by the JAX-WS RI. JAX-WS RI 2.1.3-hudson-390-
 * Generated source version: 2.0
 * 
 */
@WebService(name = "PublicAuditDelegate", targetNamespace = "http://logic.com/")
public interface PublicAuditDelegate {

	/**
	 * 
	 * @param arg0
	 * @return returns java.lang.String
	 */
	@WebMethod
	@WebResult(targetNamespace = "")
	@RequestWrapper(localName = "startAudit", targetNamespace = "http://logic.com/", className = "auditservice.StartAudit")
	@ResponseWrapper(localName = "startAuditResponse", targetNamespace = "http://logic.com/", className = "auditservice.StartAuditResponse")
	public String startAudit(
			@WebParam(name = "arg0", targetNamespace = "") List<Object> arg0);

	/**
	 * 
	 * @param arg1
	 * @param arg0
	 * @return returns java.lang.String
	 */
	@WebMethod
	@WebResult(targetNamespace = "")
	@RequestWrapper(localName = "fetchFileCon", targetNamespace = "http://logic.com/", className = "auditservice.FetchFileCon")
	@ResponseWrapper(localName = "fetchFileConResponse", targetNamespace = "http://logic.com/", className = "auditservice.FetchFileConResponse")
	public String fetchFileCon(
			@WebParam(name = "arg0", targetNamespace = "") String arg0,
			@WebParam(name = "arg1", targetNamespace = "") String arg1);

	/**
	 * 
	 * @param arg0
	 * @return returns java.lang.String
	 */
	@WebMethod
	@WebResult(targetNamespace = "")
	@RequestWrapper(localName = "genSignature", targetNamespace = "http://logic.com/", className = "auditservice.GenSignature")
	@ResponseWrapper(localName = "genSignatureResponse", targetNamespace = "http://logic.com/", className = "auditservice.GenSignatureResponse")
	public String genSignature(
			@WebParam(name = "arg0", targetNamespace = "") String arg0);

	/**
     * 
     */
	@WebMethod
	@RequestWrapper(localName = "finalizecheck", targetNamespace = "http://logic.com/", className = "auditservice.Finalizecheck")
	@ResponseWrapper(localName = "finalizecheckResponse", targetNamespace = "http://logic.com/", className = "auditservice.FinalizecheckResponse")
	public void finalizecheck();

}
