package Decaf.Model;

public class Bean {
    private int Id;
    private String User;
    private String School;
    private int Funcionalidad;
    private int Confiabilidad;
    private int Usabilidad;
    private int Rendimiento;
    private int Mantenimiento;
    private int PortabilidadmpT;
    private int Seguridad;
    private int Compatibilidad;
    private double Porcentaje;

    private int FkEncuesta;
    private String Encuesta;

    private int on;
    private int count;
    private double genPorc;


    public Bean() {
    }

    public Bean(int id, String user, String school, int funcionalidad, int confiabilidad, int usabilidad, int rendimiento, int mantenimiento, int portabilidadmpT, int seguridad, int compatibilidad, double porcentaje, int fkEncuesta, String encuesta, int on, int count, double genPorc) {
        Id = id;
        User = user;
        School = school;
        Funcionalidad = funcionalidad;
        Confiabilidad = confiabilidad;
        Usabilidad = usabilidad;
        Rendimiento = rendimiento;
        Mantenimiento = mantenimiento;
        PortabilidadmpT = portabilidadmpT;
        Seguridad = seguridad;
        Compatibilidad = compatibilidad;
        Porcentaje = porcentaje;
        FkEncuesta = fkEncuesta;
        Encuesta = encuesta;
        this.on = on;
        this.count = count;
        this.genPorc = genPorc;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getUser() {
        return User;
    }

    public void setUser(String user) {
        User = user;
    }

    public String getSchool() {
        return School;
    }

    public void setSchool(String school) {
        School = school;
    }

    public int getFuncionalidad() {
        return Funcionalidad;
    }

    public void setFuncionalidad(int funcionalidad) {
        Funcionalidad = funcionalidad;
    }

    public int getConfiabilidad() {
        return Confiabilidad;
    }

    public void setConfiabilidad(int confiabilidad) {
        Confiabilidad = confiabilidad;
    }

    public int getUsabilidad() {
        return Usabilidad;
    }

    public void setUsabilidad(int usabilidad) {
        Usabilidad = usabilidad;
    }

    public int getRendimiento() {
        return Rendimiento;
    }

    public void setRendimiento(int rendimiento) {
        Rendimiento = rendimiento;
    }

    public int getMantenimiento() {
        return Mantenimiento;
    }

    public void setMantenimiento(int mantenimiento) {
        Mantenimiento = mantenimiento;
    }

    public int getPortabilidadmpT() {
        return PortabilidadmpT;
    }

    public void setPortabilidadmpT(int portabilidadmpT) {
        PortabilidadmpT = portabilidadmpT;
    }

    public int getSeguridad() {
        return Seguridad;
    }

    public void setSeguridad(int seguridad) {
        Seguridad = seguridad;
    }

    public int getCompatibilidad() {
        return Compatibilidad;
    }

    public void setCompatibilidad(int compatibilidad) {
        Compatibilidad = compatibilidad;
    }

    public double getPorcentaje() {
        return Porcentaje;
    }

    public void setPorcentaje(double porcentaje) {
        Porcentaje = porcentaje;
    }

    public int getFkEncuesta() {
        return FkEncuesta;
    }

    public void setFkEncuesta(int fkEncuesta) {
        FkEncuesta = fkEncuesta;
    }

    public String getEncuesta() {
        return Encuesta;
    }

    public void setEncuesta(String encuesta) {
        Encuesta = encuesta;
    }

    public int getOn() {
        return on;
    }

    public void setOn(int on) {
        this.on = on;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public double getGenPorc() {
        return genPorc;
    }

    public void setGenPorc(double genPorc) {
        this.genPorc = genPorc;
    }
}
