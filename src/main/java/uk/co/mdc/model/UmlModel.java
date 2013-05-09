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
public class UmlModel {

    private Integer refid;

    private Integer conceptId;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Dataelement> dataelements = new HashSet<Dataelement>();

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Valuedomain> valuedomains = new HashSet<Valuedomain>();

    private String description;
}
