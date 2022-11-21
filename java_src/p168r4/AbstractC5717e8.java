package p168r4;

import android.util.Log;
import android.util.Pair;
/* renamed from: r4.e8 */
/* loaded from: classes2.dex */
public abstract class AbstractC5717e8 {

    /* renamed from: a */
    public static final AbstractC5717e8 f22905a = new C6493z7();

    /* renamed from: b */
    public static final InterfaceC5674d3<AbstractC5717e8> f22906b = C6456y7.f33987a;

    /* renamed from: a */
    public abstract int mo4076a();

    /* renamed from: b */
    public int mo6726b(int i, int i2, boolean z) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    if (i == mo6724d(z)) {
                        return mo6723e(z);
                    }
                    return i + 1;
                }
                throw new IllegalStateException();
            }
            return i;
        } else if (i == mo6724d(z)) {
            return -1;
        } else {
            return i + 1;
        }
    }

    /* renamed from: c */
    public int mo6725c(int i, int i2, boolean z) {
        if (i == mo6723e(false)) {
            return -1;
        }
        return i - 1;
    }

    /* renamed from: d */
    public int mo6724d(boolean z) {
        if (m11843k()) {
            return -1;
        }
        return mo4076a() - 1;
    }

    /* renamed from: e */
    public int mo6723e(boolean z) {
        return m11843k() ? -1 : 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC5717e8)) {
            return false;
        }
        AbstractC5717e8 abstractC5717e8 = (AbstractC5717e8) obj;
        if (abstractC5717e8.mo4076a() != mo4076a() || abstractC5717e8.mo4074g() != mo4074g()) {
            return false;
        }
        C5679d8 c5679d8 = new C5679d8();
        C5606b8 c5606b8 = new C5606b8();
        C5679d8 c5679d82 = new C5679d8();
        C5606b8 c5606b82 = new C5606b8();
        for (int i = 0; i < mo4076a(); i++) {
            if (!mo4075f(i, c5679d8, 0L).equals(abstractC5717e8.mo4075f(i, c5679d82, 0L))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < mo4074g(); i2++) {
            if (!mo4073h(i2, c5606b8, true).equals(abstractC5717e8.mo4073h(i2, c5606b82, true))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public abstract C5679d8 mo4075f(int i, C5679d8 c5679d8, long j);

    /* renamed from: g */
    public abstract int mo4074g();

    /* renamed from: h */
    public abstract C5606b8 mo4073h(int i, C5606b8 c5606b8, boolean z);

    /* renamed from: i */
    public abstract int mo4072i(Object obj);

    /* renamed from: j */
    public abstract Object mo4071j(int i);

    /* renamed from: k */
    public final boolean m11843k() {
        return mo4076a() == 0;
    }

    /* renamed from: l */
    public final int m11842l(int i, C5606b8 c5606b8, C5679d8 c5679d8, int i2, boolean z) {
        int i3 = mo4073h(i, c5606b8, false).f20895c;
        if (mo4075f(i3, c5679d8, 0L).f22159n == i) {
            int mo6726b = mo6726b(i3, i2, z);
            if (mo6726b == -1) {
                return -1;
            }
            return mo4075f(mo6726b, c5679d8, 0L).f22158m;
        }
        return i + 1;
    }

    /* renamed from: o */
    public C5606b8 mo6932o(Object obj, C5606b8 c5606b8) {
        return mo4073h(mo4072i(obj), c5606b8, true);
    }

    public final int hashCode() {
        C5679d8 c5679d8 = new C5679d8();
        C5606b8 c5606b8 = new C5606b8();
        int mo4076a = mo4076a() + 217;
        for (int i = 0; i < mo4076a(); i++) {
            mo4076a = (mo4076a * 31) + mo4075f(i, c5679d8, 0L).hashCode();
        }
        int mo4074g = (mo4076a * 31) + mo4074g();
        for (int i2 = 0; i2 < mo4074g(); i2++) {
            mo4074g = (mo4074g * 31) + mo4073h(i2, c5606b8, true).hashCode();
        }
        return mo4074g;
    }

    /* renamed from: m */
    public final Pair<Object, Long> m11841m(C5679d8 c5679d8, C5606b8 c5606b8, int i, long j) {
        Pair<Object, Long> m11840n = m11840n(c5679d8, c5606b8, i, j, 0L);
        m11840n.getClass();
        return m11840n;
    }

    /* renamed from: n */
    public final Pair<Object, Long> m11840n(C5679d8 c5679d8, C5606b8 c5606b8, int i, long j, long j2) {
        C5903ja.m10372c(i, 0, mo4076a());
        mo4075f(i, c5679d8, j2);
        if (j == -9223372036854775807L) {
            long j3 = c5679d8.f22156k;
            j = 0;
        }
        int i2 = c5679d8.f22158m;
        mo4073h(i2, c5606b8, false);
        while (i2 < c5679d8.f22159n) {
            long j4 = c5606b8.f20897e;
            if (j == 0) {
                break;
            }
            int i3 = i2 + 1;
            long j5 = mo4073h(i3, c5606b8, false).f20897e;
            if (j < 0) {
                break;
            }
            i2 = i3;
        }
        mo4073h(i2, c5606b8, true);
        long j6 = c5606b8.f20897e;
        long j7 = c5606b8.f20896d;
        if (j7 != -9223372036854775807L) {
            j = Math.min(j, j7 - 1);
        }
        long max = Math.max(0L, j);
        if (max == 9) {
            Log.e("XXX", "YYY");
        }
        Object obj = c5606b8.f20894b;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(max));
    }
}
