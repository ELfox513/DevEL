package p218x1;

import net.bytebuddy.description.method.MethodDescription;
import p226y1.C7402c;
/* renamed from: x1.a0 */
/* loaded from: classes.dex */
public final class C7205a0 extends AbstractC7204a {

    /* renamed from: d */
    public static final C7205a0 f36550d = new C7205a0(new C7212d0("TYPE"), new C7212d0("Ljava/lang/Class;"));

    /* renamed from: a */
    public final C7212d0 f36551a;

    /* renamed from: b */
    public final C7212d0 f36552b;

    /* renamed from: A */
    public final boolean m2131A() {
        return this.f36551a.m2112u().equals(MethodDescription.CONSTRUCTOR_INTERNAL_NAME);
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public boolean mo2047h() {
        return false;
    }

    public int hashCode() {
        return (this.f36551a.hashCode() * 31) ^ this.f36552b.hashCode();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "nat";
    }

    /* renamed from: n */
    public C7212d0 m2130n() {
        return this.f36552b;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return this.f36551a.toHuman() + ':' + this.f36552b.toHuman();
    }

    public String toString() {
        return "nat{" + toHuman() + '}';
    }

    /* renamed from: u */
    public C7402c m2129u() {
        return C7402c.m1543D(this.f36552b.m2112u());
    }

    /* renamed from: x */
    public C7212d0 m2128x() {
        return this.f36551a;
    }

    /* renamed from: z */
    public final boolean m2127z() {
        return this.f36551a.m2112u().equals(MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME);
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        C7205a0 c7205a0 = (C7205a0) abstractC7204a;
        int compareTo = this.f36551a.compareTo(c7205a0.f36551a);
        if (compareTo != 0) {
            return compareTo;
        }
        return this.f36552b.compareTo(c7205a0.f36552b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C7205a0)) {
            return false;
        }
        C7205a0 c7205a0 = (C7205a0) obj;
        if (!this.f36551a.equals(c7205a0.f36551a) || !this.f36552b.equals(c7205a0.f36552b)) {
            return false;
        }
        return true;
    }

    public C7205a0(C7212d0 c7212d0, C7212d0 c7212d02) {
        if (c7212d0 != null) {
            if (c7212d02 != null) {
                this.f36551a = c7212d0;
                this.f36552b = c7212d02;
                return;
            }
            throw new NullPointerException("descriptor == null");
        }
        throw new NullPointerException("name == null");
    }
}
