package p168r4;
/* renamed from: r4.qb4 */
/* loaded from: classes2.dex */
public class qb4 {

    /* renamed from: a */
    public int f30079a;

    /* renamed from: a */
    public void mo4041a() {
        this.f30079a = 0;
    }

    /* renamed from: b */
    public final boolean m7891b() {
        return m7885h(Integer.MIN_VALUE);
    }

    /* renamed from: c */
    public final boolean m7890c() {
        return m7885h(4);
    }

    /* renamed from: d */
    public final boolean m7889d() {
        return m7885h(1);
    }

    /* renamed from: e */
    public final boolean m7888e() {
        return m7885h(268435456);
    }

    /* renamed from: f */
    public final void m7887f(int i) {
        this.f30079a = i;
    }

    /* renamed from: g */
    public final void m7886g(int i) {
        this.f30079a |= Integer.MIN_VALUE;
    }

    /* renamed from: h */
    public final boolean m7885h(int i) {
        return (this.f30079a & i) == i;
    }
}
