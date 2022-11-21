package p168r4;
/* renamed from: r4.z64 */
/* loaded from: classes2.dex */
public final class z64 {

    /* renamed from: a */
    public final String f34390a;

    /* renamed from: b */
    public final int f34391b;

    /* renamed from: c */
    public final int f34392c;

    /* renamed from: d */
    public int f34393d;

    /* renamed from: e */
    public String f34394e;

    public z64(int i, int i2, int i3) {
        String str;
        if (i != Integer.MIN_VALUE) {
            StringBuilder sb = new StringBuilder(12);
            sb.append(i);
            sb.append("/");
            str = sb.toString();
        } else {
            str = "";
        }
        this.f34390a = str;
        this.f34391b = i2;
        this.f34392c = i3;
        this.f34393d = Integer.MIN_VALUE;
        this.f34394e = "";
    }

    /* renamed from: a */
    public final void m4416a() {
        int i = this.f34393d;
        int i2 = i == Integer.MIN_VALUE ? this.f34391b : i + this.f34392c;
        this.f34393d = i2;
        String str = this.f34390a;
        StringBuilder sb = new StringBuilder(str.length() + 11);
        sb.append(str);
        sb.append(i2);
        this.f34394e = sb.toString();
    }

    /* renamed from: b */
    public final int m4415b() {
        m4413d();
        return this.f34393d;
    }

    /* renamed from: c */
    public final String m4414c() {
        m4413d();
        return this.f34394e;
    }

    /* renamed from: d */
    public final void m4413d() {
        if (this.f34393d == Integer.MIN_VALUE) {
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }
}
