package p168r4;

import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: r4.aj */
/* loaded from: classes2.dex */
public final class C5580aj implements InterfaceC6393wi {

    /* renamed from: a */
    public final InterfaceC6393wi[] f20490a;

    /* renamed from: b */
    public final ArrayList<InterfaceC6393wi> f20491b;

    /* renamed from: k */
    public InterfaceC6356vi f20493k;

    /* renamed from: p */
    public AbstractC6277td f20494p;

    /* renamed from: r */
    public C6504zi f20496r;

    /* renamed from: d */
    public final C6240sd f20492d = new C6240sd();

    /* renamed from: q */
    public int f20495q = -1;

    public C5580aj(InterfaceC6393wi... interfaceC6393wiArr) {
        this.f20490a = interfaceC6393wiArr;
        this.f20491b = new ArrayList<>(Arrays.asList(interfaceC6393wiArr));
    }

    @Override // p168r4.InterfaceC6393wi
    /* renamed from: c */
    public final void mo5718c(InterfaceC6461yc interfaceC6461yc, boolean z, InterfaceC6356vi interfaceC6356vi) {
        this.f20493k = interfaceC6356vi;
        int i = 0;
        while (true) {
            InterfaceC6393wi[] interfaceC6393wiArr = this.f20490a;
            if (i >= interfaceC6393wiArr.length) {
                return;
            }
            interfaceC6393wiArr[i].mo5718c(interfaceC6461yc, false, new C6467yi(this, i));
            i++;
        }
    }

    /* renamed from: f */
    public static /* synthetic */ void m13010f(C5580aj c5580aj, int i, AbstractC6277td abstractC6277td, Object obj) {
        C6504zi c6504zi;
        if (c5580aj.f20496r == null) {
            for (int i2 = 0; i2 <= 0; i2++) {
                abstractC6277td.m6872g(i2, c5580aj.f20492d, false);
            }
            int i3 = c5580aj.f20495q;
            if (i3 == -1) {
                c5580aj.f20495q = 1;
            } else if (i3 != 1) {
                c6504zi = new C6504zi(1);
                c5580aj.f20496r = c6504zi;
            }
            c6504zi = null;
            c5580aj.f20496r = c6504zi;
        }
        if (c5580aj.f20496r == null) {
            c5580aj.f20491b.remove(c5580aj.f20490a[i]);
            if (i == 0) {
                c5580aj.f20494p = abstractC6277td;
            }
            if (c5580aj.f20491b.isEmpty()) {
                c5580aj.f20493k.mo4701f(c5580aj.f20494p, null);
            }
        }
    }

    @Override // p168r4.InterfaceC6393wi
    /* renamed from: a */
    public final void mo5720a() {
        C6504zi c6504zi = this.f20496r;
        if (c6504zi == null) {
            for (InterfaceC6393wi interfaceC6393wi : this.f20490a) {
                interfaceC6393wi.mo5720a();
            }
            return;
        }
        throw c6504zi;
    }

    @Override // p168r4.InterfaceC6393wi
    /* renamed from: b */
    public final void mo5719b(InterfaceC6319ui interfaceC6319ui) {
        C6430xi c6430xi = (C6430xi) interfaceC6319ui;
        int i = 0;
        while (true) {
            InterfaceC6393wi[] interfaceC6393wiArr = this.f20490a;
            if (i < interfaceC6393wiArr.length) {
                interfaceC6393wiArr[i].mo5719b(c6430xi.f33604a[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // p168r4.InterfaceC6393wi
    /* renamed from: d */
    public final InterfaceC6319ui mo5717d(int i, C5913jk c5913jk) {
        int length = this.f20490a.length;
        InterfaceC6319ui[] interfaceC6319uiArr = new InterfaceC6319ui[length];
        for (int i2 = 0; i2 < length; i2++) {
            interfaceC6319uiArr[i2] = this.f20490a[i2].mo5717d(i, c5913jk);
        }
        return new C6430xi(interfaceC6319uiArr);
    }

    @Override // p168r4.InterfaceC6393wi
    /* renamed from: e */
    public final void mo5716e() {
        for (InterfaceC6393wi interfaceC6393wi : this.f20490a) {
            interfaceC6393wi.mo5716e();
        }
    }
}
