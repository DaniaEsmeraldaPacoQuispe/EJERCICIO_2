
package com.emergentes;


public class Tarea {
    private int id;
    private String tarea;
    private String completado;

    public Tarea() {
    }

    public Tarea(int id, String tarea, String completado) {
        this.id = id;
        this.tarea = tarea;
        this.completado = completado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }

    public String getCompletado() {
        return completado;
    }

    public void setCompletado(String completado) {
        this.completado = completado;
    }
}
