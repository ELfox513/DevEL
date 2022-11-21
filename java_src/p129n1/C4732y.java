package p129n1;

import p015b2.C0441j;
import p015b2.C0447o;
/* renamed from: n1.y */
/* loaded from: classes.dex */
public final class C4732y extends C0447o {

    /* renamed from: a */
    public final C0441j f18959a;

    /* renamed from: b */
    public final C0441j f18960b;

    /* renamed from: d */
    public int f18961d;

    public C4732y(int i) {
        super(true);
        this.f18959a = new C0441j(i);
        this.f18960b = new C0441j(i + 1);
        this.f18961d = i;
    }

    /* renamed from: A */
    public int m15510A(int i) {
        return this.f18960b.m26470B(i);
    }

    /* renamed from: B */
    public C0441j m15509B() {
        return this.f18960b;
    }

    /* renamed from: C */
    public int m15508C(int i) {
        return this.f18959a.m26470B(i);
    }

    /* renamed from: D */
    public C0441j m15507D() {
        return this.f18959a;
    }

    public int size() {
        return this.f18961d;
    }

    /* renamed from: z */
    public int m15503z() {
        return this.f18960b.m26470B(this.f18961d);
    }

    @Override // p015b2.C0447o
    public void setImmutable() {
        this.f18959a.setImmutable();
        this.f18960b.setImmutable();
        super.setImmutable();
    }

    /* renamed from: E */
    public void m15506E() {
        throwIfImmutable();
        int i = this.f18961d;
        if (i == this.f18960b.size() - 1) {
            int m26470B = this.f18960b.m26470B(i);
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                int m26470B2 = this.f18960b.m26470B(i3);
                if (m26470B2 != m26470B) {
                    if (i3 != i2) {
                        this.f18960b.m26461L(i2, m26470B2);
                        C0441j c0441j = this.f18959a;
                        c0441j.m26461L(i2, c0441j.m26470B(i3));
                    }
                    i2++;
                }
            }
            if (i2 != i) {
                this.f18959a.m26460M(i2);
                this.f18960b.m26461L(i2, m26470B);
                this.f18960b.m26460M(i2 + 1);
                this.f18961d = i2;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("incomplete instance");
    }

    /* renamed from: F */
    public void m15505F(int i) {
        throwIfImmutable();
        if (i >= 0) {
            if (this.f18960b.size() == this.f18961d) {
                this.f18960b.m26457x(i);
                return;
            }
            throw new RuntimeException("non-default elements not all set");
        }
        throw new IllegalArgumentException("target < 0");
    }

    /* renamed from: x */
    public void m15504x(int i, int i2) {
        throwIfImmutable();
        if (i2 >= 0) {
            this.f18959a.m26457x(i);
            this.f18960b.m26457x(i2);
            return;
        }
        throw new IllegalArgumentException("target < 0");
    }
}
