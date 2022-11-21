package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.ArrayDeque;
/* renamed from: r4.j24 */
/* loaded from: classes2.dex */
public final class j24 {

    /* renamed from: a */
    public final byte[] f25870a = new byte[8];

    /* renamed from: b */
    public final ArrayDeque<g24> f25871b = new ArrayDeque<>();

    /* renamed from: c */
    public final s24 f25872c = new s24();

    /* renamed from: d */
    public k24 f25873d;

    /* renamed from: e */
    public int f25874e;

    /* renamed from: f */
    public int f25875f;

    /* renamed from: g */
    public long f25876g;

    /* renamed from: a */
    public final void m10432a(k24 k24Var) {
        this.f25873d = k24Var;
    }

    /* renamed from: b */
    public final void m10431b() {
        this.f25874e = 0;
        this.f25871b.clear();
        this.f25872c.m7231a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0087, code lost:
        if (r0 == 1) goto L29;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m10430c(p168r4.b04 r13) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.j24.m10430c(r4.b04):boolean");
    }

    /* renamed from: d */
    public final long m10429d(b04 b04Var, int i) {
        ((vz3) b04Var).mo5961f(this.f25870a, 0, i, false);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f25870a[i2] & DefaultClassResolver.NAME);
        }
        return j;
    }
}
