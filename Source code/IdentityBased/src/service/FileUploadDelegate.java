package service;

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
@WebService(name = "FileUploadDelegate", targetNamespace = "http://logic.com/")
public interface FileUploadDelegate {

	/**
	 * 
	 * @param arg3
	 * @param arg2
	 * @param arg1
	 * @param arg0
	 * @return returns java.lang.String
	 */
	@WebMethod
	@WebResult(targetNamespace = "")
	@RequestWrapper(localName = "saveFile", targetNamespace = "http://logic.com/", className = "service.SaveFile")
	@ResponseWrapper(localName = "saveFileResponse", targetNamespace = "http://logic.com/", className = "service.SaveFileResponse")
	public String saveFile(
			@WebParam(name = "arg0", targetNamespace = "") String arg0,
			@WebParam(name = "arg1", targetNamespace = "") String arg1,
			@WebParam(name = "arg2", targetNamespace = "") String arg2,
			@WebParam(name = "arg3", targetNamespace = "") String arg3);

	/**
	 * 
	 * @param arg2
	 * @param arg1
	 * @param arg0
	 */
	@WebMethod
	@RequestWrapper(localName = "upload", targetNamespace = "http://logic.com/", className = "service.Upload")
	@ResponseWrapper(localName = "uploadResponse", targetNamespace = "http://logic.com/", className = "service.UploadResponse")
	public void upload(
			@WebParam(name = "arg0", targetNamespace = "") String arg0,
			@WebParam(name = "arg1", targetNamespace = "") String arg1,
			@WebParam(name = "arg2", targetNamespace = "") String arg2);

	/**
	 * 
	 * @param arg1
	 * @param arg0
	 * @return returns java.util.List<java.lang.Object>
	 */
	@WebMethod(operationName = "RwPackets")
	@WebResult(targetNamespace = "")
	@RequestWrapper(localName = "RwPackets", targetNamespace = "http://logic.com/", className = "service.RwPackets")
	@ResponseWrapper(localName = "RwPacketsResponse", targetNamespace = "http://logic.com/", className = "service.RwPacketsResponse")
	public List<Object> rwPackets(
			@WebParam(name = "arg0", targetNamespace = "") List<Object> arg0,
			@WebParam(name = "arg1", targetNamespace = "") String arg1);

	/**
	 * 
	 * @param arg1
	 * @param arg0
	 * @return returns java.lang.String
	 */
	@WebMethod
	@WebResult(targetNamespace = "")
	@RequestWrapper(localName = "fetchFile", targetNamespace = "http://logic.com/", className = "service.FetchFile")
	@ResponseWrapper(localName = "fetchFileResponse", targetNamespace = "http://logic.com/", className = "service.FetchFileResponse")
	public String fetchFile(
			@WebParam(name = "arg0", targetNamespace = "") String arg0,
			@WebParam(name = "arg1", targetNamespace = "") String arg1);

	/**
	 * 
	 * @param arg0
	 * @return returns java.util.List<java.lang.Object>
	 */
	@WebMethod
	@WebResult(targetNamespace = "")
	@RequestWrapper(localName = "fetchFiles", targetNamespace = "http://logic.com/", className = "service.FetchFiles")
	@ResponseWrapper(localName = "fetchFilesResponse", targetNamespace = "http://logic.com/", className = "service.FetchFilesResponse")
	public List<Object> fetchFiles(
			@WebParam(name = "arg0", targetNamespace = "") String arg0);

	/**
	 * 
	 * @param arg1
	 * @param arg0
	 * @return returns java.lang.String
	 */
	@WebMethod
	@WebResult(targetNamespace = "")
	@RequestWrapper(localName = "deleteUsrFile", targetNamespace = "http://logic.com/", className = "service.DeleteUsrFile")
	@ResponseWrapper(localName = "deleteUsrFileResponse", targetNamespace = "http://logic.com/", className = "service.DeleteUsrFileResponse")
	public String deleteUsrFile(
			@WebParam(name = "arg0", targetNamespace = "") String arg0,
			@WebParam(name = "arg1", targetNamespace = "") String arg1);

}