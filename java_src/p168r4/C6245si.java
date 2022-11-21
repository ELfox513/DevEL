package p168r4;

import android.net.Uri;
import android.os.Handler;
/* renamed from: r4.si */
/* loaded from: classes2.dex */
public final class C6245si implements InterfaceC6393wi, InterfaceC6356vi {

    /* renamed from: a */
    public final Uri f31360a;

    /* renamed from: b */
    public final InterfaceC5729ek f31361b;

    /* renamed from: d */
    public final InterfaceC6205rf f31362d;

    /* renamed from: k */
    public final int f31363k;

    /* renamed from: p */
    public final Handler f31364p;

    /* renamed from: q */
    public final InterfaceC6208ri f31365q;

    /* renamed from: r */
    public final C6203rd f31366r = new C6203rd();

    /* renamed from: s */
    public final int f31367s;

    /* renamed from: t */
    public InterfaceC6356vi f31368t;

    /* renamed from: u */
    public AbstractC6277td f31369u;

    /* renamed from: v */
    public boolean f31370v;

    public C6245si(Uri uri, InterfaceC5729ek interfaceC5729ek, InterfaceC6205rf interfaceC6205rf, int i, Handler handler, InterfaceC6208ri interfaceC6208ri, String str, int i2) {
        this.f31360a = uri;
        this.f31361b = interfaceC5729ek;
        this.f31362d = interfaceC6205rf;
        this.f31363k = i;
        this.f31364p = handler;
        this.f31365q = interfaceC6208ri;
        this.f31367s = i2;
    }

    @Override // p168r4.InterfaceC6393wi
    /* renamed from: a */
    public final void mo5720a() {
    }

    @Override // p168r4.InterfaceC6393wi
    /* renamed from: b */
    public final void mo5719b(InterfaceC6319ui interfaceC6319ui) {
        ((C6171qi) interfaceC6319ui).m7841C();
    }

    @Override // p168r4.InterfaceC6393wi
    /* renamed from: e */
    public final void mo5716e() {
        this.f31368t = null;
    }

    @Override // p168r4.InterfaceC6393wi
    /* renamed from: c */
    public final void mo5718c(InterfaceC6461yc interfaceC6461yc, boolean z, InterfaceC6356vi interfaceC6356vi) {
        this.f31368t = interfaceC6356vi;
        C5949kj c5949kj = new C5949kj(-9223372036854775807L, false);
        this.f31369u = c5949kj;
        interfaceC6356vi.mo4701f(c5949kj, null);
    }

    @Override // p168r4.InterfaceC6393wi
    /* renamed from: d */
    public final InterfaceC6319ui mo5717d(int i, C5913jk c5913jk) {
        boolean z;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        C6358vk.m6140a(z);
        return new C6171qi(this.f31360a, this.f31361b.zza(), this.f31362d.zza(), this.f31363k, this.f31364p, this.f31365q, this, c5913jk, null, this.f31367s, null);
    }

    @Override // p168r4.InterfaceC6356vi
    /* renamed from: f */
    public final void mo4701f(AbstractC6277td abstractC6277td, Object obj) {
        C6203rd c6203rd = this.f31366r;
        boolean z = false;
        abstractC6277td.mo6875d(0, c6203rd, false);
        if (c6203rd.f30534c != -9223372036854775807L) {
            z = true;
        }
        if (this.f31370v && !z) {
            return;
        }
        this.f31369u = abstractC6277td;
        this.f31370v = z;
        this.f31368t.mo4701f(abstractC6277td, null);
    }
}
