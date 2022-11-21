package p168r4;
/* renamed from: r4.n1 */
/* loaded from: classes2.dex */
public final class C6042n1 extends AbstractCallableC5710e2 {

    /* renamed from: i */
    public static volatile Long f28072i;

    /* renamed from: j */
    public static final Object f28073j = new Object();

    public C6042n1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2) {
        super(c6338v0, "A1tPgHG2ugzZJCs1M+dp+hmS1POsS+eh/W2v7YCpLDG/34A+E/oOE4ZeCFsAYJwW", "qStL+/rRmChGKiFwdmBpG5d//S+c8NqJKVwR4OiL/ms=", za4Var, i, 22);
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        if (f28072i == null) {
            synchronized (f28073j) {
                if (f28072i == null) {
                    f28072i = (Long) this.f22748f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f22747e) {
            this.f22747e.m4358r0(f28072i.longValue());
        }
    }
}
