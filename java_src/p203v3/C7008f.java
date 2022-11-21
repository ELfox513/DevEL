package p203v3;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.AbstractC1411a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p026c4.C1049j;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p145p.C5272b;
import p185t3.C6734b;
import p185t3.C6744g;
import p194u3.AbstractC6897e;
import p194u3.C6883a;
import p194u3.InterfaceC6909l;
import p213w4.HandlerC7182e;
import p220x3.C7268h0;
import p220x3.C7286n;
import p220x3.C7300r;
import p220x3.C7303s;
import p220x3.C7309u;
import p220x3.C7312v;
import p220x3.InterfaceC7315w;
/* renamed from: v3.f */
/* loaded from: classes.dex */
public class C7008f implements Handler.Callback {
    @RecentlyNonNull

    /* renamed from: C */
    public static final Status f35938C = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: D */
    public static final Status f35939D = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: E */
    public static final Object f35940E = new Object();

    /* renamed from: F */
    public static C7008f f35941F;

    /* renamed from: A */
    public final Handler f35942A;

    /* renamed from: B */
    public volatile boolean f35943B;

    /* renamed from: p */
    public C7309u f35948p;

    /* renamed from: q */
    public InterfaceC7315w f35949q;

    /* renamed from: r */
    public final Context f35950r;

    /* renamed from: s */
    public final C6744g f35951s;

    /* renamed from: t */
    public final C7268h0 f35952t;

    /* renamed from: a */
    public long f35944a = 5000;

    /* renamed from: b */
    public long f35945b = 120000;

    /* renamed from: d */
    public long f35946d = 10000;

    /* renamed from: k */
    public boolean f35947k = false;

    /* renamed from: u */
    public final AtomicInteger f35953u = new AtomicInteger(1);

    /* renamed from: v */
    public final AtomicInteger f35954v = new AtomicInteger(0);

    /* renamed from: w */
    public final Map<C6995b<?>, C7000c0<?>> f35955w = new ConcurrentHashMap(5, 0.75f, 1);

    /* renamed from: x */
    public C7048t f35956x = null;

    /* renamed from: y */
    public final Set<C6995b<?>> f35957y = new C5272b();

    /* renamed from: z */
    public final Set<C6995b<?>> f35958z = new C5272b();

    /* renamed from: m */
    public final InterfaceC7315w m2695m() {
        if (this.f35949q == null) {
            this.f35949q = C7312v.m1853a(this.f35950r);
        }
        return this.f35949q;
    }

    /* renamed from: o */
    public final int m2693o() {
        return this.f35953u.getAndIncrement();
    }

    /* renamed from: p */
    public final void m2692p(@RecentlyNonNull AbstractC6897e<?> abstractC6897e) {
        Handler handler = this.f35942A;
        handler.sendMessage(handler.obtainMessage(7, abstractC6897e));
    }

    /* renamed from: s */
    public final C7000c0 m2689s(C6995b<?> c6995b) {
        return this.f35955w.get(c6995b);
    }

    /* renamed from: t */
    public final void m2688t() {
        Handler handler = this.f35942A;
        handler.sendMessage(handler.obtainMessage(3));
    }

    /* renamed from: x */
    public final boolean m2684x(C6734b c6734b, int i) {
        return this.f35951s.m3503r(this.f35950r, c6734b, i);
    }

