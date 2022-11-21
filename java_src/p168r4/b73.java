package p168r4;

import java.util.Set;
/* renamed from: r4.b73 */
/* loaded from: classes2.dex */
public final class b73 extends y63 {
    public /* synthetic */ b73(z63 z63Var) {
        super(null);
    }

    @Override // p168r4.y63
    /* renamed from: a */
    public final void mo4829a(c73<?> c73Var, Set<Throwable> set, Set<Throwable> set2) {
        Set set3;
        synchronized (c73Var) {
            set3 = c73Var.f21434s;
            if (set3 == null) {
                c73Var.f21434s = set2;
            }
        }
    }

    @Override // p168r4.y63
    /* renamed from: b */
    public final int mo4828b(c73<?> c73Var) {
        int i;
        int i2;
        synchronized (c73Var) {
            i = c73Var.f21435t;
            i2 = i - 1;
            c73Var.f21435t = i2;
        }
        return i2;
    }
}
