package p168r4;
/* renamed from: r4.z1 */
/* loaded from: classes2.dex */
public final class C6487z1 extends AbstractCallableC5710e2 {

    /* renamed from: i */
    public static volatile Long f34278i;

    /* renamed from: j */
    public static final Object f34279j = new Object();

    public C6487z1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2) {
        super(c6338v0, "kgLg33QaU762V6pmSw9NTYQDT3UN+SfZqKWL+LtHgczBAmljOlYdBxhmK655CLWm", "WLzuG2U+Kkbg0oKQlrLQGRQCiSGGQTHe1FZJKw3vRH0=", za4Var, i, 33);
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        if (f34278i == null) {
            synchronized (f34279j) {
                if (f34278i == null) {
                    f34278i = (Long) this.f22748f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f22747e) {
            this.f22747e.m4350x0(f34278i.longValue());
        }
    }
}
