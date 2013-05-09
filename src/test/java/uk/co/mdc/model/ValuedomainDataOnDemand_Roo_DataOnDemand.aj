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
import uk.co.mdc.model.Valuedomain;
import uk.co.mdc.model.ValuedomainDataOnDemand;

privileged aspect ValuedomainDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ValuedomainDataOnDemand: @Component;
    
    private Random ValuedomainDataOnDemand.rnd = new SecureRandom();
    
    private List<Valuedomain> ValuedomainDataOnDemand.data;
    
    public Valuedomain ValuedomainDataOnDemand.getNewTransientValuedomain(int index) {
        Valuedomain obj = new Valuedomain();
        setDatatype(obj, index);
        setDescription(obj, index);
        setRefid(obj, index);
        setRegexDef(obj, index);
        setUnitOfMeasure(obj, index);
        return obj;
    }
    
    public void ValuedomainDataOnDemand.setDatatype(Valuedomain obj, int index) {
        String datatype = "datatype_" + index;
        obj.setDatatype(datatype);
    }
    
    public void ValuedomainDataOnDemand.setDescription(Valuedomain obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void ValuedomainDataOnDemand.setRefid(Valuedomain obj, int index) {
        Integer refid = new Integer(index);
        obj.setRefid(refid);
    }
    
    public void ValuedomainDataOnDemand.setRegexDef(Valuedomain obj, int index) {
        String regexDef = "regexDef_" + index;
        obj.setRegexDef(regexDef);
    }
    
    public void ValuedomainDataOnDemand.setUnitOfMeasure(Valuedomain obj, int index) {
        String unitOfMeasure = "unitOfMeasure_" + index;
        obj.setUnitOfMeasure(unitOfMeasure);
    }
    
    public Valuedomain ValuedomainDataOnDemand.getSpecificValuedomain(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Valuedomain obj = data.get(index);
        Long id = obj.getId();
        return Valuedomain.findValuedomain(id);
    }
    
    public Valuedomain ValuedomainDataOnDemand.getRandomValuedomain() {
        init();
        Valuedomain obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Valuedomain.findValuedomain(id);
    }
    
    public boolean ValuedomainDataOnDemand.modifyValuedomain(Valuedomain obj) {
        return false;
    }
    
    public void ValuedomainDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Valuedomain.findValuedomainEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Valuedomain' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Valuedomain>();
        for (int i = 0; i < 10; i++) {
            Valuedomain obj = getNewTransientValuedomain(i);
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
