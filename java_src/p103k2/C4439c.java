package p103k2;
/* renamed from: k2.c */
/* loaded from: classes.dex */
public final class C4439c<T> implements InterfaceC4438b<T> {

    /* renamed from: b */
    public static final C4439c<Object> f18458b = new C4439c<>(null);

    /* renamed from: a */
    public final T f18459a;

    /* renamed from: a */
    public static <T> InterfaceC4438b<T> m16483a(T t) {
        return new C4439c(C4440d.m16480c(t, "instance cannot be null"));
    }

    @Override // p171r7.InterfaceC6549a
    public T get() {
        return this.f18459a;
    }

    public C4439c(T t) {
        this.f18459a = t;
    }
}
