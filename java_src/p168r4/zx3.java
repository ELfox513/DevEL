package p168r4;
/* renamed from: r4.zx3 */
/* loaded from: classes2.dex */
public final class zx3 {

    /* renamed from: c */
    public boolean f34778c;

    /* renamed from: e */
    public int f34780e;

    /* renamed from: a */
    public yx3 f34776a = new yx3();

    /* renamed from: b */
    public yx3 f34777b = new yx3();

    /* renamed from: d */
    public long f34779d = -9223372036854775807L;

    /* renamed from: c */
    public final boolean m4033c() {
        return this.f34776a.m4537b();
    }

    /* renamed from: d */
    public final int m4032d() {
        return this.f34780e;
    }

    /* renamed from: a */
    public final void m4035a() {
        this.f34776a.m4538a();
        this.f34777b.m4538a();
        this.f34778c = false;
        this.f34779d = -9223372036854775807L;
        this.f34780e = 0;
    }

    /* renamed from: b */
    public final void m4034b(long j) {
        this.f34776a.m4533f(j);
        int i = 0;
        if (this.f34776a.m4537b()) {
            this.f34778c = false;
        } else if (this.f34779d != -9223372036854775807L) {
            if (!this.f34778c || this.f34777b.m4536c()) {
                this.f34777b.m4538a();
                this.f34777b.m4533f(this.f34779d);
            }
            this.f34778c = true;
            this.f34777b.m4533f(j);
        }
        if (this.f34778c && this.f34777b.m4537b()) {
            yx3 yx3Var = this.f34776a;
            this.f34776a = this.f34777b;
            this.f34777b = yx3Var;
            this.f34778c = false;
        }
        this.f34779d = j;
        if (!this.f34776a.m4537b()) {
            i = this.f34780e + 1;
        }
        this.f34780e = i;
    }

    /* renamed from: e */
    public final long m4031e() {
        if (this.f34776a.m4537b()) {
            return this.f34776a.m4535d();
        }
        return -9223372036854775807L;
    }

    /* renamed from: f */
    public final long m4030f() {
        if (this.f34776a.m4537b()) {
            return this.f34776a.m4534e();
        }
        return -9223372036854775807L;
    }

    /* renamed from: g */
    public final float m4029g() {
        if (this.f34776a.m4537b()) {
            double m4534e = this.f34776a.m4534e();
            Double.isNaN(m4534e);
            return (float) (1.0E9d / m4534e);
        }
        return -1.0f;
    }
}
