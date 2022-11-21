package p129n1;

import p015b2.C0438g;
import p015b2.C0441j;
import p015b2.InterfaceC0443l;
/* renamed from: n1.e */
/* loaded from: classes.dex */
public final class C4697e implements InterfaceC0443l {

    /* renamed from: a */
    public final int f18850a;

    /* renamed from: b */
    public final int f18851b;

    /* renamed from: c */
    public final int f18852c;

    /* renamed from: d */
    public final C0441j f18853d;

    /* renamed from: e */
    public final C4699g f18854e;

    @Override // p015b2.InterfaceC0443l
    /* renamed from: a */
    public int mo2449a() {
        return this.f18850a;
    }

    /* renamed from: b */
    public C4699g m15739b() {
        return this.f18854e;
    }

    /* renamed from: c */
    public int m15738c() {
        return this.f18852c;
    }

    /* renamed from: d */
    public int m15737d() {
        return this.f18851b;
    }

    /* renamed from: e */
    public C0441j m15736e() {
        return this.f18853d;
    }

    public String toString() {
        return '{' + C0438g.m26478g(this.f18850a) + ": " + C0438g.m26478g(this.f18851b) + ".." + C0438g.m26478g(this.f18852c) + '}';
    }

    public C4697e(int i, int i2, int i3, C0441j c0441j, C4699g c4699g) {
        if (i >= 0) {
            if (i2 >= 0) {
                if (i3 > i2) {
                    if (c0441j != null) {
                        int size = c0441j.size();
                        for (int i4 = 0; i4 < size; i4++) {
                            if (c0441j.m26470B(i4) < 0) {
                                throw new IllegalArgumentException("successors[" + i4 + "] == " + c0441j.m26470B(i4));
                            }
                        }
                        if (c4699g != null) {
                            this.f18850a = i;
                            this.f18851b = i2;
                            this.f18852c = i3;
                            this.f18853d = c0441j;
                            this.f18854e = c4699g;
                            return;
                        }
                        throw new NullPointerException("catches == null");
                    }
                    throw new NullPointerException("targets == null");
                }
                throw new IllegalArgumentException("end <= start");
            }
            throw new IllegalArgumentException("start < 0");
        }
        throw new IllegalArgumentException("label < 0");
    }
}
