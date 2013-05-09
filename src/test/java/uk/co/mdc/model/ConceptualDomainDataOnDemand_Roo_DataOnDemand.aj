// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uk.co.mdc.model;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;
import uk.co.mdc.model.ConceptualDomain;
import uk.co.mdc.model.ConceptualDomainDataOnDemand;

privileged aspect ConceptualDomainDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ConceptualDomainDataOnDemand: @Component;
    
    private Random ConceptualDomainDataOnDemand.rnd = new SecureRandom();
    
    private List<ConceptualDomain> ConceptualDomainDataOnDemand.data;
    
    public ConceptualDomain ConceptualDomainDataOnDemand.getNewTransientConceptualDomain(int index) {
        ConceptualDomain obj = new ConceptualDomain();
        setDescription(obj, index);
        setRefid(obj, index);
        return obj;
    }
    
    public void ConceptualDomainDataOnDemand.setDescription(ConceptualDomain obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void ConceptualDomainDataOnDemand.setRefid(ConceptualDomain obj, int index) {
        Integer refid = new Integer(index);
        obj.setRefid(refid);
    }
    
    public ConceptualDomain ConceptualDomainDataOnDemand.getSpecificConceptualDomain(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        ConceptualDomain obj = data.get(index);
        Long id = obj.getId();
        return ConceptualDomain.findConceptualDomain(id);
    }
    
    public ConceptualDomain ConceptualDomainDataOnDemand.getRandomConceptualDomain() {
        init();
        ConceptualDomain obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return ConceptualDomain.findConceptualDomain(id);
    }
    
    public boolean ConceptualDomainDataOnDemand.modifyConceptualDomain(ConceptualDomain obj) {
        return false;
    }
    
    public void ConceptualDomainDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ConceptualDomain.findConceptualDomainEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'ConceptualDomain' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<ConceptualDomain>();
        for (int i = 0; i < 10; i++) {
            ConceptualDomain obj = getNewTransientConceptualDomain(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
