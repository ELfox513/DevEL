package p168r4;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.rv1 */
/* loaded from: classes2.dex */
public final class rv1 implements SensorEventListener {

    /* renamed from: a */
    public final Context f30708a;

    /* renamed from: b */
    public SensorManager f30709b;

    /* renamed from: c */
    public Sensor f30710c;

    /* renamed from: d */
    public long f30711d;

    /* renamed from: e */
    public int f30712e;

    /* renamed from: f */
    public qv1 f30713f;

    /* renamed from: g */
    public boolean f30714g;

    public rv1(Context context) {
        this.f30708a = context;
    }

    /* renamed from: a */
    public final void m7322a(qv1 qv1Var) {
        this.f30713f = qv1Var;
    }

    /* renamed from: b */
    public final void m7321b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31128t6)).booleanValue()) {
                return;
            }
            if (this.f30709b == null) {
                SensorManager sensorManager2 = (SensorManager) this.f30708a.getSystemService("sensor");
                this.f30709b = sensorManager2;
                if (sensorManager2 == null) {
                    cm0.m12437f("Shake detection failed to initialize. Failed to obtain accelerometer.");
                    return;
                }
                this.f30710c = sensorManager2.getDefaultSensor(1);
            }
            if (!this.f30714g && (sensorManager = this.f30709b) != null && (sensor = this.f30710c) != null) {
                sensorManager.registerListener(this, sensor, 2);
                this.f30711d = C7601t.m932k().mo24763a() - ((Integer) C5592av.m12935c().m8098c(C6225rz.f31144v6)).intValue();
                this.f30714g = true;
                C0543w1.m26251k("Listening for shake gestures.");
            }
        }
    }

    /* renamed from: c */
    public final void m7320c() {
        synchronized (this) {
            if (this.f30714g) {
                SensorManager sensorManager = this.f30709b;
                if (sensorManager != null) {
                    sensorManager.unregisterListener(this, this.f30710c);
                    C0543w1.m26251k("Stopped listening for shake gestures.");
                }
                this.f30714g = false;
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31128t6)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0] / 9.80665f;
            float f2 = fArr[1] / 9.80665f;
            float f3 = fArr[2] / 9.80665f;
            if (((float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3))) < ((Float) C5592av.m12935c().m8098c(C6225rz.f31136u6)).floatValue()) {
                return;
            }
            long mo24763a = C7601t.m932k().mo24763a();
            if (this.f30711d + ((Integer) C5592av.m12935c().m8098c(C6225rz.f31144v6)).intValue() > mo24763a) {
                return;
            }
            if (this.f30711d + ((Integer) C5592av.m12935c().m8098c(C6225rz.f31152w6)).intValue() < mo24763a) {
                this.f30712e = 0;
            }
            C0543w1.m26251k("Shake detected.");
            this.f30711d = mo24763a;
            int i = this.f30712e + 1;
            this.f30712e = i;
            qv1 qv1Var = this.f30713f;
            if (qv1Var != null) {
                if (i == ((Integer) C5592av.m12935c().m8098c(C6225rz.f31160x6)).intValue()) {
                    iv1 iv1Var = (iv1) qv1Var;
                    iv1Var.m10497k(new ev1(iv1Var), hv1.GESTURE);
                }
            }
        }
    }
}
