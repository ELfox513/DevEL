package p168r4;
/* renamed from: r4.hs3 */
/* loaded from: classes2.dex */
public final class hs3<T> implements is3<T> {

    /* renamed from: c */
    public static final Object f24815c = new Object();

    /* renamed from: a */
    public volatile is3<T> f24816a;

    /* renamed from: b */
    public volatile Object f24817b = f24815c;

    public hs3(is3<T> is3Var) {
        this.f24816a = is3Var;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final T mo4079a() {
        T t = (T) this.f24817b;
        if (t == f24815c) {
            is3<T> is3Var = this.f24816a;
            if (is3Var == null) {
                return (T) this.f24817b;
            }
            T mo4079a = is3Var.mo4079a();
            this.f24817b = mo4079a;
            this.f24816a = null;
            return mo4079a;
        }
        return t;
    }

    /* renamed from: b */
    public static <P extends is3<T>, T> is3<T> m10825b(P p) {
        if (!(p instanceof hs3) && !(p instanceof tr3)) {
            p.getClass();
            return new hs3(p);
        }
        return p;
    }
}
