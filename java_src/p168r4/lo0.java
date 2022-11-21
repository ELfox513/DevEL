package p168r4;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
/* renamed from: r4.lo0 */
/* loaded from: classes2.dex */
public final class lo0 implements SensorEventListener {

    /* renamed from: a */
    public final SensorManager f27283a;

    /* renamed from: c */
    public final Display f27285c;

    /* renamed from: f */
    public float[] f27288f;

    /* renamed from: g */
    public Handler f27289g;

    /* renamed from: h */
    public ko0 f27290h;

    /* renamed from: d */
    public final float[] f27286d = new float[9];

    /* renamed from: e */
    public final float[] f27287e = new float[9];

    /* renamed from: b */
    public final Object f27284b = new Object();

    /* renamed from: c */
    public final void m9601c(ko0 ko0Var) {
        this.f27290h = ko0Var;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    /* renamed from: a */
    public final void m9603a() {
        if (this.f27289g != null) {
            return;
        }
        Sensor defaultSensor = this.f27283a.getDefaultSensor(11);
        if (defaultSensor == null) {
            cm0.m12440c("No Sensor of TYPE_ROTATION_VECTOR");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
        handlerThread.start();
        c03 c03Var = new c03(handlerThread.getLooper());
        this.f27289g = c03Var;
        if (!this.f27283a.registerListener(this, defaultSensor, 0, c03Var)) {
            cm0.m12440c("SensorManager.registerListener failed.");
            m9602b();
        }
    }

    /* renamed from: b */
    public final void m9602b() {
        if (this.f27289g == null) {
            return;
        }
        this.f27283a.unregisterListener(this);
        this.f27289g.post(new jo0(this));
        this.f27289g = null;
    }

    /* renamed from: d */
    public final boolean m9600d(float[] fArr) {
        synchronized (this.f27284b) {
            float[] fArr2 = this.f27288f;
            if (fArr2 == null) {
                return false;
            }
            System.arraycopy(fArr2, 0, fArr, 0, 9);
            return true;
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] != 0.0f || fArr[1] != 0.0f || fArr[2] != 0.0f) {
            synchronized (this.f27284b) {
                if (this.f27288f == null) {
                    this.f27288f = new float[9];
                }
            }
            SensorManager.getRotationMatrixFromVector(this.f27286d, fArr);
            int rotation = this.f27285c.getRotation();
            if (rotation != 1) {
                if (rotation != 2) {
                    if (rotation != 3) {
                        System.arraycopy(this.f27286d, 0, this.f27287e, 0, 9);
                    } else {
                        SensorManager.remapCoordinateSystem(this.f27286d, 130, 1, this.f27287e);
                    }
                } else {
                    SensorManager.remapCoordinateSystem(this.f27286d, 129, 130, this.f27287e);
                }
            } else {
                SensorManager.remapCoordinateSystem(this.f27286d, 2, 129, this.f27287e);
            }
            float[] fArr2 = this.f27287e;
            float f = fArr2[1];
            fArr2[1] = fArr2[3];
            fArr2[3] = f;
            float f2 = fArr2[2];
            fArr2[2] = fArr2[6];
            fArr2[6] = f2;
            float f3 = fArr2[5];
            fArr2[5] = fArr2[7];
            fArr2[7] = f3;
            synchronized (this.f27284b) {
                System.arraycopy(this.f27287e, 0, this.f27288f, 0, 9);
            }
            ko0 ko0Var = this.f27290h;
            if (ko0Var != null) {
                ko0Var.zza();
            }
        }
    }

    public lo0(Context context) {
        this.f27283a = (SensorManager) context.getSystemService("sensor");
        this.f27285c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }
}
