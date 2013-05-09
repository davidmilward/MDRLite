// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uk.co.mdc.model;

import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import uk.co.mdc.model.Valuedomain;
import uk.co.mdc.model.ValuedomainDataOnDemand;
import uk.co.mdc.model.ValuedomainIntegrationTest;

privileged aspect ValuedomainIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ValuedomainIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ValuedomainIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: ValuedomainIntegrationTest: @Transactional;
    
    @Autowired
    private ValuedomainDataOnDemand ValuedomainIntegrationTest.dod;
    
    @Test
    public void ValuedomainIntegrationTest.testCountValuedomains() {
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to initialize correctly", dod.getRandomValuedomain());
        long count = Valuedomain.countValuedomains();
        Assert.assertTrue("Counter for 'Valuedomain' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ValuedomainIntegrationTest.testFindValuedomain() {
        Valuedomain obj = dod.getRandomValuedomain();
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to provide an identifier", id);
        obj = Valuedomain.findValuedomain(id);
        Assert.assertNotNull("Find method for 'Valuedomain' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Valuedomain' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ValuedomainIntegrationTest.testFindAllValuedomains() {
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to initialize correctly", dod.getRandomValuedomain());
        long count = Valuedomain.countValuedomains();
        Assert.assertTrue("Too expensive to perform a find all test for 'Valuedomain', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Valuedomain> result = Valuedomain.findAllValuedomains();
        Assert.assertNotNull("Find all method for 'Valuedomain' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Valuedomain' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ValuedomainIntegrationTest.testFindValuedomainEntries() {
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to initialize correctly", dod.getRandomValuedomain());
        long count = Valuedomain.countValuedomains();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Valuedomain> result = Valuedomain.findValuedomainEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Valuedomain' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Valuedomain' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ValuedomainIntegrationTest.testFlush() {
        Valuedomain obj = dod.getRandomValuedomain();
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to provide an identifier", id);
        obj = Valuedomain.findValuedomain(id);
        Assert.assertNotNull("Find method for 'Valuedomain' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyValuedomain(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Valuedomain' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ValuedomainIntegrationTest.testMergeUpdate() {
        Valuedomain obj = dod.getRandomValuedomain();
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to provide an identifier", id);
        obj = Valuedomain.findValuedomain(id);
        boolean modified =  dod.modifyValuedomain(obj);
        Integer currentVersion = obj.getVersion();
        Valuedomain merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Valuedomain' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ValuedomainIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to initialize correctly", dod.getRandomValuedomain());
        Valuedomain obj = dod.getNewTransientValuedomain(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Valuedomain' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'Valuedomain' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ValuedomainIntegrationTest.testRemove() {
        Valuedomain obj = dod.getRandomValuedomain();
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Valuedomain' failed to provide an identifier", id);
        obj = Valuedomain.findValuedomain(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Valuedomain' with identifier '" + id + "'", Valuedomain.findValuedomain(id));
    }
    
}
