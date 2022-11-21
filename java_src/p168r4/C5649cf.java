package p168r4;
/* renamed from: r4.cf */
/* loaded from: classes2.dex */
public class C5649cf {

    /* renamed from: a */
    public int f21504a;

    /* renamed from: a */
    public void mo10935a() {
        this.f21504a = 0;
    }

    /* renamed from: b */
    public final boolean m12482b() {
        return m12477g(Integer.MIN_VALUE);
    }

    /* renamed from: c */
    public final boolean m12481c() {
        return m12477g(4);
    }

    /* renamed from: d */
    public final boolean m12480d() {
        return m12477g(1);
    }

    /* renamed from: e */
    public final void m12479e(int i) {
        this.f21504a = i;
    }

    /* renamed from: f */
    public final void m12478f(int i) {
        this.f21504a |= Integer.MIN_VALUE;
    }

    /* renamed from: g */
    public final boolean m12477g(int i) {
        return (this.f21504a & i) == i;
    }
}
