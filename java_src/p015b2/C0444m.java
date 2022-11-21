package p015b2;
/* renamed from: b2.m */
/* loaded from: classes.dex */
public class C0444m extends C0437f {

    /* renamed from: a */
    public final C0441j f1534a;

    public C0444m(int i) {
        super(i);
        this.f1534a = new C0441j(i);
    }

    /* renamed from: C */
    public final void m26453C(int i) {
        this.f1534a.m26461L(i, -1);
    }

    /* renamed from: A */
    public final int m26455A(int i) {
        if (i >= this.f1534a.size()) {
            return -1;
        }
        return this.f1534a.m26470B(i);
    }

    /* renamed from: x */
    public final void m26451x(int i, int i2) {
        int size = this.f1534a.size();
        for (int i3 = 0; i3 <= i - size; i3++) {
            this.f1534a.m26457x(-1);
        }
        this.f1534a.m26461L(i, i2);
    }

    /* renamed from: z */
    public final int m26450z() {
        int size = this.f1534a.size() - 1;
        while (size >= 0 && this.f1534a.m26470B(size) < 0) {
            size--;
        }
        int i = size + 1;
        this.f1534a.m26460M(i);
        return i;
    }

    public C0444m(C0444m c0444m) {
        super(c0444m.size());
        this.f1534a = c0444m.f1534a.m26464I();
        int size = c0444m.size();
        for (int i = 0; i < size; i++) {
            Object obj = c0444m.get0(i);
            if (obj != null) {
                set0(i, obj);
            }
        }
    }

    /* renamed from: B */
    public final void m26454B() {
        int size = size();
        for (int i = 0; i < size; i++) {
            InterfaceC0443l interfaceC0443l = (InterfaceC0443l) get0(i);
            if (interfaceC0443l != null) {
                this.f1534a.m26461L(interfaceC0443l.mo2449a(), i);
            }
        }
    }

    /* renamed from: D */
    public void m26452D(int i, InterfaceC0443l interfaceC0443l) {
        InterfaceC0443l interfaceC0443l2 = (InterfaceC0443l) getOrNull0(i);
        set0(i, interfaceC0443l);
        if (interfaceC0443l2 != null) {
            m26453C(interfaceC0443l2.mo2449a());
        }
        if (interfaceC0443l != null) {
            m26451x(interfaceC0443l.mo2449a(), i);
        }
    }

    @Override // p015b2.C0437f
    public void shrinkToFit() {
        super.shrinkToFit();
        m26454B();
    }
}
