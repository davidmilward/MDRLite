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
import uk.co.mdc.model.UmlModel;
import uk.co.mdc.model.UmlModelDataOnDemand;
import uk.co.mdc.model.UmlModelIntegrationTest;

privileged aspect UmlModelIntegrationTest_Roo_IntegrationTest {
    
    declare @type: UmlModelIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: UmlModelIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: UmlModelIntegrationTest: @Transactional;
    
    @Autowired
    private UmlModelDataOnDemand UmlModelIntegrationTest.dod;
    
    @Test
    public void UmlModelIntegrationTest.testCountUmlModels() {
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to initialize correctly", dod.getRandomUmlModel());
        long count = UmlModel.countUmlModels();
        Assert.assertTrue("Counter for 'UmlModel' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void UmlModelIntegrationTest.testFindUmlModel() {
        UmlModel obj = dod.getRandomUmlModel();
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to provide an identifier", id);
        obj = UmlModel.findUmlModel(id);
        Assert.assertNotNull("Find method for 'UmlModel' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'UmlModel' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void UmlModelIntegrationTest.testFindAllUmlModels() {
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to initialize correctly", dod.getRandomUmlModel());
        long count = UmlModel.countUmlModels();
        Assert.assertTrue("Too expensive to perform a find all test for 'UmlModel', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<UmlModel> result = UmlModel.findAllUmlModels();
        Assert.assertNotNull("Find all method for 'UmlModel' illegally returned null", result);
        Assert.assertTrue("Find all method for 'UmlModel' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void UmlModelIntegrationTest.testFindUmlModelEntries() {
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to initialize correctly", dod.getRandomUmlModel());
        long count = UmlModel.countUmlModels();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<UmlModel> result = UmlModel.findUmlModelEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'UmlModel' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'UmlModel' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void UmlModelIntegrationTest.testFlush() {
        UmlModel obj = dod.getRandomUmlModel();
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to provide an identifier", id);
        obj = UmlModel.findUmlModel(id);
        Assert.assertNotNull("Find method for 'UmlModel' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyUmlModel(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'UmlModel' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UmlModelIntegrationTest.testMergeUpdate() {
        UmlModel obj = dod.getRandomUmlModel();
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to provide an identifier", id);
        obj = UmlModel.findUmlModel(id);
        boolean modified =  dod.modifyUmlModel(obj);
        Integer currentVersion = obj.getVersion();
        UmlModel merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'UmlModel' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UmlModelIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to initialize correctly", dod.getRandomUmlModel());
        UmlModel obj = dod.getNewTransientUmlModel(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'UmlModel' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'UmlModel' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void UmlModelIntegrationTest.testRemove() {
        UmlModel obj = dod.getRandomUmlModel();
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UmlModel' failed to provide an identifier", id);
        obj = UmlModel.findUmlModel(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'UmlModel' with identifier '" + id + "'", UmlModel.findUmlModel(id));
    }
    
}
