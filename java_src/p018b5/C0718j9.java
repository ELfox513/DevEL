package p018b5;
/* renamed from: b5.j9 */
/* loaded from: classes2.dex */
public class C0718j9 {

    /* renamed from: c */
    public static final C0734k8 f1919c = C0734k8.m25701a();

    /* renamed from: a */
    public volatile InterfaceC0634ea f1920a;

    /* renamed from: b */
    public volatile AbstractC0937w7 f1921b;

    /* renamed from: a */
    public final int m25739a() {
        if (this.f1921b != null) {
            return ((C0886t7) this.f1921b).f2316p.length;
        }
        if (this.f1920a != null) {
            return this.f1920a.mo24973t0();
        }
        return 0;
    }

    public int hashCode() {
        return 1;
    }

    /* renamed from: b */
    public final AbstractC0937w7 m25738b() {
        if (this.f1921b != null) {
            return this.f1921b;
        }
        synchronized (this) {
            if (this.f1921b != null) {
                return this.f1921b;
            }
            if (this.f1920a == null) {
                this.f1921b = AbstractC0937w7.f2373b;
            } else {
                this.f1921b = this.f1920a.mo25981j0();
            }
            return this.f1921b;
        }
    }

    /* renamed from: c */
    public final void m25737c(InterfaceC0634ea interfaceC0634ea) {
        if (this.f1920a != null) {
            return;
        }
        synchronized (this) {
            if (this.f1920a == null) {
                try {
                    this.f1920a = interfaceC0634ea;
                    this.f1921b = AbstractC0937w7.f2373b;
                } catch (C0684h9 unused) {
                    this.f1920a = interfaceC0634ea;
                    this.f1921b = AbstractC0937w7.f2373b;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0718j9)) {
            return false;
        }
        C0718j9 c0718j9 = (C0718j9) obj;
        InterfaceC0634ea interfaceC0634ea = this.f1920a;
        InterfaceC0634ea interfaceC0634ea2 = c0718j9.f1920a;
        if (interfaceC0634ea == null && interfaceC0634ea2 == null) {
            return m25738b().equals(c0718j9.m25738b());
        }
        if (interfaceC0634ea != null && interfaceC0634ea2 != null) {
            return interfaceC0634ea.equals(interfaceC0634ea2);
        }
        if (interfaceC0634ea != null) {
            c0718j9.m25737c(interfaceC0634ea.mo24987a());
            return interfaceC0634ea.equals(c0718j9.f1920a);
        }
        m25737c(interfaceC0634ea2.mo24987a());
        return this.f1920a.equals(interfaceC0634ea2);
    }
}
