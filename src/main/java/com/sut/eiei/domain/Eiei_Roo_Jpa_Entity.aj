// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.eiei.domain;

import com.sut.eiei.domain.Eiei;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Eiei_Roo_Jpa_Entity {
    
    declare @type: Eiei: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Eiei.id;
    
    @Version
    @Column(name = "version")
    private Integer Eiei.version;
    
    public Long Eiei.getId() {
        return this.id;
    }
    
    public void Eiei.setId(Long id) {
        this.id = id;
    }
    
    public Integer Eiei.getVersion() {
        return this.version;
    }
    
    public void Eiei.setVersion(Integer version) {
        this.version = version;
    }
    
}
