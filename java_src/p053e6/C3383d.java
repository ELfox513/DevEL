package p053e6;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
import p019b6.C0998b;
import p062f6.C3520a;
import p062f6.C3524e;
import p062f6.C3525f;
import p062f6.InterfaceC3523d;
import p071g6.C3905a;
import p071g6.InterfaceC3906b;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p097j5.C4352l;
import p097j5.InterfaceC4344h;
import p196u5.C6930f;
import p222x5.C7340f0;
import p222x5.C7341g;
import p222x5.C7379r;
import p222x5.C7386v;
import p222x5.EnumC7380s;
import p222x5.InterfaceC7378q;
/* renamed from: e6.d */
/* loaded from: classes2.dex */
public class C3383d implements InterfaceC3385e {

    /* renamed from: a */
    public final Context f15757a;

    /* renamed from: b */
    public final C3525f f15758b;

    /* renamed from: c */
    public final C3386f f15759c;

    /* renamed from: d */
    public final InterfaceC7378q f15760d;

    /* renamed from: e */
    public final C3380a f15761e;

    /* renamed from: f */
    public final InterfaceC3906b f15762f;

    /* renamed from: g */
    public final C7379r f15763g;

    /* renamed from: h */
    public final AtomicReference<InterfaceC3523d> f15764h;

    /* renamed from: i */
    public final AtomicReference<C4348j<C3520a>> f15765i;

    /* renamed from: e6.d$a */
    /* loaded from: classes2.dex */
    public class C3384a implements InterfaceC4344h<Void, Void> {
        public C3384a() {
        }

        @Override // p097j5.InterfaceC4344h
        /* renamed from: b */
        public AbstractC4346i<Void> mo1703a(Void r5) {
            JSONObject mo17799a = C3383d.this.f15762f.mo17799a(C3383d.this.f15758b, true);
            if (mo17799a != null) {
                C3524e m19010b = C3383d.this.f15759c.m19010b(mo17799a);
                C3383d.this.f15761e.m19036c(m19010b.m18713d(), mo17799a);
                C3383d.this.m19016q(mo17799a, "Loaded settings: ");
                C3383d c3383d = C3383d.this;
                c3383d.m19015r(c3383d.f15758b.f16009f);
                C3383d.this.f15764h.set(m19010b);
                ((C4348j) C3383d.this.f15765i.get()).m16771e(m19010b.m18714c());
                C4348j c4348j = new C4348j();
                c4348j.m16771e(m19010b.m18714c());
                C3383d.this.f15765i.set(c4348j);
            }
            return C4352l.m16767d(null);
        }
    }

    @Override // p053e6.InterfaceC3385e
    /* renamed from: a */
    public AbstractC4346i<C3520a> mo19013a() {
        return this.f15765i.get().m16775a();
    }

    @Override // p053e6.InterfaceC3385e
    /* renamed from: b */
    public InterfaceC3523d mo19012b() {
        return this.f15764h.get();
    }

    /* renamed from: m */
    public final C3524e m19020m(EnumC3382c enumC3382c) {
        C3524e c3524e = null;
        try {
            if (!EnumC3382c.SKIP_CACHE_LOOKUP.equals(enumC3382c)) {
                JSONObject m19037b = this.f15761e.m19037b();
                if (m19037b != null) {
                    C3524e m19010b = this.f15759c.m19010b(m19037b);
                    if (m19010b != null) {
                        m19016q(m19037b, "Loaded cached settings: ");
                        long mo1635a = this.f15760d.mo1635a();
                        if (!EnumC3382c.IGNORE_CACHE_EXPIRATION.equals(enumC3382c) && m19010b.m18712e(mo1635a)) {
                            C6930f.m3016f().m3013i("Cached settings have expired.");
                        }
                        try {
                            C6930f.m3016f().m3013i("Returning cached settings.");
                            c3524e = m19010b;
                        } catch (Exception e) {
                            e = e;
                            c3524e = m19010b;
                            C6930f.m3016f().m3017e("Failed to get cached settings", e);
                            return c3524e;
                        }
                    } else {
                        C6930f.m3016f().m3017e("Failed to parse cached settings data.", null);
                    }
                } else {
                    C6930f.m3016f().m3020b("No cached settings data found.");
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        return c3524e;
    }

    /* renamed from: p */
    public AbstractC4346i<Void> m19017p(Executor executor) {
        return m19018o(EnumC3382c.USE_CACHE, executor);
    }

    /* renamed from: q */
    public final void m19016q(JSONObject jSONObject, String str) {
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3020b(str + jSONObject.toString());
    }

    /* renamed from: n */
    public final String m19019n() {
        return C7341g.m1778r(this.f15757a).getString("existing_instance_identifier", "");
    }

    @SuppressLint({"CommitPrefEdits"})
    /* renamed from: r */
    public final boolean m19015r(String str) {
        SharedPreferences.Editor edit = C7341g.m1778r(this.f15757a).edit();
        edit.putString("existing_instance_identifier", str);
        edit.apply();
        return true;
    }

    public C3383d(Context context, C3525f c3525f, InterfaceC7378q interfaceC7378q, C3386f c3386f, C3380a c3380a, InterfaceC3906b interfaceC3906b, C7379r c7379r) {
        AtomicReference<InterfaceC3523d> atomicReference = new AtomicReference<>();
        this.f15764h = atomicReference;
        this.f15765i = new AtomicReference<>(new C4348j());
        this.f15757a = context;
        this.f15758b = c3525f;
        this.f15760d = interfaceC7378q;
        this.f15759c = c3386f;
        this.f15761e = c3380a;
        this.f15762f = interfaceC3906b;
        this.f15763g = c7379r;
        atomicReference.set(C3381b.m19032e(interfaceC7378q));
    }

    /* renamed from: l */
    public static C3383d m19021l(Context context, String str, C7386v c7386v, C0998b c0998b, String str2, String str3, C7379r c7379r) {
        String m1609g = c7386v.m1609g();
        C7340f0 c7340f0 = new C7340f0();
        return new C3383d(context, new C3525f(str, c7386v.m1608h(), c7386v.m1607i(), c7386v.m1606j(), c7386v, C7341g.m1788h(C7341g.m1782n(context), str, str3, str2), str3, str2, EnumC7380s.m1626c(m1609g).m1625d()), c7340f0, new C3386f(c7340f0), new C3380a(context), new C3905a(String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), c0998b), c7379r);
    }

    /* renamed from: k */
    public boolean m19022k() {
        return !m19019n().equals(this.f15758b.f16009f);
    }

    /* renamed from: o */
    public AbstractC4346i<Void> m19018o(EnumC3382c enumC3382c, Executor executor) {
        C3524e m19020m;
        if (!m19022k() && (m19020m = m19020m(enumC3382c)) != null) {
            this.f15764h.set(m19020m);
            this.f15765i.get().m16771e(m19020m.m18714c());
            return C4352l.m16767d(null);
        }
        C3524e m19020m2 = m19020m(EnumC3382c.IGNORE_CACHE_EXPIRATION);
        if (m19020m2 != null) {
            this.f15764h.set(m19020m2);
            this.f15765i.get().m16771e(m19020m2.m18714c());
        }
        return this.f15763g.m1627h(executor).mo16784r(executor, new C3384a());
    }
}
