package p085i2;

import java.util.Set;
import p058f2.C3503b;
import p058f2.InterfaceC3506e;
import p058f2.InterfaceC3507f;
import p058f2.InterfaceC3508g;
/* renamed from: i2.n */
/* loaded from: classes.dex */
public final class C4115n implements InterfaceC3508g {

    /* renamed from: a */
    public final Set<C3503b> f17717a;

    /* renamed from: b */
    public final AbstractC4113m f17718b;

    /* renamed from: c */
    public final InterfaceC4118q f17719c;

    @Override // p058f2.InterfaceC3508g
    /* renamed from: a */
    public <T> InterfaceC3507f<T> mo17348a(String str, Class<T> cls, C3503b c3503b, InterfaceC3506e<T, byte[]> interfaceC3506e) {
        if (this.f17717a.contains(c3503b)) {
            return new C4117p(this.f17718b, str, c3503b, interfaceC3506e, this.f17719c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", c3503b, this.f17717a));
    }

    public C4115n(Set<C3503b> set, AbstractC4113m abstractC4113m, InterfaceC4118q interfaceC4118q) {
        this.f17717a = set;
        this.f17718b = abstractC4113m;
        this.f17719c = interfaceC4118q;
    }
}
