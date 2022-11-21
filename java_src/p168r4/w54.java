package p168r4;
/* renamed from: r4.w54 */
/* loaded from: classes2.dex */
public final class w54 {

    /* renamed from: a */
    public final d14 f33106a;

    /* renamed from: b */
    public long f33107b;

    /* renamed from: c */
    public boolean f33108c;

    /* renamed from: d */
    public int f33109d;

    /* renamed from: e */
    public long f33110e;

    /* renamed from: f */
    public boolean f33111f;

    /* renamed from: g */
    public boolean f33112g;

    /* renamed from: h */
    public boolean f33113h;

    /* renamed from: i */
    public boolean f33114i;

    /* renamed from: j */
    public boolean f33115j;

    /* renamed from: k */
    public long f33116k;

    /* renamed from: l */
    public long f33117l;

    /* renamed from: m */
    public boolean f33118m;

    public w54(d14 d14Var) {
        this.f33106a = d14Var;
    }

    /* renamed from: a */
    public final void m5836a() {
        this.f33111f = false;
        this.f33112g = false;
        this.f33113h = false;
        this.f33114i = false;
        this.f33115j = false;
    }

    /* renamed from: b */
    public final void m5835b(long j, int i, int i2, long j2, boolean z) {
        boolean z2 = false;
        this.f33112g = false;
        this.f33113h = false;
        this.f33110e = j2;
        this.f33109d = 0;
        this.f33107b = j;
        if (i2 >= 32 && i2 != 40) {
            if (this.f33114i && !this.f33115j) {
                if (z) {
                    m5832e(i);
                }
                this.f33114i = false;
            }
            if (i2 <= 35 || i2 == 39) {
                this.f33113h = !this.f33115j;
                this.f33115j = true;
            }
        }
        boolean z3 = i2 >= 16 && i2 <= 21;
        this.f33108c = z3;
        this.f33111f = (z3 || i2 <= 9) ? true : true;
    }

    /* renamed from: c */
    public final void m5834c(byte[] bArr, int i, int i2) {
        if (this.f33111f) {
            int i3 = this.f33109d;
            int i4 = (i + 2) - i3;
            if (i4 >= i2) {
                this.f33109d = i3 + (i2 - i);
                return;
            }
            this.f33112g = (bArr[i4] & 128) != 0;
            this.f33111f = false;
        }
    }

    /* renamed from: d */
    public final void m5833d(long j, int i, boolean z) {
        if (this.f33115j && this.f33112g) {
            this.f33118m = this.f33108c;
            this.f33115j = false;
        } else if (this.f33113h || this.f33112g) {
            if (z && this.f33114i) {
                m5832e(i + ((int) (j - this.f33107b)));
            }
            this.f33116k = this.f33107b;
            this.f33117l = this.f33110e;
            this.f33118m = this.f33108c;
            this.f33114i = true;
        }
    }

    /* renamed from: e */
    public final void m5832e(int i) {
        long j = this.f33117l;
        if (j == -9223372036854775807L) {
            return;
        }
        boolean z = this.f33118m;
        long j2 = this.f33107b;
        long j3 = this.f33116k;
        this.f33106a.mo4005e(j, z ? 1 : 0, (int) (j2 - j3), i, null);
    }
}
