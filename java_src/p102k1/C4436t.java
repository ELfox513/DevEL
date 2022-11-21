package p102k1;
/* renamed from: k1.t */
/* loaded from: classes.dex */
public final class C4436t implements Comparable<C4436t> {

    /* renamed from: d */
    public static final C4436t f18452d = new C4436t(null, C4409f.f18361j);

    /* renamed from: a */
    public final C4409f f18453a;

    /* renamed from: b */
    public final short[] f18454b;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0021, code lost:
        return p111l1.C4559f.m16007a(r1.length, r5.f18454b.length);
     */
    @Override // java.lang.Comparable
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(p102k1.C4436t r5) {
        /*
            r4 = this;
            r0 = 0
        L1:
            short[] r1 = r4.f18454b
            int r2 = r1.length
            if (r0 >= r2) goto L19
            short[] r2 = r5.f18454b
            int r3 = r2.length
            if (r0 >= r3) goto L19
            short r1 = r1[r0]
            short r2 = r2[r0]
            if (r1 == r2) goto L16
            int r5 = p111l1.C4559f.m16006b(r1, r2)
            return r5
        L16:
            int r0 = r0 + 1
            goto L1
        L19:
            int r0 = r1.length
            short[] r5 = r5.f18454b
            int r5 = r5.length
            int r5 = p111l1.C4559f.m16007a(r0, r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p102k1.C4436t.compareTo(k1.t):int");
    }

    /* renamed from: d */
    public short[] m16486d() {
        return this.f18454b;
    }

    public String toString() {
        String valueOf;
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        int length = this.f18454b.length;
        for (int i = 0; i < length; i++) {
            C4409f c4409f = this.f18453a;
            if (c4409f != null) {
                valueOf = c4409f.m16618w().get(this.f18454b[i]);
            } else {
                valueOf = Short.valueOf(this.f18454b[i]);
            }
            sb.append(valueOf);
        }
        sb.append(")");
        return sb.toString();
    }

    public C4436t(C4409f c4409f, short[] sArr) {
        this.f18453a = c4409f;
        this.f18454b = sArr;
    }
}
