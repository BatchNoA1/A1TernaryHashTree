
package com.logic.jaxws;

import java.util.ArrayList;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "fetchFilesResponse", namespace = "http://logic.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "fetchFilesResponse", namespace = "http://logic.com/")
public class FetchFilesResponse {

    @XmlElement(name = "return", namespace = "")
    private ArrayList _return;

    /**
     * 
     * @return
     *     returns ArrayList
     */
    public ArrayList getReturn() {
        return this._return;
    }

    /**
     * 
     * @param _return
     *     the value for the _return property
     */
    public void setReturn(ArrayList _return) {
        this._return = _return;
    }

}
