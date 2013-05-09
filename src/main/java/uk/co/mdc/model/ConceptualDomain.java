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
public class ConceptualDomain {

    private Integer refid;

    private String description;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Valuedomain> valueDomains = new HashSet<Valuedomain>();
}
