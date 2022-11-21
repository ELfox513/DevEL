package androidx.lifecycle;
/* renamed from: androidx.lifecycle.s */
/* loaded from: classes.dex */
public class C0338s {

    /* renamed from: a */
    public final InterfaceC0339a f1250a;

    /* renamed from: b */
    public final C0341t f1251b;

    /* renamed from: androidx.lifecycle.s$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0339a {
        /* renamed from: a */
        <T extends AbstractC0337r> T mo16682a(Class<T> cls);
    }

    /* renamed from: androidx.lifecycle.s$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0340b implements InterfaceC0339a {
        @Override // androidx.lifecycle.C0338s.InterfaceC0339a
        /* renamed from: a */
        public <T extends AbstractC0337r> T mo16682a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        /* renamed from: b */
        public abstract <T extends AbstractC0337r> T m26751b(String str, Class<T> cls);
    }

    /* renamed from: b */
    public <T extends AbstractC0337r> T m26752b(String str, Class<T> cls) {
        T t;
        T t2 = (T) this.f1251b.m26749b(str);
        if (cls.isInstance(t2)) {
            return t2;
        }
        InterfaceC0339a interfaceC0339a = this.f1250a;
        if (interfaceC0339a instanceof AbstractC0340b) {
            t = (T) ((AbstractC0340b) interfaceC0339a).m26751b(str, cls);
        } else {
            t = (T) interfaceC0339a.mo16682a(cls);
        }
        this.f1251b.m26748c(str, t);
        return t;
    }

    public C0338s(C0341t c0341t, InterfaceC0339a interfaceC0339a) {
        this.f1250a = interfaceC0339a;
        this.f1251b = c0341t;
    }

    /* renamed from: a */
    public <T extends AbstractC0337r> T m26753a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m26752b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
