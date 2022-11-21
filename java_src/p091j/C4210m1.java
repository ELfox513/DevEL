package p091j;
/* renamed from: j.m1 */
/* loaded from: classes.dex */
public class C4210m1 {

    /* renamed from: a */
    public int f17941a = 0;

    /* renamed from: b */
    public int f17942b = 0;

    /* renamed from: c */
    public int f17943c = Integer.MIN_VALUE;

    /* renamed from: d */
    public int f17944d = Integer.MIN_VALUE;

    /* renamed from: e */
    public int f17945e = 0;

    /* renamed from: f */
    public int f17946f = 0;

    /* renamed from: g */
    public boolean f17947g = false;

    /* renamed from: h */
    public boolean f17948h = false;

    /* renamed from: a */
    public int m17093a() {
        return this.f17947g ? this.f17941a : this.f17942b;
    }

    /* renamed from: b */
    public int m17092b() {
        return this.f17941a;
    }

    /* renamed from: c */
    public int m17091c() {
        return this.f17942b;
    }

    /* renamed from: d */
    public int m17090d() {
        return this.f17947g ? this.f17942b : this.f17941a;
    }

    /* renamed from: e */
    public void m17089e(int i, int i2) {
        this.f17948h = false;
        if (i != Integer.MIN_VALUE) {
            this.f17945e = i;
            this.f17941a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f17946f = i2;
            this.f17942b = i2;
        }
    }

    /* renamed from: f */
    public void m17088f(boolean z) {
        if (z == this.f17947g) {
            return;
        }
        this.f17947g = z;
        if (this.f17948h) {
            if (z) {
                int i = this.f17944d;
                if (i == Integer.MIN_VALUE) {
                    i = this.f17945e;
                }
                this.f17941a = i;
                int i2 = this.f17943c;
                if (i2 == Integer.MIN_VALUE) {
                    i2 = this.f17946f;
                }
                this.f17942b = i2;
                return;
            }
            int i3 = this.f17943c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = this.f17945e;
            }
            this.f17941a = i3;
            int i4 = this.f17944d;
            if (i4 == Integer.MIN_VALUE) {
                i4 = this.f17946f;
            }
            this.f17942b = i4;
            return;
        }
        this.f17941a = this.f17945e;
        this.f17942b = this.f17946f;
    }

    /* renamed from: g */
    public void m17087g(int i, int i2) {
        this.f17943c = i;
        this.f17944d = i2;
        this.f17948h = true;
        if (this.f17947g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f17941a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f17942b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f17941a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f17942b = i2;
        }
    }
}
