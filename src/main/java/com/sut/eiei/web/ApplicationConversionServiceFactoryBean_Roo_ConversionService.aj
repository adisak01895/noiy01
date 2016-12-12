// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.eiei.web;

import com.sut.eiei.domain.Eiei;
import com.sut.eiei.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Eiei, String> ApplicationConversionServiceFactoryBean.getEieiToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.sut.eiei.domain.Eiei, java.lang.String>() {
            public String convert(Eiei eiei) {
                return new StringBuilder().append(eiei.getEieiza()).toString();
            }
        };
    }
    
    public Converter<Long, Eiei> ApplicationConversionServiceFactoryBean.getIdToEieiConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.sut.eiei.domain.Eiei>() {
            public com.sut.eiei.domain.Eiei convert(java.lang.Long id) {
                return Eiei.findEiei(id);
            }
        };
    }
    
    public Converter<String, Eiei> ApplicationConversionServiceFactoryBean.getStringToEieiConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.sut.eiei.domain.Eiei>() {
            public com.sut.eiei.domain.Eiei convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Eiei.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getEieiToStringConverter());
        registry.addConverter(getIdToEieiConverter());
        registry.addConverter(getStringToEieiConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
