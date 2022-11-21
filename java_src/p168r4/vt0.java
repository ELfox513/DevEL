package p168r4;
/* renamed from: r4.vt0 */
/* loaded from: classes2.dex */
public final class vt0 {

    /* renamed from: a */
    public final int f32803a;

    /* renamed from: b */
    public final int f32804b;

    /* renamed from: c */
    public final int f32805c;

    public vt0(int i, int i2, int i3) {
        this.f32803a = i;
        this.f32805c = i2;
        this.f32804b = i3;
    }

    /* renamed from: b */
    public static vt0 m6023b() {
        return new vt0(0, 0, 0);
    }

    /* renamed from: c */
    public static vt0 m6022c(int i, int i2) {
        return new vt0(1, i, i2);
    }

    /* renamed from: d */
    public static vt0 m6021d() {
        return new vt0(4, 0, 0);
    }

    /* renamed from: e */
    public static vt0 m6020e() {
        return new vt0(5, 0, 0);
    }

    /* renamed from: f */
    public final boolean m6019f() {
        return this.f32803a == 2;
    }

    /* renamed from: g */
    public final boolean m6018g() {
        return this.f32803a == 3;
    }

    /* renamed from: h */
    public final boolean m6017h() {
        return this.f32803a == 0;
    }

    /* renamed from: i */
    public final boolean m6016i() {
        return this.f32803a == 4;
    }

    /* renamed from: j */
    public final boolean m6015j() {
        return this.f32803a == 5;
    }

    /* renamed from: a */
    public static vt0 m6024a(C6478yt c6478yt) {
        if (c6478yt.f34200k) {
            return new vt0(3, 0, 0);
        }
        if (c6478yt.f34205t) {
            return new vt0(2, 0, 0);
        }
        if (c6478yt.f34204s) {
            return m6023b();
        }
        return m6022c(c6478yt.f34202q, c6478yt.f34199d);
    }
}
