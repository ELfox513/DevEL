package p218x1;

import p015b2.InterfaceC0450r;
/* renamed from: x1.a */
/* loaded from: classes.dex */
public abstract class AbstractC7204a implements InterfaceC0450r, Comparable<AbstractC7204a> {
    /* renamed from: d */
    public abstract int mo2048d(AbstractC7204a abstractC7204a);

    /* renamed from: h */
    public abstract boolean mo2047h();

    /* renamed from: j */
    public abstract String mo2042j();

    @Override // java.lang.Comparable
    /* renamed from: c */
    public final int compareTo(AbstractC7204a abstractC7204a) {
        Class<?> cls = getClass();
        Class<?> cls2 = abstractC7204a.getClass();
        if (cls != cls2) {
            return cls.getName().compareTo(cls2.getName());
        }
        return mo2048d(abstractC7204a);
    }
}
