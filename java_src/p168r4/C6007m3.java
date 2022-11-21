package p168r4;
/* renamed from: r4.m3 */
/* loaded from: classes2.dex */
public final class C6007m3 {

    /* renamed from: d */
    public static final C6007m3 f27456d = new C6007m3(0, 0, 0);

    /* renamed from: e */
    public static final InterfaceC5674d3<C6007m3> f27457e = C5970l3.f27055a;

    /* renamed from: a */
    public final int f27458a = 0;

    /* renamed from: b */
    public final int f27459b;

    /* renamed from: c */
    public final int f27460c;

    public C6007m3(int i, int i2, int i3) {
        this.f27459b = i2;
        this.f27460c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6007m3)) {
            return false;
        }
        C6007m3 c6007m3 = (C6007m3) obj;
        int i = c6007m3.f27458a;
        return this.f27459b == c6007m3.f27459b && this.f27460c == c6007m3.f27460c;
    }

    public final int hashCode() {
        return ((this.f27459b + 16337) * 31) + this.f27460c;
    }
}
