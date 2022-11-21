package p168r4;
/* renamed from: r4.q54 */
/* loaded from: classes2.dex */
public final class q54 {

    /* renamed from: a */
    public final d14 f29982a;

    /* renamed from: b */
    public boolean f29983b;

    /* renamed from: c */
    public boolean f29984c;

    /* renamed from: d */
    public boolean f29985d;

    /* renamed from: e */
    public int f29986e;

    /* renamed from: f */
    public int f29987f;

    /* renamed from: g */
    public long f29988g;

    /* renamed from: h */
    public long f29989h;

    public q54(d14 d14Var) {
        this.f29982a = d14Var;
    }

    /* renamed from: a */
    public final void m8023a() {
        this.f29983b = false;
        this.f29984c = false;
        this.f29985d = false;
        this.f29986e = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0019  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8022b(int r5, long r6) {
        /*
            r4 = this;
            r4.f29986e = r5
            r0 = 0
            r4.f29985d = r0
            r1 = 179(0xb3, float:2.51E-43)
            r2 = 182(0xb6, float:2.55E-43)
            r3 = 1
            if (r5 == r2) goto L13
            if (r5 != r1) goto L11
            r5 = 179(0xb3, float:2.51E-43)
            goto L13
        L11:
            r1 = 0
            goto L14
        L13:
            r1 = 1
        L14:
            r4.f29983b = r1
            if (r5 != r2) goto L19
            goto L1a
        L19:
            r3 = 0
        L1a:
            r4.f29984c = r3
            r4.f29987f = r0
            r4.f29989h = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.q54.m8022b(int, long):void");
    }

    /* renamed from: c */
    public final void m8021c(byte[] bArr, int i, int i2) {
        if (this.f29984c) {
            int i3 = this.f29987f;
            int i4 = (i + 1) - i3;
            if (i4 >= i2) {
                this.f29987f = i3 + (i2 - i);
                return;
            }
            this.f29985d = ((bArr[i4] & 192) >> 6) == 0;
            this.f29984c = false;
        }
    }

    /* renamed from: d */
    public final void m8020d(long j, int i, boolean z) {
        if (this.f29986e == 182 && z && this.f29983b) {
            long j2 = this.f29989h;
            if (j2 != -9223372036854775807L) {
                long j3 = this.f29988g;
                this.f29982a.mo4005e(j2, this.f29985d ? 1 : 0, (int) (j - j3), i, null);
            }
        }
        if (this.f29986e != 179) {
            this.f29988g = j;
        }
    }
}
