package p168r4;
/* renamed from: r4.tr3 */
/* loaded from: classes2.dex */
public final class tr3<T> implements is3, or3 {

    /* renamed from: c */
    public static final Object f31974c = new Object();

    /* renamed from: a */
    public volatile is3<T> f31975a;

    /* renamed from: b */
    public volatile Object f31976b = f31974c;

    public tr3(is3<T> is3Var) {
        this.f31975a = is3Var;
    }

    /* renamed from: c */
    public static <P extends is3<T>, T> or3<T> m6729c(P p) {
        if (p instanceof or3) {
            return (or3) p;
        }
        p.getClass();
        return new tr3(p);
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final T mo4079a() {
        T t = (T) this.f31976b;
        Object obj = f31974c;
        if (t == obj) {
            synchronized (this) {
                t = this.f31976b;
                if (t == obj) {
                    t = this.f31975a.mo4079a();
                    Object obj2 = this.f31976b;
                    if (obj2 != obj && obj2 != t) {
                        String valueOf = String.valueOf(obj2);
                        String valueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 118 + valueOf2.length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.f31976b = t;
                    this.f31975a = null;
                }
            }
        }
        return t;
    }

    /* renamed from: b */
    public static <P extends is3<T>, T> is3<T> m6730b(P p) {
        p.getClass();
        if (p instanceof tr3) {
            return p;
        }
        return new tr3(p);
    }
}
