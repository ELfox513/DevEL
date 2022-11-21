package p120m1;

import p129n1.C4695d;
/* renamed from: m1.b */
/* loaded from: classes.dex */
public class C4599b extends AbstractC4618u {

    /* renamed from: b */
    public final C4695d f18641b;

    /* renamed from: c */
    public final int f18642c;

    /* renamed from: a */
    public C4695d m15937a() {
        return this.f18641b;
    }

    @Override // p156q1.InterfaceC5391a
    /* renamed from: c */
    public int mo13348c() {
        return this.f18642c;
    }

    public C4599b(C4695d c4695d) {
        super("BootstrapMethods");
        this.f18641b = c4695d;
        int size = (c4695d.size() * 4) + 8;
        for (int i = 0; i < c4695d.size(); i++) {
            size += c4695d.m15743x(i).m15741a().size() * 2;
        }
        this.f18642c = size;
    }
}
