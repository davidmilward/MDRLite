package uk.co.mdc.model;

import javax.persistence.Basic;
import javax.persistence.FetchType;
import javax.persistence.Lob;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Transient;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Document {

    @NotNull
    @Size(min = 2)
    private String name;

    @NotNull
    @Size(max = 500)
    private String description;

    private String contentType;

    private Long sz;

    @NotNull
    @Lob
    @Basic(fetch = FetchType.LAZY)
    private byte[] content;


    private java.lang.String filename;

}