    /* renamed from: a */
    public static void m2707a() {
        synchronized (f35940E) {
            C7008f c7008f = f35941F;
            if (c7008f != null) {
                c7008f.f35954v.incrementAndGet();
                Handler handler = c7008f.f35942A;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* renamed from: k */
    public static Status m2697k(C6995b<?> c6995b, C6734b c6734b) {
        String m2770b = c6995b.m2770b();
        String valueOf = String.valueOf(c6734b);
        StringBuilder sb = new StringBuilder(String.valueOf(m2770b).length() + 63 + valueOf.length());
        sb.append("API: ");
        sb.append(m2770b);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(valueOf);
        return new Status(c6734b, sb.toString());
    }

    @RecentlyNonNull
    /* renamed from: n */
    public static C7008f m2694n(@RecentlyNonNull Context context) {
        C7008f c7008f;
        synchronized (f35940E) {
            if (f35941F == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f35941F = new C7008f(context.getApplicationContext(), handlerThread.getLooper(), C6744g.m3508m());
            }
            c7008f = f35941F;
        }
        return c7008f;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(@RecentlyNonNull Message message) {
        int i = message.what;
        long j = 300000;
        C7000c0<?> c7000c0 = null;
        switch (i) {
            case 1:
                if (true == ((Boolean) message.obj).booleanValue()) {
                    j = 10000;
                }
                this.f35946d = j;
                this.f35942A.removeMessages(12);
                for (C6995b<?> c6995b : this.f35955w.keySet()) {
                    Handler handler = this.f35942A;
                    handler.sendMessageDelayed(handler.obtainMessage(12, c6995b), this.f35946d);
                }
                break;
            case 2:
                C7001c1 c7001c1 = (C7001c1) message.obj;
                Iterator<C6995b<?>> it = c7001c1.m2723a().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else {
                        C6995b<?> next = it.next();
                        C7000c0<?> c7000c02 = this.f35955w.get(next);
                        if (c7000c02 == null) {
                            c7001c1.m2722b(next, new C6734b(13), null);
                            break;
                        } else if (c7000c02.m2761B()) {
                            c7001c1.m2722b(next, C6734b.f35387p, c7000c02.m2731s().mo2654d());
                        } else {
                            C6734b m2728v = c7000c02.m2728v();
                            if (m2728v != null) {
                                c7001c1.m2722b(next, m2728v, null);
                            } else {
                                c7000c02.m2762A(c7001c1);
                                c7000c02.m2724z();
                            }
                        }
                    }
                }
            case 3:
                for (C7000c0<?> c7000c03 : this.f35955w.values()) {
                    c7000c03.m2729u();
                    c7000c03.m2724z();
                }
                break;
            case 4:
            case 8:
            case 13:
                C7036o0 c7036o0 = (C7036o0) message.obj;
                C7000c0<?> c7000c04 = this.f35955w.get(c7036o0.f36015c.m3054m());
                if (c7000c04 == null) {
                    c7000c04 = m2699i(c7036o0.f36015c);
                }
                if (c7000c04.m2760C() && this.f35954v.get() != c7036o0.f36014b) {
                    c7036o0.f36013a.mo2584a(f35938C);
                    c7000c04.m2732r();
                    break;
                } else {
                    c7000c04.m2733q(c7036o0.f36013a);
                    break;
                }
                break;
            case 5:
                int i2 = message.arg1;
                C6734b c6734b = (C6734b) message.obj;
                Iterator<C7000c0<?>> it2 = this.f35955w.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        C7000c0<?> next2 = it2.next();
                        if (next2.m2759D() == i2) {
                            c7000c0 = next2;
                        }
                    }
                }
                if (c7000c0 != null) {
                    if (c6734b.m3528X0() == 13) {
                        String mo3491e = this.f35951s.mo3491e(c6734b.m3528X0());
                        String m3527Y0 = c6734b.m3527Y0();
                        StringBuilder sb = new StringBuilder(String.valueOf(mo3491e).length() + 69 + String.valueOf(m3527Y0).length());
                        sb.append("Error resolution was canceled by the user, original error message: ");
                        sb.append(mo3491e);
                        sb.append(": ");
                        sb.append(m3527Y0);
                        C7000c0.m2753J(c7000c0, new Status(17, sb.toString()));
                        break;
                    } else {
                        C7000c0.m2753J(c7000c0, m2697k(C7000c0.m2752K(c7000c0), c6734b));
                        break;
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder(76);
                    sb2.append("Could not find API instance ");
                    sb2.append(i2);
                    sb2.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                    break;
                }
            case 6:
                if (this.f35950r.getApplicationContext() instanceof Application) {
                    ComponentCallbacks2C6998c.m2766c((Application) this.f35950r.getApplicationContext());
                    ComponentCallbacks2C6998c.m2767b().m2768a(new C7056x(this));
                    if (!ComponentCallbacks2C6998c.m2767b().m2764e(true)) {
                        this.f35946d = 300000L;
                        break;
                    }
                }
                break;
            case 7:
                m2699i((AbstractC6897e) message.obj);
                break;
            case 9:
                if (this.f35955w.containsKey(message.obj)) {
                    this.f35955w.get(message.obj).m2727w();
                    break;
                }
                break;
            case 10:
                for (C6995b<?> c6995b2 : this.f35958z) {
                    C7000c0<?> remove = this.f35955w.remove(c6995b2);
                    if (remove != null) {
                        remove.m2732r();
                    }
                }
                this.f35958z.clear();
                break;
            case 11:
                if (this.f35955w.containsKey(message.obj)) {
                    this.f35955w.get(message.obj).m2726x();
                    break;
                }
                break;
            case 12:
                if (this.f35955w.containsKey(message.obj)) {
                    this.f35955w.get(message.obj).m2725y();
                    break;
                }
                break;
            case 14:
                C7050u c7050u = (C7050u) message.obj;
                C6995b<?> m2590a = c7050u.m2590a();
                if (!this.f35955w.containsKey(m2590a)) {
                    c7050u.m2589b().m16773c(Boolean.FALSE);
                    break;
                } else {
                    c7050u.m2589b().m16773c(Boolean.valueOf(C7000c0.m2756G(this.f35955w.get(m2590a), false)));
                    break;
                }
            case 15:
                C7003d0 c7003d0 = (C7003d0) message.obj;
                if (this.f35955w.containsKey(C7003d0.m2719a(c7003d0))) {
                    C7000c0.m2755H(this.f35955w.get(C7003d0.m2719a(c7003d0)), c7003d0);
                    break;
                }
                break;
            case 16:
                C7003d0 c7003d02 = (C7003d0) message.obj;
                if (this.f35955w.containsKey(C7003d0.m2719a(c7003d02))) {
                    C7000c0.m2754I(this.f35955w.get(C7003d0.m2719a(c7003d02)), c7003d02);
                    break;
                }
                break;
            case 17:
                m2696l();
                break;
            case 18:
                C7024k0 c7024k0 = (C7024k0) message.obj;
                if (c7024k0.f35996c == 0) {
                    m2695m().mo914b(new C7309u(c7024k0.f35995b, Arrays.asList(c7024k0.f35994a)));
                    break;
                } else {
                    C7309u c7309u = this.f35948p;
                    if (c7309u != null) {
                        List<C7286n> m1855Y0 = c7309u.m1855Y0();
                        if (this.f35948p.m1856X0() == c7024k0.f35995b && (m1855Y0 == null || m1855Y0.size() < c7024k0.f35997d)) {
                            this.f35948p.m1854Z0(c7024k0.f35994a);
                        } else {
                            this.f35942A.removeMessages(17);
                            m2696l();
                        }
                    }
                    if (this.f35948p == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(c7024k0.f35994a);
                        this.f35948p = new C7309u(c7024k0.f35995b, arrayList);
                        Handler handler2 = this.f35942A;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), c7024k0.f35996c);
                        break;
                    }
                }
                break;
            case 19:
                this.f35947k = false;
                break;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
        return true;
    }

    /* renamed from: j */
    public final <T> void m2698j(C4348j<T> c4348j, int i, AbstractC6897e abstractC6897e) {
        C7021j0 m2643b;
        if (i != 0 && (m2643b = C7021j0.m2643b(this, i, abstractC6897e.m3054m())) != null) {
            AbstractC4346i<T> m16775a = c4348j.m16775a();
            Handler handler = this.f35942A;
            handler.getClass();
            m16775a.mo16798d(ExecutorC7054w.m2587a(handler), m2643b);
        }
    }

    /* renamed from: l */
    public final void m2696l() {
        C7309u c7309u = this.f35948p;
        if (c7309u != null) {
            if (c7309u.m1856X0() > 0 || m2685w()) {
                m2695m().mo914b(c7309u);
            }
            this.f35948p = null;
        }
    }

    /* renamed from: q */
    public final void m2691q(C7048t c7048t) {
        synchronized (f35940E) {
            if (this.f35956x != c7048t) {
                this.f35956x = c7048t;
                this.f35957y.clear();
            }
            this.f35957y.addAll(c7048t.m2600u());
        }
    }

    /* renamed from: r */
    public final void m2690r(C7048t c7048t) {
        synchronized (f35940E) {
            if (this.f35956x == c7048t) {
                this.f35956x = null;
                this.f35957y.clear();
            }
        }
    }

    /* renamed from: u */
    public final <O extends C6883a.InterfaceC6887d> void m2687u(@RecentlyNonNull AbstractC6897e<O> abstractC6897e, int i, @RecentlyNonNull AbstractC1411a<? extends InterfaceC6909l, C6883a.InterfaceC6885b> abstractC1411a) {
        C7059y0 c7059y0 = new C7059y0(i, abstractC1411a);
        Handler handler = this.f35942A;
        handler.sendMessage(handler.obtainMessage(4, new C7036o0(c7059y0, this.f35954v.get(), abstractC6897e)));
    }

    /* renamed from: w */
    public final boolean m2685w() {
        if (this.f35947k) {
            return false;
        }
        C7303s m1878a = C7300r.m1877b().m1878a();
        if (m1878a != null && !m1878a.m1866Z0()) {
            return false;
        }
        int m1935b = this.f35952t.m1935b(this.f35950r, 203390000);
        if (m1935b != -1 && m1935b != 0) {
            return false;
        }
        return true;
    }

    /* renamed from: z */
    public final void m2682z(C7286n c7286n, int i, long j, int i2) {
        Handler handler = this.f35942A;
        handler.sendMessage(handler.obtainMessage(18, new C7024k0(c7286n, i, j, i2)));
    }

    public C7008f(Context context, Looper looper, C6744g c6744g) {
        this.f35943B = true;
        this.f35950r = context;
        HandlerC7182e handlerC7182e = new HandlerC7182e(looper, this);
        this.f35942A = handlerC7182e;
        this.f35951s = c6744g;
        this.f35952t = new C7268h0(c6744g);
        if (C1049j.m24759a(context)) {
            this.f35943B = false;
        }
        handlerC7182e.sendMessage(handlerC7182e.obtainMessage(6));
    }

    /* renamed from: i */
    public final C7000c0<?> m2699i(AbstractC6897e<?> abstractC6897e) {
        C6995b<?> m3054m = abstractC6897e.m3054m();
        C7000c0<?> c7000c0 = this.f35955w.get(m3054m);
        if (c7000c0 == null) {
            c7000c0 = new C7000c0<>(this, abstractC6897e);
            this.f35955w.put(m3054m, c7000c0);
        }
        if (c7000c0.m2760C()) {
            this.f35958z.add(m3054m);
        }
        c7000c0.m2724z();
        return c7000c0;
    }

    /* renamed from: v */
    public final <O extends C6883a.InterfaceC6887d, ResultT> void m2686v(@RecentlyNonNull AbstractC6897e<O> abstractC6897e, int i, @RecentlyNonNull AbstractC7041q<C6883a.InterfaceC6885b, ResultT> abstractC7041q, @RecentlyNonNull C4348j<ResultT> c4348j, @RecentlyNonNull InterfaceC7035o interfaceC7035o) {
        m2698j(c4348j, abstractC7041q.m2624e(), abstractC6897e);
        C7061z0 c7061z0 = new C7061z0(i, abstractC7041q, c4348j, interfaceC7035o);
        Handler handler = this.f35942A;
        handler.sendMessage(handler.obtainMessage(4, new C7036o0(c7061z0, this.f35954v.get(), abstractC6897e)));
    }

    /* renamed from: y */
    public final void m2683y(@RecentlyNonNull C6734b c6734b, int i) {
        if (!m2684x(c6734b, i)) {
            Handler handler = this.f35942A;
            handler.sendMessage(handler.obtainMessage(5, i, 0, c6734b));
        }
    }
}
