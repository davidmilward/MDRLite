// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uk.co.mdc.model;

import uk.co.mdc.model.Document;

privileged aspect Document_Roo_JavaBean {
    
    public String Document.getName() {
        return this.name;
    }
    
    public void Document.setName(String name) {
        this.name = name;
    }
    
    public String Document.getDescription() {
        return this.description;
    }
    
    public void Document.setDescription(String description) {
        this.description = description;
    }
    
    public String Document.getContentType() {
        return this.contentType;
    }
    
    public void Document.setContentType(String contentType) {
        this.contentType = contentType;
    }
    
    public Long Document.getSz() {
        return this.sz;
    }
    
    public void Document.setSz(Long sz) {
        this.sz = sz;
    }
    
    public byte[] Document.getContent() {
        return this.content;
    }
    
    public void Document.setContent(byte[] content) {
        this.content = content;
    }
    
    public String Document.getFilename() {
        return this.filename;
    }
    
    public void Document.setFilename(String filename) {
        this.filename = filename;
    }
    
}
