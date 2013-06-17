// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uk.co.mdc.web;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import uk.co.mdc.model.ConceptualDomain;
import uk.co.mdc.model.Dataelement;
import uk.co.mdc.model.Document;
import uk.co.mdc.model.UmlModel;
import uk.co.mdc.model.Valuedomain;
import uk.co.mdc.web.ApplicationConversionServiceFactoryBean;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<ConceptualDomain, String> ApplicationConversionServiceFactoryBean.getConceptualDomainToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<uk.co.mdc.model.ConceptualDomain, java.lang.String>() {
            public String convert(ConceptualDomain conceptualDomain) {
                return new StringBuilder().append(conceptualDomain.getRefid()).append(' ').append(conceptualDomain.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, ConceptualDomain> ApplicationConversionServiceFactoryBean.getIdToConceptualDomainConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, uk.co.mdc.model.ConceptualDomain>() {
            public uk.co.mdc.model.ConceptualDomain convert(java.lang.Long id) {
                return ConceptualDomain.findConceptualDomain(id);
            }
        };
    }
    
    public Converter<String, ConceptualDomain> ApplicationConversionServiceFactoryBean.getStringToConceptualDomainConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, uk.co.mdc.model.ConceptualDomain>() {
            public uk.co.mdc.model.ConceptualDomain convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ConceptualDomain.class);
            }
        };
    }
    
    public Converter<Dataelement, String> ApplicationConversionServiceFactoryBean.getDataelementToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<uk.co.mdc.model.Dataelement, java.lang.String>() {
            public String convert(Dataelement dataelement) {
                return new StringBuilder().append(dataelement.getRefId()).append(' ').append(dataelement.getParentId()).append(' ').append(dataelement.getVdId()).append(' ').append(dataelement.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, Dataelement> ApplicationConversionServiceFactoryBean.getIdToDataelementConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, uk.co.mdc.model.Dataelement>() {
            public uk.co.mdc.model.Dataelement convert(java.lang.Long id) {
                return Dataelement.findDataelement(id);
            }
        };
    }
    
    public Converter<String, Dataelement> ApplicationConversionServiceFactoryBean.getStringToDataelementConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, uk.co.mdc.model.Dataelement>() {
            public uk.co.mdc.model.Dataelement convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Dataelement.class);
            }
        };
    }
    
    public Converter<Document, String> ApplicationConversionServiceFactoryBean.getDocumentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<uk.co.mdc.model.Document, java.lang.String>() {
            public String convert(Document document) {
                return new StringBuilder().append(document.getName()).append(' ').append(document.getDescription()).append(' ').append(document.getContentType()).append(' ').append(document.getSz()).toString();
            }
        };
    }
    
    public Converter<Long, Document> ApplicationConversionServiceFactoryBean.getIdToDocumentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, uk.co.mdc.model.Document>() {
            public uk.co.mdc.model.Document convert(java.lang.Long id) {
                return Document.findDocument(id);
            }
        };
    }
    
    public Converter<String, Document> ApplicationConversionServiceFactoryBean.getStringToDocumentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, uk.co.mdc.model.Document>() {
            public uk.co.mdc.model.Document convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Document.class);
            }
        };
    }
    
    public Converter<UmlModel, String> ApplicationConversionServiceFactoryBean.getUmlModelToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<uk.co.mdc.model.UmlModel, java.lang.String>() {
            public String convert(UmlModel umlModel) {
                return new StringBuilder().append(umlModel.getRefid()).append(' ').append(umlModel.getConceptId()).append(' ').append(umlModel.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, UmlModel> ApplicationConversionServiceFactoryBean.getIdToUmlModelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, uk.co.mdc.model.UmlModel>() {
            public uk.co.mdc.model.UmlModel convert(java.lang.Long id) {
                return UmlModel.findUmlModel(id);
            }
        };
    }
    
    public Converter<String, UmlModel> ApplicationConversionServiceFactoryBean.getStringToUmlModelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, uk.co.mdc.model.UmlModel>() {
            public uk.co.mdc.model.UmlModel convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), UmlModel.class);
            }
        };
    }
    
    public Converter<Valuedomain, String> ApplicationConversionServiceFactoryBean.getValuedomainToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<uk.co.mdc.model.Valuedomain, java.lang.String>() {
            public String convert(Valuedomain valuedomain) {
                return new StringBuilder().append(valuedomain.getRefid()).append(' ').append(valuedomain.getUnitOfMeasure()).append(' ').append(valuedomain.getRegexDef()).append(' ').append(valuedomain.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, Valuedomain> ApplicationConversionServiceFactoryBean.getIdToValuedomainConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, uk.co.mdc.model.Valuedomain>() {
            public uk.co.mdc.model.Valuedomain convert(java.lang.Long id) {
                return Valuedomain.findValuedomain(id);
            }
        };
    }
    
    public Converter<String, Valuedomain> ApplicationConversionServiceFactoryBean.getStringToValuedomainConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, uk.co.mdc.model.Valuedomain>() {
            public uk.co.mdc.model.Valuedomain convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Valuedomain.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getConceptualDomainToStringConverter());
        registry.addConverter(getIdToConceptualDomainConverter());
        registry.addConverter(getStringToConceptualDomainConverter());
        registry.addConverter(getDataelementToStringConverter());
        registry.addConverter(getIdToDataelementConverter());
        registry.addConverter(getStringToDataelementConverter());
        registry.addConverter(getDocumentToStringConverter());
        registry.addConverter(getIdToDocumentConverter());
        registry.addConverter(getStringToDocumentConverter());
        registry.addConverter(getUmlModelToStringConverter());
        registry.addConverter(getIdToUmlModelConverter());
        registry.addConverter(getStringToUmlModelConverter());
        registry.addConverter(getValuedomainToStringConverter());
        registry.addConverter(getIdToValuedomainConverter());
        registry.addConverter(getStringToValuedomainConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
