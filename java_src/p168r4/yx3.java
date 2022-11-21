package p168r4;

import java.util.Arrays;
/* renamed from: r4.yx3 */
/* loaded from: classes2.dex */
public final class yx3 {

    /* renamed from: a */
    public long f34242a;

    /* renamed from: b */
    public long f34243b;

    /* renamed from: c */
    public long f34244c;

    /* renamed from: d */
    public long f34245d;

    /* renamed from: e */
    public long f34246e;

    /* renamed from: f */
    public long f34247f;

    /* renamed from: g */
    public final boolean[] f34248g = new boolean[15];

    /* renamed from: h */
    public int f34249h;

    /* renamed from: a */
    public final void m4538a() {
        this.f34245d = 0L;
        this.f34246e = 0L;
        this.f34247f = 0L;
        this.f34249h = 0;
        Arrays.fill(this.f34248g, false);
    }

    /* renamed from: b */
    public final boolean m4537b() {
        return this.f34245d > 15 && this.f34249h == 0;
    }

    /* renamed from: c */
    public final boolean m4536c() {
        long j = this.f34245d;
        if (j == 0) {
            return false;
        }
        return this.f34248g[(int) ((j - 1) % 15)];
    }

    /* renamed from: d */
    public final long m4535d() {
        return this.f34247f;
    }

    /* renamed from: e */
    public final long m4534e() {
        long j = this.f34246e;
        if (j == 0) {
            return 0L;
        }
        return this.f34247f / j;
    }

    /* renamed from: f */
    public final void m4533f(long j) {
        long j2 = this.f34245d;
        if (j2 == 0) {
            this.f34242a = j;
        } else if (j2 == 1) {
            long j3 = j - this.f34242a;
            this.f34243b = j3;
            this.f34247f = j3;
            this.f34246e = 1L;
        } else {
            long j4 = j - this.f34244c;
            int i = (int) (j2 % 15);
            if (Math.abs(j4 - this.f34243b) <= 1000000) {
                this.f34246e++;
                this.f34247f += j4;
                boolean[] zArr = this.f34248g;
                if (zArr[i]) {
                    zArr[i] = false;
                    this.f34249h--;
                }
            } else {
                boolean[] zArr2 = this.f34248g;
                if (!zArr2[i]) {
                    zArr2[i] = true;
                    this.f34249h++;
                }
            }
        }
        this.f34245d++;
        this.f34244c = j;
    }
}
