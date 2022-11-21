package p229y4;
/* renamed from: y4.l1 */
/* loaded from: classes2.dex */
public final class C7459l1<T> implements InterfaceC7455k1<T> {

    /* renamed from: b */
    public static final C7459l1<Object> f37223b = new C7459l1<>(null);

    /* renamed from: a */
    public final T f37224a;

    public C7459l1(T t) {
        this.f37224a = t;
    }

    @Override // p229y4.InterfaceC7465n1
    /* renamed from: a */
    public final T mo1390a() {
        return this.f37224a;
    }

    /* renamed from: b */
    public static <T> InterfaceC7455k1<T> m1419b(T t) {
        if (t != null) {
            return new C7459l1(t);
        }
        throw new NullPointerException("instance cannot be null");
    }
}
