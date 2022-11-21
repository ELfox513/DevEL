package p220x3;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p194u3.AbstractC6904h;
import p194u3.InterfaceC6909l;
/* renamed from: x3.p */
/* loaded from: classes.dex */
public class C7293p {

    /* renamed from: a */
    public static final InterfaceC7284m0 f36771a = new C7275j0();

    /* renamed from: x3.p$a */
    /* loaded from: classes.dex */
    public interface InterfaceC7294a<R extends InterfaceC6909l, T> {
        @RecentlyNullable
        /* renamed from: a */
        T mo1902a(@RecentlyNonNull R r);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static <R extends InterfaceC6909l> AbstractC4346i<Void> m1903b(@RecentlyNonNull AbstractC6904h<R> abstractC6904h) {
        return m1904a(abstractC6904h, new C7281l0());
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static <R extends InterfaceC6909l, T> AbstractC4346i<T> m1904a(@RecentlyNonNull AbstractC6904h<R> abstractC6904h, @RecentlyNonNull InterfaceC7294a<R, T> interfaceC7294a) {
        InterfaceC7284m0 interfaceC7284m0 = f36771a;
        C4348j c4348j = new C4348j();
        abstractC6904h.mo2641c(new C7278k0(abstractC6904h, c4348j, interfaceC7294a, interfaceC7284m0));
        return c4348j.m16775a();
    }
}
