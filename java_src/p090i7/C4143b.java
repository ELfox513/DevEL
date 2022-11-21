package p090i7;

import p029c7.C1078a;
import p058f2.AbstractC3504c;
import p058f2.C3503b;
import p058f2.InterfaceC3506e;
import p058f2.InterfaceC3507f;
import p058f2.InterfaceC3508g;
import p108k7.C4510i;
import p161q6.InterfaceC5434b;
/* renamed from: i7.b */
/* loaded from: classes2.dex */
public final class C4143b {

    /* renamed from: d */
    public static final C1078a f17754d = C1078a.m24639e();

    /* renamed from: a */
    public final String f17755a;

    /* renamed from: b */
    public final InterfaceC5434b<InterfaceC3508g> f17756b;

    /* renamed from: c */
    public InterfaceC3507f<C4510i> f17757c;

    /* renamed from: a */
    public final boolean m17317a() {
        if (this.f17757c == null) {
            InterfaceC3508g interfaceC3508g = this.f17756b.get();
            if (interfaceC3508g != null) {
                this.f17757c = interfaceC3508g.mo17348a(this.f17755a, C4510i.class, C3503b.m18748b("proto"), new InterfaceC3506e() { // from class: i7.a
                    @Override // p058f2.InterfaceC3506e
                    public final Object apply(Object obj) {
                        return ((C4510i) obj).m14664w();
                    }
                });
            } else {
                f17754d.m24635i("Flg TransportFactory is not available at the moment");
            }
        }
        if (this.f17757c != null) {
            return true;
        }
        return false;
    }

    public C4143b(InterfaceC5434b<InterfaceC3508g> interfaceC5434b, String str) {
        this.f17755a = str;
        this.f17756b = interfaceC5434b;
    }

    /* renamed from: b */
    public void m17316b(C4510i c4510i) {
        if (!m17317a()) {
            f17754d.m24635i("Unable to dispatch event because Flg Transport is not available");
        } else {
            this.f17757c.mo17345b(AbstractC3504c.m18744d(c4510i));
        }
    }
}
