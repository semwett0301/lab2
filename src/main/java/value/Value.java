package value;

public class Value {
    private double x;
    private double y;
    private double r;
    private String work_time;
    private String current_time;
    private boolean penetration;

    public Value(double x, double y, double r, String work_time, String current_time, boolean penetration) {
        this.x = x;
        this.y = y;
        this.r = r;

        this.work_time = work_time;
        this.current_time = current_time;
        this.penetration = penetration;
    }


    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public double getR() {
        return r;
    }

    public String getWork_time() {
        return work_time;
    }

    public String getCurrent_time() {
        return current_time;
    }

    public boolean isPenetration() {
        return penetration;
    }
}
