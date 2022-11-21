package p168r4;

import java.util.Arrays;
/* renamed from: r4.p44 */
/* loaded from: classes2.dex */
public final class p44 {

    /* renamed from: a */
    public final q44 f29338a = new q44();

    /* renamed from: b */
    public final C6423xb f29339b = new C6423xb(new byte[65025], 0);

    /* renamed from: c */
    public int f29340c = -1;

    /* renamed from: d */
    public int f29341d;

    /* renamed from: e */
    public boolean f29342e;

    /* renamed from: c */
    public final q44 m8487c() {
        return this.f29338a;
    }

    /* renamed from: d */
    public final C6423xb m8486d() {
        return this.f29339b;
    }

    /* renamed from: f */
    public final int m8484f(int i) {
        int i2;
        int i3 = 0;
        this.f29341d = 0;
        do {
            int i4 = this.f29341d;
            int i5 = i + i4;
            q44 q44Var = this.f29338a;
            if (i5 >= q44Var.f29973c) {
                break;
            }
            int[] iArr = q44Var.f29976f;
            this.f29341d = i4 + 1;
            i2 = iArr[i5];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }

    /* renamed from: a */
    public final void m8489a() {
        this.f29338a.m8028a();
        this.f29339b.m5410i(0);
        this.f29340c = -1;
        this.f29342e = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
        return false;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8488b(p168r4.b04 r7) {
        /*
            r6 = this;
            boolean r0 = r6.f29342e
            r1 = 0
            if (r0 != 0) goto L6
            goto Ld
        L6:
            r6.f29342e = r1
            r4.xb r0 = r6.f29339b
            r0.m5410i(r1)
        Ld:
            boolean r0 = r6.f29342e
            r2 = 1
            if (r0 != 0) goto L9b
            int r0 = r6.f29340c
            if (r0 >= 0) goto L4e
            r4.q44 r0 = r6.f29338a
            r3 = -1
            boolean r0 = r0.m8027b(r7, r3)
            if (r0 == 0) goto L4d
            r4.q44 r0 = r6.f29338a
            boolean r0 = r0.m8026c(r7, r2)
            if (r0 != 0) goto L29
            goto L4d
        L29:
            r4.q44 r0 = r6.f29338a
            int r3 = r0.f29974d
            int r0 = r0.f29971a
            r0 = r0 & r2
            if (r0 != r2) goto L42
            r4.xb r0 = r6.f29339b
            int r0 = r0.m5406m()
            if (r0 != 0) goto L42
            int r0 = r6.m8484f(r1)
            int r3 = r3 + r0
            int r0 = r6.f29341d
            goto L43
        L42:
            r0 = 0
        L43:
            boolean r3 = p168r4.e04.m11886d(r7, r3)
            if (r3 != 0) goto L4a
            return r1
        L4a:
            r6.f29340c = r0
            goto L4e
        L4d:
            return r1
        L4e:
            int r0 = r6.m8484f(r0)
            int r3 = r6.f29340c
            int r4 = r6.f29341d
            int r3 = r3 + r4
            if (r0 <= 0) goto L90
            r4.xb r4 = r6.f29339b
            int r5 = r4.m5406m()
            int r5 = r5 + r0
            r4.m5408k(r5)
            r4.xb r4 = r6.f29339b
            byte[] r4 = r4.m5402q()
            r4.xb r5 = r6.f29339b
            int r5 = r5.m5406m()
            boolean r4 = p168r4.e04.m11887c(r7, r4, r5, r0)
            if (r4 != 0) goto L76
            return r1
        L76:
            r4.xb r4 = r6.f29339b
            int r5 = r4.m5406m()
            int r5 = r5 + r0
            r4.m5405n(r5)
            r4.q44 r0 = r6.f29338a
            int[] r0 = r0.f29976f
            int r4 = r3 + (-1)
            r0 = r0[r4]
            r4 = 255(0xff, float:3.57E-43)
            if (r0 == r4) goto L8d
            goto L8e
        L8d:
            r2 = 0
        L8e:
            r6.f29342e = r2
        L90:
            r4.q44 r0 = r6.f29338a
            int r0 = r0.f29973c
            if (r3 != r0) goto L97
            r3 = -1
        L97:
            r6.f29340c = r3
            goto Ld
        L9b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.p44.m8488b(r4.b04):boolean");
    }

    /* renamed from: e */
    public final void m8485e() {
        if (this.f29339b.m5402q().length == 65025) {
            return;
        }
        C6423xb c6423xb = this.f29339b;
        c6423xb.m5409j(Arrays.copyOf(c6423xb.m5402q(), Math.max(65025, this.f29339b.m5406m())), this.f29339b.m5406m());
    }
}
