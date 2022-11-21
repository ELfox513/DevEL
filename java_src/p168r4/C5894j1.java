package p168r4;
/* renamed from: r4.j1 */
/* loaded from: classes2.dex */
public final class C5894j1 extends AbstractCallableC5710e2 {

    /* renamed from: i */
    public static volatile Long f25852i;

    /* renamed from: j */
    public static final Object f25853j = new Object();

    public C5894j1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2) {
        super(c6338v0, "BZSpo1ki7Qq4VpNbKNY5xp3ObP5b46iKtLhMqj95i84Sl1pKZG1hW1hXSXh30EEu", "LLuZlwuRYspGUGo7OZU51ciMYYFQ89K2r1TLDzvNq9k=", za4Var, i, 44);
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        if (f25852i == null) {
            synchronized (f25853j) {
                if (f25852i == null) {
                    f25852i = (Long) this.f22748f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f22747e) {
            this.f22747e.m4351x(f25852i.longValue());
        }
    }
}
