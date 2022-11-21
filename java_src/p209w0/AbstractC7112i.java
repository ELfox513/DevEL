package p209w0;
/* renamed from: w0.i */
/* loaded from: classes.dex */
public abstract class AbstractC7112i {

    /* renamed from: w0.i$a */
    /* loaded from: classes.dex */
    public class C7113a extends AbstractC7112i {
        @Override // p209w0.AbstractC7112i
        /* renamed from: a */
        public AbstractC7111h mo2492a(String str) {
            return null;
        }
    }

    /* renamed from: c */
    public static AbstractC7112i m2493c() {
        return new C7113a();
    }

    /* renamed from: a */
    public abstract AbstractC7111h mo2492a(String str);

    /* renamed from: b */
    public final AbstractC7111h m2494b(String str) {
        AbstractC7111h mo2492a = mo2492a(str);
        if (mo2492a == null) {
            return AbstractC7111h.m2496a(str);
        }
        return mo2492a;
    }
}
