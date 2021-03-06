// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uk.co.mdc.model;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import uk.co.mdc.model.UmlModel;

privileged aspect UmlModel_Roo_Json {
    
    public String UmlModel.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static UmlModel UmlModel.fromJsonToUmlModel(String json) {
        return new JSONDeserializer<UmlModel>().use(null, UmlModel.class).deserialize(json);
    }
    
    public static String UmlModel.toJsonArray(Collection<UmlModel> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<UmlModel> UmlModel.fromJsonArrayToUmlModels(String json) {
        return new JSONDeserializer<List<UmlModel>>().use(null, ArrayList.class).use("values", UmlModel.class).deserialize(json);
    }
    
}
