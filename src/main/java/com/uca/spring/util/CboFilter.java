package com.uca.spring.util;

public class CboFilter {
	
	private String value;

    private String nombreCompleto;

    public CboFilter(String value, String nombreCompleto) {
        this.value = value;
        this.nombreCompleto = nombreCompleto;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getDescription() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

}
