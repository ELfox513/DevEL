package p168r4;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.tu1 */
/* loaded from: classes2.dex */
public final class tu1 implements SensorEventListener {

    /* renamed from: a */
    public final SensorManager f32023a;

    /* renamed from: b */
    public final Sensor f32024b;

    /* renamed from: c */
    public float f32025c = 0.0f;

    /* renamed from: d */
    public Float f32026d = Float.valueOf(0.0f);

    /* renamed from: e */
    public long f32027e = C7601t.m932k().mo24763a();

    /* renamed from: f */
    public int f32028f = 0;

    /* renamed from: g */
    public boolean f32029g = false;

    /* renamed from: h */
    public boolean f32030h = false;

    /* renamed from: i */
    public su1 f32031i = null;

    /* renamed from: j */
    public boolean f32032j = false;

    /* renamed from: a */
    public final void m6719a(su1 su1Var) {
        this.f32031i = su1Var;
    }

    /* renamed from: b */
    public final void m6718b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31168y6)).booleanValue()) {
                return;
            }
            if (!this.f32032j && (sensorManager = this.f32023a) != null && (sensor = this.f32024b) != null) {
                sensorManager.registerListener(this, sensor, 2);
                this.f32032j = true;
                C0543w1.m26251k("Listening for flick gestures.");
            }
            if (this.f32023a != null && this.f32024b != null) {
                return;
            }
            cm0.m12437f("Flick detection failed to initialize. Failed to obtain gyroscope.");
        }
    }

    /* renamed from: c */
    public final void m6717c() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (this.f32032j && (sensorManager = this.f32023a) != null && (sensor = this.f32024b) != null) {
                sensorManager.unregisterListener(this, sensor);
                this.f32032j = false;
                C0543w1.m26251k("Stopped listening for flick gestures.");
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31168y6)).booleanValue()) {
            return;
        }
        long mo24763a = C7601t.m932k().mo24763a();
        if (this.f32027e + ((Integer) C5592av.m12935c().m8098c(C6225rz.f30765A6)).intValue() < mo24763a) {
            this.f32028f = 0;
            this.f32027e = mo24763a;
            this.f32029g = false;
            this.f32030h = false;
            this.f32025c = this.f32026d.floatValue();
        }
        Float valueOf = Float.valueOf(this.f32026d.floatValue() + (sensorEvent.values[1] * 4.0f));
        this.f32026d = valueOf;
        float floatValue = valueOf.floatValue();
        float f = this.f32025c;
        AbstractC5928jz<Float> abstractC5928jz = C6225rz.f31176z6;
        if (floatValue > f + ((Float) C5592av.m12935c().m8098c(abstractC5928jz)).floatValue()) {
            this.f32025c = this.f32026d.floatValue();
            this.f32030h = true;
        } else if (this.f32026d.floatValue() < this.f32025c - ((Float) C5592av.m12935c().m8098c(abstractC5928jz)).floatValue()) {
            this.f32025c = this.f32026d.floatValue();
            this.f32029g = true;
        }
        if (this.f32026d.isInfinite()) {
            this.f32026d = Float.valueOf(0.0f);
            this.f32025c = 0.0f;
        }
        if (this.f32029g && this.f32030h) {
            C0543w1.m26251k("Flick detected.");
            this.f32027e = mo24763a;
            int i = this.f32028f + 1;
            this.f32028f = i;
            this.f32029g = false;
            this.f32030h = false;
            su1 su1Var = this.f32031i;
            if (su1Var != null) {
                if (i == ((Integer) C5592av.m12935c().m8098c(C6225rz.f30773B6)).intValue()) {
                    iv1 iv1Var = (iv1) su1Var;
                    iv1Var.m10497k(new gv1(iv1Var), hv1.GESTURE);
                }
            }
        }
    }

    public tu1(Context context) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.f32023a = sensorManager;
        if (sensorManager != null) {
            this.f32024b = sensorManager.getDefaultSensor(4);
        } else {
            this.f32024b = null;
        }
    }
}
