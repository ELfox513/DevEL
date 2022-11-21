package p229y4;
/* renamed from: y4.j1 */
/* loaded from: classes2.dex */
public final class C7451j1<T> implements InterfaceC7465n1<T> {

    /* renamed from: c */
    public static final Object f37196c = new Object();

    /* renamed from: a */
    public volatile InterfaceC7465n1<T> f37197a;

    /* renamed from: b */
    public volatile Object f37198b = f37196c;

    public C7451j1(InterfaceC7465n1<T> interfaceC7465n1) {
        this.f37197a = interfaceC7465n1;
    }

    @Override // p229y4.InterfaceC7465n1
    /* renamed from: a */
    public final T mo1390a() {
        T t = (T) this.f37198b;
        Object obj = f37196c;
        if (t == obj) {
            synchronized (this) {
                t = this.f37198b;
                if (t == obj) {
                    t = this.f37197a.mo1390a();
                    Object obj2 = this.f37198b;
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
                    this.f37198b = t;
                    this.f37197a = null;
                }
            }
        }
        return t;
    }

    /* renamed from: b */
    public static <P extends InterfaceC7465n1<T>, T> InterfaceC7465n1<T> m1431b(P p) {
        p.getClass();
        if (p instanceof C7451j1) {
            return p;
        }
        return new C7451j1(p);
    }
}
