// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uk.co.mdc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import uk.co.mdc.model.Dataelement;

privileged aspect Dataelement_Roo_Jpa_Entity {
    
    declare @type: Dataelement: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Dataelement.id;
    
    @Version
    @Column(name = "version")
    private Integer Dataelement.version;
    
    public Long Dataelement.getId() {
        return this.id;
    }
    
    public void Dataelement.setId(Long id) {
        this.id = id;
    }
    
    public Integer Dataelement.getVersion() {
        return this.version;
    }
    
    public void Dataelement.setVersion(Integer version) {
        this.version = version;
    }
    
}
