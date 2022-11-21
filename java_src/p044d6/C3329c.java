package p044d6;

import android.content.Context;
import java.nio.charset.Charset;
import p007a6.C0118g;
import p058f2.AbstractC3504c;
import p058f2.C3503b;
import p058f2.InterfaceC3506e;
import p058f2.InterfaceC3507f;
import p058f2.InterfaceC3508g;
import p058f2.InterfaceC3509h;
import p067g2.C3572a;
import p085i2.C4119r;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p222x5.AbstractC7375o;
import p238z5.AbstractC7762a0;
/* renamed from: d6.c */
/* loaded from: classes2.dex */
public class C3329c {

    /* renamed from: c */
    public static final C0118g f15652c = new C0118g();

    /* renamed from: d */
    public static final String f15653d = m19133f("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: e */
    public static final String f15654e = m19133f("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: f */
    public static final InterfaceC3506e<AbstractC7762a0, byte[]> f15655f = new InterfaceC3506e() { // from class: d6.a
        @Override // p058f2.InterfaceC3506e
        public final Object apply(Object obj) {
            byte[] m19134e;
            m19134e = C3329c.m19134e((AbstractC7762a0) obj);
            return m19134e;
        }
    };

    /* renamed from: a */
    public final InterfaceC3507f<AbstractC7762a0> f15656a;

    /* renamed from: b */
    public final InterfaceC3506e<AbstractC7762a0, byte[]> f15657b;

    /* renamed from: e */
    public static /* synthetic */ byte[] m19134e(AbstractC7762a0 abstractC7762a0) {
        return f15652c.m27663E(abstractC7762a0).getBytes(Charset.forName("UTF-8"));
    }

    /* renamed from: d */
    public static /* synthetic */ void m19135d(C4348j c4348j, AbstractC7375o abstractC7375o, Exception exc) {
        if (exc != null) {
            c4348j.m16772d(exc);
        } else {
            c4348j.m16771e(abstractC7375o);
        }
    }

    public C3329c(InterfaceC3507f<AbstractC7762a0> interfaceC3507f, InterfaceC3506e<AbstractC7762a0, byte[]> interfaceC3506e) {
        this.f15656a = interfaceC3507f;
        this.f15657b = interfaceC3506e;
    }

    /* renamed from: c */
    public static C3329c m19136c(Context context) {
        C4119r.m17337f(context);
        InterfaceC3508g m17336g = C4119r.m17340c().m17336g(new C3572a(f15653d, f15654e));
        C3503b m18748b = C3503b.m18748b("json");
        InterfaceC3506e<AbstractC7762a0, byte[]> interfaceC3506e = f15655f;
        return new C3329c(m17336g.mo17348a("FIREBASE_CRASHLYTICS_REPORT", AbstractC7762a0.class, m18748b, interfaceC3506e), interfaceC3506e);
    }

    /* renamed from: f */
    public static String m19133f(String str, String str2) {
        int length = str.length() - str2.length();
        if (length >= 0 && length <= 1) {
            StringBuilder sb = new StringBuilder(str.length() + str2.length());
            for (int i = 0; i < str.length(); i++) {
                sb.append(str.charAt(i));
                if (str2.length() > i) {
                    sb.append(str2.charAt(i));
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("Invalid input received");
    }

    /* renamed from: g */
    public AbstractC4346i<AbstractC7375o> m19132g(final AbstractC7375o abstractC7375o) {
        AbstractC7762a0 mo1640b = abstractC7375o.mo1640b();
        final C4348j c4348j = new C4348j();
        this.f15656a.mo17346a(AbstractC3504c.m18743e(mo1640b), new InterfaceC3509h() { // from class: d6.b
            @Override // p058f2.InterfaceC3509h
            /* renamed from: a */
            public final void mo17347a(Exception exc) {
                C3329c.m19135d(C4348j.this, abstractC7375o, exc);
            }
        });
        return c4348j.m16775a();
    }
}
