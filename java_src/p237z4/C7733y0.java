package p237z4;
/* renamed from: z4.y0 */
/* loaded from: classes2.dex */
public class C7733y0 {

    /* renamed from: d */
    public static final C7614b0 f37921d = C7614b0.m881b();

    /* renamed from: a */
    public AbstractC7652i f37922a;

    /* renamed from: b */
    public volatile InterfaceC7703r1 f37923b;

    /* renamed from: c */
    public volatile AbstractC7652i f37924c;

    public int hashCode() {
        return 1;
    }

    /* renamed from: a */
    public final AbstractC7652i m461a() {
        if (this.f37924c != null) {
            return this.f37924c;
        }
        synchronized (this) {
            if (this.f37924c != null) {
                return this.f37924c;
            }
            if (this.f37923b == null) {
                this.f37924c = AbstractC7652i.f37698b;
            } else {
                this.f37924c = this.f37923b.mo610c();
            }
            return this.f37924c;
        }
    }

    /* renamed from: b */
    public final int m460b() {
        if (this.f37924c != null) {
            return this.f37924c.size();
        }
        if (this.f37923b != null) {
            return this.f37923b.mo609h();
        }
        return 0;
    }

    /* renamed from: c */
    public final InterfaceC7703r1 m459c(InterfaceC7703r1 interfaceC7703r1) {
        if (this.f37923b == null) {
            synchronized (this) {
                if (this.f37923b == null) {
                    try {
                        this.f37923b = interfaceC7703r1;
                        this.f37924c = AbstractC7652i.f37698b;
                    } catch (C7702r0 unused) {
                        this.f37923b = interfaceC7703r1;
                        this.f37924c = AbstractC7652i.f37698b;
                    }
                }
            }
        }
        return this.f37923b;
    }

    /* renamed from: d */
    public final InterfaceC7703r1 m458d(InterfaceC7703r1 interfaceC7703r1) {
        InterfaceC7703r1 interfaceC7703r12 = this.f37923b;
        this.f37922a = null;
        this.f37924c = null;
        this.f37923b = interfaceC7703r1;
        return interfaceC7703r12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7733y0)) {
            return false;
        }
        C7733y0 c7733y0 = (C7733y0) obj;
        InterfaceC7703r1 interfaceC7703r1 = this.f37923b;
        InterfaceC7703r1 interfaceC7703r12 = c7733y0.f37923b;
        if (interfaceC7703r1 == null && interfaceC7703r12 == null) {
            return m461a().equals(c7733y0.m461a());
        }
        if (interfaceC7703r1 != null && interfaceC7703r12 != null) {
            return interfaceC7703r1.equals(interfaceC7703r12);
        }
        if (interfaceC7703r1 != null) {
            return interfaceC7703r1.equals(c7733y0.m459c(interfaceC7703r1.mo590f()));
        }
        return m459c(interfaceC7703r12.mo590f()).equals(interfaceC7703r12);
    }
}
