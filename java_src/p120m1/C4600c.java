package p120m1;

import p015b2.C0448p;
import p129n1.C4699g;
import p129n1.C4702i;
import p156q1.InterfaceC5392b;
/* renamed from: m1.c */
/* loaded from: classes.dex */
public final class C4600c extends AbstractC4618u {

    /* renamed from: b */
    public final int f18643b;

    /* renamed from: c */
    public final int f18644c;

    /* renamed from: d */
    public final C4702i f18645d;

    /* renamed from: e */
    public final C4699g f18646e;

    /* renamed from: f */
    public final InterfaceC5392b f18647f;

    /* renamed from: a */
    public InterfaceC5392b m15936a() {
        return this.f18647f;
    }

    /* renamed from: b */
    public C4699g m15935b() {
        return this.f18646e;
    }

    /* renamed from: d */
    public C4702i m15934d() {
        return this.f18645d;
    }

    /* renamed from: e */
    public int m15933e() {
        return this.f18644c;
    }

    /* renamed from: f */
    public int m15932f() {
        return this.f18643b;
    }

    public C4600c(int i, int i2, C4702i c4702i, C4699g c4699g, InterfaceC5392b interfaceC5392b) {
        super("Code");
        if (i >= 0) {
            if (i2 >= 0) {
                if (c4702i != null) {
                    try {
                        if (!c4699g.isMutable()) {
                            try {
                                if (!interfaceC5392b.isMutable()) {
                                    this.f18643b = i;
                                    this.f18644c = i2;
                                    this.f18645d = c4702i;
                                    this.f18646e = c4699g;
                                    this.f18647f = interfaceC5392b;
                                    return;
                                }
                                throw new C0448p("attributes.isMutable()");
                            } catch (NullPointerException unused) {
                                throw new NullPointerException("attributes == null");
                            }
                        }
                        throw new C0448p("catches.isMutable()");
                    } catch (NullPointerException unused2) {
                        throw new NullPointerException("catches == null");
                    }
                }
                throw new NullPointerException("code == null");
            }
            throw new IllegalArgumentException("maxLocals < 0");
        }
        throw new IllegalArgumentException("maxStack < 0");
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return this.f18645d.m15717a() + 10 + this.f18646e.m15727c() + this.f18647f.mo13341c();
    }
}
