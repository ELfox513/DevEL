package p168r4;

import android.media.AudioAttributes;
/* renamed from: r4.dg3 */
/* loaded from: classes2.dex */
public final class dg3 {

    /* renamed from: c */
    public static final dg3 f22251c = new dg3(0, 0, 1, 1, null);

    /* renamed from: d */
    public static final InterfaceC5674d3<dg3> f22252d = hx1.f24899a;

    /* renamed from: a */
    public final int f22253a = 1;

    /* renamed from: b */
    public AudioAttributes f22254b;

    public /* synthetic */ dg3(int i, int i2, int i3, int i4, oo2 oo2Var) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || dg3.class != obj.getClass()) {
            return false;
        }
        dg3 dg3Var = (dg3) obj;
        return true;
    }

    public final int hashCode() {
        return 15699889;
    }

    /* renamed from: a */
    public final AudioAttributes m12138a() {
        if (this.f22254b == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
            if (C5979lc.f27164a >= 29) {
                usage.setAllowedCapturePolicy(1);
            }
            this.f22254b = usage.build();
        }
        return this.f22254b;
    }
}
