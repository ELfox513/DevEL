package p085i2;

import p058f2.AbstractC3504c;
import p058f2.C3503b;
import p058f2.InterfaceC3506e;
import p058f2.InterfaceC3507f;
import p058f2.InterfaceC3509h;
/* renamed from: i2.p */
/* loaded from: classes.dex */
public final class C4117p<T> implements InterfaceC3507f<T> {

    /* renamed from: a */
    public final AbstractC4113m f17720a;

    /* renamed from: b */
    public final String f17721b;

    /* renamed from: c */
    public final C3503b f17722c;

    /* renamed from: d */
    public final InterfaceC3506e<T, byte[]> f17723d;

    /* renamed from: e */
    public final InterfaceC4118q f17724e;

    /* renamed from: d */
    public static /* synthetic */ void m17343d(Exception exc) {
    }

    @Override // p058f2.InterfaceC3507f
    /* renamed from: b */
    public void mo17345b(AbstractC3504c<T> abstractC3504c) {
        mo17346a(abstractC3504c, new InterfaceC3509h() { // from class: i2.o
            @Override // p058f2.InterfaceC3509h
            /* renamed from: a */
            public final void mo17347a(Exception exc) {
                C4117p.m17343d(exc);
            }
        });
    }

    @Override // p058f2.InterfaceC3507f
    /* renamed from: a */
    public void mo17346a(AbstractC3504c<T> abstractC3504c, InterfaceC3509h interfaceC3509h) {
        this.f17724e.mo17342a(AbstractC4111l.m17370a().mo17359e(this.f17720a).mo17361c(abstractC3504c).mo17358f(this.f17721b).mo17360d(this.f17723d).mo17362b(this.f17722c).mo17363a(), interfaceC3509h);
    }

    public C4117p(AbstractC4113m abstractC4113m, String str, C3503b c3503b, InterfaceC3506e<T, byte[]> interfaceC3506e, InterfaceC4118q interfaceC4118q) {
        this.f17720a = abstractC4113m;
        this.f17721b = str;
        this.f17722c = c3503b;
        this.f17723d = interfaceC3506e;
        this.f17724e = interfaceC4118q;
    }
}
