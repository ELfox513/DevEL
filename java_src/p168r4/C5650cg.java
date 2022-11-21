package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Stack;
/* renamed from: r4.cg */
/* loaded from: classes2.dex */
public final class C5650cg {

    /* renamed from: a */
    public final byte[] f21508a = new byte[8];

    /* renamed from: b */
    public final Stack<C6501zf> f21509b = new Stack<>();

    /* renamed from: c */
    public final C5909jg f21510c = new C5909jg();

    /* renamed from: d */
    public int f21511d;

    /* renamed from: e */
    public int f21512e;

    /* renamed from: f */
    public long f21513f;

    /* renamed from: g */
    public C5725eg f21514g;

    /* renamed from: a */
    public final void m12474a() {
        this.f21511d = 0;
        this.f21509b.clear();
        this.f21510c.m10293a();
    }

    /* renamed from: b */
    public final void m12473b(C5725eg c5725eg) {
        this.f21514g = c5725eg;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
        if (r0 == 1) goto L32;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m12472c(p168r4.C6094of r12) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C5650cg.m12472c(r4.of):boolean");
    }

    /* renamed from: d */
    public final long m12471d(C6094of c6094of, int i) {
        c6094of.m8817b(this.f21508a, 0, i, false);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f21508a[i2] & DefaultClassResolver.NAME);
        }
        return j;
    }
}
