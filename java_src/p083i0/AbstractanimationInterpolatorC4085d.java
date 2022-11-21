package p083i0;

import android.view.animation.Interpolator;
/* renamed from: i0.d  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AbstractanimationInterpolatorC4085d implements Interpolator {

    /* renamed from: a */
    public final float[] f17665a;

    /* renamed from: b */
    public final float f17666b;

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f17665a;
        int min = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.f17666b;
        float f3 = (f - (min * f2)) / f2;
        float[] fArr2 = this.f17665a;
        float f4 = fArr2[min];
        return f4 + (f3 * (fArr2[min + 1] - f4));
    }

    public AbstractanimationInterpolatorC4085d(float[] fArr) {
        this.f17665a = fArr;
        this.f17666b = 1.0f / (fArr.length - 1);
    }
}
