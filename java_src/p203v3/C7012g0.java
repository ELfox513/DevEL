package p203v3;

import android.os.Looper;
import com.google.android.gms.common.api.internal.AbstractC1411a;
import p194u3.AbstractC6897e;
import p194u3.C6883a;
import p194u3.C6883a.InterfaceC6887d;
import p194u3.InterfaceC6909l;
/* renamed from: v3.g0 */
/* loaded from: classes.dex */
public final class C7012g0<O extends C6883a.InterfaceC6887d> extends C7052v {

    /* renamed from: c */
    public final AbstractC6897e<O> f35968c;

    public C7012g0(AbstractC6897e<O> abstractC6897e) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f35968c = abstractC6897e;
    }

    @Override // p194u3.AbstractC6900f
    /* renamed from: a */
    public final <A extends C6883a.InterfaceC6885b, R extends InterfaceC6909l, T extends AbstractC1411a<R, A>> T mo2672a(T t) {
        return (T) this.f35968c.m3058i(t);
    }

    @Override // p194u3.AbstractC6900f
    /* renamed from: b */
    public final <A extends C6883a.InterfaceC6885b, T extends AbstractC1411a<? extends InterfaceC6909l, A>> T mo2671b(T t) {
        return (T) this.f35968c.m3056k(t);
    }

    @Override // p194u3.AbstractC6900f
    /* renamed from: d */
    public final Looper mo2670d() {
        return this.f35968c.m3050q();
    }
}
