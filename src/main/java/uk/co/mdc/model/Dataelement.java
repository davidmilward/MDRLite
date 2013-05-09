package uk.co.mdc.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Dataelement {

    private Integer refId;

    private Integer parentId;

    private Integer vdId;

    private String description;

    private String definition;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<uk.co.mdc.model.Dataelement> subelements = new HashSet<uk.co.mdc.model.Dataelement>();
}
