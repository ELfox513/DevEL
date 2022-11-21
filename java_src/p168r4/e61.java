package p168r4;

import java.util.Arrays;
/* renamed from: r4.e61 */
/* loaded from: classes2.dex */
public final class e61 {

    /* renamed from: c */
    public static final e61 f22857c = new e61(null, new gf0[0], 0, -9223372036854775807L, 0);

    /* renamed from: d */
    public static final gf0 f22858d = new gf0(0).m11183b(0);

    /* renamed from: e */
    public static final InterfaceC5674d3<e61> f22859e = C5560a.f20321a;

    /* renamed from: a */
    public final long f22860a = 0;

    /* renamed from: b */
    public final gf0[] f22861b;

    public e61(Object obj, gf0[] gf0VarArr, long j, long j2, int i) {
        this.f22861b = gf0VarArr;
    }

    /* renamed from: a */
    public final gf0 m11848a(int i) {
        return i < 0 ? f22858d : this.f22861b[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && e61.class == obj.getClass()) {
            e61 e61Var = (e61) obj;
            if (C5979lc.m9729H(null, null) && Arrays.equals(this.f22861b, e61Var.f22861b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) (-9223372036854775807L)) * 961) + Arrays.hashCode(this.f22861b);
    }

    public final String toString() {
        return "AdPlaybackState(adsId=" + ((Object) null) + ", adResumePositionUs=0, adGroups=[])";
    }
}
