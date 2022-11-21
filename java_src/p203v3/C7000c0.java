package p203v3;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import p026c4.C1041b;
import p097j5.C4348j;
import p145p.C5270a;
import p185t3.C6734b;
import p185t3.C6738d;
import p185t3.C6744g;
import p194u3.AbstractC6897e;
import p194u3.AbstractC6900f;
import p194u3.C6883a;
import p194u3.C6883a.InterfaceC6887d;
import p194u3.C6911n;
import p220x3.C7268h0;
import p220x3.C7289o;
import p220x3.C7297q;
import p236z3.C7606e;
/* renamed from: v3.c0 */
/* loaded from: classes.dex */
public final class C7000c0<O extends C6883a.InterfaceC6887d> implements AbstractC6900f.InterfaceC6901a, AbstractC6900f.InterfaceC6902b {

    /* renamed from: b */
    public final C6883a.InterfaceC6892f f35913b;

    /* renamed from: d */
    public final C6995b<O> f35914d;

    /* renamed from: k */
    public final C7046s f35915k;

    /* renamed from: r */
    public final int f35918r;

    /* renamed from: s */
    public final BinderC7049t0 f35919s;

    /* renamed from: t */
    public boolean f35920t;

    /* renamed from: x */
    public final /* synthetic */ C7008f f35924x;

    /* renamed from: a */
    public final Queue<AbstractC6997b1> f35912a = new LinkedList();

    /* renamed from: p */
    public final Set<C7001c1> f35916p = new HashSet();

    /* renamed from: q */
    public final Map<C7017i<?>, C7039p0> f35917q = new HashMap();

    /* renamed from: u */
    public final List<C7003d0> f35921u = new ArrayList();

    /* renamed from: v */
    public C6734b f35922v = null;

    /* renamed from: w */
    public int f35923w = 0;

    /* renamed from: G */
    public static /* synthetic */ boolean m2756G(C7000c0 c7000c0, boolean z) {
        return c7000c0.m2738l(false);
    }

    /* renamed from: H */
    public static /* synthetic */ void m2755H(C7000c0 c7000c0, C7003d0 c7003d0) {
        if (c7000c0.f35921u.contains(c7003d0) && !c7000c0.f35920t) {
            if (c7000c0.f35913b.isConnected()) {
                c7000c0.m2745e();
            } else {
                c7000c0.m2724z();
            }
        }
    }

    /* renamed from: I */
    public static /* synthetic */ void m2754I(C7000c0 c7000c0, C7003d0 c7003d0) {
        Handler handler;
        Handler handler2;
        C6738d c6738d;
        C6738d[] mo2580f;
        if (c7000c0.f35921u.remove(c7003d0)) {
            handler = c7000c0.f35924x.f35942A;
            handler.removeMessages(15, c7003d0);
            handler2 = c7000c0.f35924x.f35942A;
            handler2.removeMessages(16, c7003d0);
            c6738d = c7003d0.f35931b;
            ArrayList arrayList = new ArrayList(c7000c0.f35912a.size());
            for (AbstractC6997b1 abstractC6997b1 : c7000c0.f35912a) {
                if ((abstractC6997b1 instanceof AbstractC7030m0) && (mo2580f = ((AbstractC7030m0) abstractC6997b1).mo2580f(c7000c0)) != null && C1041b.m24777c(mo2580f, c6738d)) {
                    arrayList.add(abstractC6997b1);
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                AbstractC6997b1 abstractC6997b12 = (AbstractC6997b1) arrayList.get(i);
                c7000c0.f35912a.remove(abstractC6997b12);
                abstractC6997b12.mo2583b(new C6911n(c6738d));
            }
        }
    }

    /* renamed from: J */
    public static /* synthetic */ void m2753J(C7000c0 c7000c0, Status status) {
        c7000c0.m2741i(status);
    }

    /* renamed from: K */
    public static /* synthetic */ C6995b m2752K(C7000c0 c7000c0) {
        return c7000c0.f35914d;
    }

    /* renamed from: B */
    public final boolean m2761B() {
        return this.f35913b.isConnected();
    }

    /* renamed from: C */
    public final boolean m2760C() {
        return this.f35913b.mo1987n();
    }

    /* renamed from: D */
    public final int m2759D() {
        return this.f35918r;
    }

    /* renamed from: E */
    public final int m2758E() {
        return this.f35923w;
    }

    /* renamed from: F */
    public final void m2757F() {
        this.f35923w++;
    }

    /* renamed from: n */
    public final C6738d m2736n(C6738d[] c6738dArr) {
        if (c6738dArr != null && c6738dArr.length != 0) {
            C6738d[] mo2650l = this.f35913b.mo2650l();
            if (mo2650l == null) {
                mo2650l = new C6738d[0];
            }
            C5270a c5270a = new C5270a(mo2650l.length);
            for (C6738d c6738d : mo2650l) {
                c5270a.put(c6738d.getName(), Long.valueOf(c6738d.m3514X0()));
            }
            for (C6738d c6738d2 : c6738dArr) {
                Long l = (Long) c5270a.get(c6738d2.getName());
                if (l == null || l.longValue() < c6738d2.m3514X0()) {
                    return c6738d2;
                }
            }
        }
        return null;
    }

    /* renamed from: s */
    public final C6883a.InterfaceC6892f m2731s() {
        return this.f35913b;
    }

    /* renamed from: t */
    public final Map<C7017i<?>, C7039p0> m2730t() {
        return this.f35917q;
    }

    @Override // p203v3.InterfaceC7023k
    /* renamed from: t0 */
    public final void mo2591t0(C6734b c6734b) {
        m2734p(c6734b, null);
    }

    /* renamed from: u */
    public final void m2729u() {
        Handler handler;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        this.f35922v = null;
    }

    /* renamed from: v */
    public final C6734b m2728v() {
        Handler handler;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        return this.f35922v;
    }

    /* renamed from: y */
    public final boolean m2725y() {
        return m2738l(true);
    }

    public C7000c0(C7008f c7008f, AbstractC6897e<O> abstractC6897e) {
        Handler handler;
        Context context;
        Handler handler2;
        this.f35924x = c7008f;
        handler = c7008f.f35942A;
        C6883a.InterfaceC6892f m3049r = abstractC6897e.m3049r(handler.getLooper(), this);
        this.f35913b = m3049r;
        this.f35914d = abstractC6897e.m3054m();
        this.f35915k = new C7046s();
        this.f35918r = abstractC6897e.m3048s();
        if (m3049r.mo1987n()) {
            context = c7008f.f35950r;
            handler2 = c7008f.f35942A;
            this.f35919s = abstractC6897e.m3047t(context, handler2);
            return;
        }
        this.f35919s = null;
    }

    /* renamed from: A */
    public final void m2762A(C7001c1 c7001c1) {
        Handler handler;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        this.f35916p.add(c7001c1);
    }

    /* renamed from: e */
    public final void m2745e() {
        ArrayList arrayList = new ArrayList(this.f35912a);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC6997b1 abstractC6997b1 = (AbstractC6997b1) arrayList.get(i);
            if (this.f35913b.isConnected()) {
                if (m2744f(abstractC6997b1)) {
                    this.f35912a.remove(abstractC6997b1);
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: f */
    public final boolean m2744f(AbstractC6997b1 abstractC6997b1) {
        boolean z;
        Handler handler;
        Handler handler2;
        long j;
        Handler handler3;
        Handler handler4;
        long j2;
        Handler handler5;
        Handler handler6;
        Handler handler7;
        long j3;
        if (!(abstractC6997b1 instanceof AbstractC7030m0)) {
            m2743g(abstractC6997b1);
            return true;
        }
        AbstractC7030m0 abstractC7030m0 = (AbstractC7030m0) abstractC6997b1;
        C6738d m2736n = m2736n(abstractC7030m0.mo2580f(this));
        if (m2736n == null) {
            m2743g(abstractC6997b1);
            return true;
        }
        String name = this.f35913b.getClass().getName();
        String name2 = m2736n.getName();
        long m3514X0 = m2736n.m3514X0();
        StringBuilder sb = new StringBuilder(name.length() + 77 + String.valueOf(name2).length());
        sb.append(name);
        sb.append(" could not execute call because it requires feature (");
        sb.append(name2);
        sb.append(", ");
        sb.append(m3514X0);
        sb.append(").");
        Log.w("GoogleApiManager", sb.toString());
        z = this.f35924x.f35943B;
        if (z && abstractC7030m0.mo2579g(this)) {
            C7003d0 c7003d0 = new C7003d0(this.f35914d, m2736n, null);
            int indexOf = this.f35921u.indexOf(c7003d0);
            if (indexOf >= 0) {
                C7003d0 c7003d02 = this.f35921u.get(indexOf);
                handler5 = this.f35924x.f35942A;
                handler5.removeMessages(15, c7003d02);
                handler6 = this.f35924x.f35942A;
                handler7 = this.f35924x.f35942A;
                Message obtain = Message.obtain(handler7, 15, c7003d02);
                j3 = this.f35924x.f35944a;
                handler6.sendMessageDelayed(obtain, j3);
                return false;
            }
            this.f35921u.add(c7003d0);
            handler = this.f35924x.f35942A;
            handler2 = this.f35924x.f35942A;
            Message obtain2 = Message.obtain(handler2, 15, c7003d0);
            j = this.f35924x.f35944a;
            handler.sendMessageDelayed(obtain2, j);
            handler3 = this.f35924x.f35942A;
            handler4 = this.f35924x.f35942A;
            Message obtain3 = Message.obtain(handler4, 16, c7003d0);
            j2 = this.f35924x.f35945b;
            handler3.sendMessageDelayed(obtain3, j2);
            C6734b c6734b = new C6734b(2, null);
            if (!m2746d(c6734b)) {
                this.f35924x.m2684x(c6734b, this.f35918r);
                return false;
            }
            return false;
        }
        abstractC7030m0.mo2583b(new C6911n(m2736n));
        return true;
    }

    /* renamed from: g */
    public final void m2743g(AbstractC6997b1 abstractC6997b1) {
        abstractC6997b1.mo2582c(this.f35915k, m2760C());
        try {
            abstractC6997b1.mo2581d(this);
        } catch (DeadObjectException unused) {
            mo2594j0(1);
            this.f35913b.mo2656b("DeadObjectException thrown while running ApiCallRunner.");
        } catch (Throwable th) {
            throw new IllegalStateException(String.format("Error in GoogleApi implementation for client %s.", this.f35913b.getClass().getName()), th);
        }
    }

    /* renamed from: h */
    public final void m2742h(Status status, Exception exc, boolean z) {
        Handler handler;
        boolean z2;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        boolean z3 = false;
        if (status != null) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (exc == null) {
            z3 = true;
        }
        if (z2 != z3) {
            Iterator<AbstractC6997b1> it = this.f35912a.iterator();
            while (it.hasNext()) {
                AbstractC6997b1 next = it.next();
                if (!z || next.f35906a == 2) {
                    if (status != null) {
                        next.mo2584a(status);
                    } else {
                        next.mo2583b(exc);
                    }
                    it.remove();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Status XOR exception should be null");
    }

    /* renamed from: i */
    public final void m2741i(Status status) {
        Handler handler;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        m2742h(status, null, false);
    }

    /* renamed from: j */
    public final void m2740j() {
        Handler handler;
        Handler handler2;
        if (this.f35920t) {
            handler = this.f35924x.f35942A;
            handler.removeMessages(11, this.f35914d);
            handler2 = this.f35924x.f35942A;
            handler2.removeMessages(9, this.f35914d);
            this.f35920t = false;
        }
    }

    /* renamed from: k */
    public final void m2739k() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j;
        handler = this.f35924x.f35942A;
        handler.removeMessages(12, this.f35914d);
        handler2 = this.f35924x.f35942A;
        handler3 = this.f35924x.f35942A;
        Message obtainMessage = handler3.obtainMessage(12, this.f35914d);
        j = this.f35924x.f35946d;
        handler2.sendMessageDelayed(obtainMessage, j);
    }

    /* renamed from: l */
    public final boolean m2738l(boolean z) {
        Handler handler;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        if (!this.f35913b.isConnected() || this.f35917q.size() != 0) {
            return false;
        }
        if (this.f35915k.m2614c()) {
            if (z) {
                m2739k();
            }
            return false;
        }
        this.f35913b.mo2656b("Timing out service connection.");
        return true;
    }

    /* renamed from: m */
    public final void m2737m(C6734b c6734b) {
        String str;
        for (C7001c1 c7001c1 : this.f35916p) {
            if (C7289o.m1908a(c6734b, C6734b.f35387p)) {
                str = this.f35913b.mo2654d();
            } else {
                str = null;
            }
            c7001c1.m2722b(this.f35914d, c6734b, str);
        }
        this.f35916p.clear();
    }

    /* renamed from: o */
    public final void m2735o(C6734b c6734b) {
        Handler handler;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        C6883a.InterfaceC6892f interfaceC6892f = this.f35913b;
        String name = interfaceC6892f.getClass().getName();
        String valueOf = String.valueOf(c6734b);
        StringBuilder sb = new StringBuilder(name.length() + 25 + valueOf.length());
        sb.append("onSignInFailed for ");
        sb.append(name);
        sb.append(" with ");
        sb.append(valueOf);
        interfaceC6892f.mo2656b(sb.toString());
        m2734p(c6734b, null);
    }

    /* renamed from: p */
    public final void m2734p(C6734b c6734b, Exception exc) {
        Handler handler;
        C7268h0 c7268h0;
        boolean z;
        Status m2697k;
        Status m2697k2;
        Status m2697k3;
        Handler handler2;
        Handler handler3;
        long j;
        Handler handler4;
        Status status;
        Handler handler5;
        Handler handler6;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        BinderC7049t0 binderC7049t0 = this.f35919s;
        if (binderC7049t0 != null) {
            binderC7049t0.m2598A2();
        }
        m2729u();
        c7268h0 = this.f35924x.f35952t;
        c7268h0.m1934c();
        m2737m(c6734b);
        if ((this.f35913b instanceof C7606e) && c6734b.m3528X0() != 24) {
            this.f35924x.f35947k = true;
            handler5 = this.f35924x.f35942A;
            handler6 = this.f35924x.f35942A;
            handler5.sendMessageDelayed(handler6.obtainMessage(19), 300000L);
        }
        if (c6734b.m3528X0() == 4) {
            status = C7008f.f35939D;
            m2741i(status);
        } else if (this.f35912a.isEmpty()) {
            this.f35922v = c6734b;
        } else if (exc != null) {
            handler4 = this.f35924x.f35942A;
            C7297q.m1889d(handler4);
            m2742h(null, exc, false);
        } else {
            z = this.f35924x.f35943B;
            if (z) {
                m2697k2 = C7008f.m2697k(this.f35914d, c6734b);
                m2742h(m2697k2, null, true);
                if (!this.f35912a.isEmpty() && !m2746d(c6734b) && !this.f35924x.m2684x(c6734b, this.f35918r)) {
                    if (c6734b.m3528X0() == 18) {
                        this.f35920t = true;
                    }
                    if (this.f35920t) {
                        handler2 = this.f35924x.f35942A;
                        handler3 = this.f35924x.f35942A;
                        Message obtain = Message.obtain(handler3, 9, this.f35914d);
                        j = this.f35924x.f35944a;
                        handler2.sendMessageDelayed(obtain, j);
                        return;
                    }
                    m2697k3 = C7008f.m2697k(this.f35914d, c6734b);
                    m2741i(m2697k3);
                    return;
                }
                return;
            }
            m2697k = C7008f.m2697k(this.f35914d, c6734b);
            m2741i(m2697k);
        }
    }

    /* renamed from: q */
    public final void m2733q(AbstractC6997b1 abstractC6997b1) {
        Handler handler;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        if (this.f35913b.isConnected()) {
            if (m2744f(abstractC6997b1)) {
                m2739k();
                return;
            } else {
                this.f35912a.add(abstractC6997b1);
                return;
            }
        }
        this.f35912a.add(abstractC6997b1);
        C6734b c6734b = this.f35922v;
        if (c6734b != null && c6734b.m3525a1()) {
            m2734p(this.f35922v, null);
        } else {
            m2724z();
        }
    }

    /* renamed from: r */
    public final void m2732r() {
        Handler handler;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        m2741i(C7008f.f35938C);
        this.f35915k.m2613d();
        for (C7017i c7017i : (C7017i[]) this.f35917q.keySet().toArray(new C7017i[0])) {
            m2733q(new C6994a1(c7017i, new C4348j()));
        }
        m2737m(new C6734b(4));
        if (this.f35913b.isConnected()) {
            this.f35913b.mo1994f(new C6996b0(this));
        }
    }

    /* renamed from: w */
    public final void m2727w() {
        Handler handler;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        if (this.f35920t) {
            m2724z();
        }
    }

    /* renamed from: x */
    public final void m2726x() {
        Handler handler;
        C6744g c6744g;
        Context context;
        Status status;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        if (this.f35920t) {
            m2740j();
            c6744g = this.f35924x.f35951s;
            context = this.f35924x.f35950r;
            if (c6744g.mo3489g(context) == 18) {
                status = new Status(21, "Connection timed out waiting for Google Play services update to complete.");
            } else {
                status = new Status(22, "API failed to connect while resuming due to an unknown error.");
            }
            m2741i(status);
            this.f35913b.mo2656b("Timing out connection while resuming.");
        }
    }

    /* renamed from: z */
    public final void m2724z() {
        Handler handler;
        C7268h0 c7268h0;
        Context context;
        handler = this.f35924x.f35942A;
        C7297q.m1889d(handler);
        if (!this.f35913b.isConnected() && !this.f35913b.mo2655c()) {
            try {
                c7268h0 = this.f35924x.f35952t;
                context = this.f35924x.f35950r;
                int m1936a = c7268h0.m1936a(context, this.f35913b);
                if (m1936a != 0) {
                    C6734b c6734b = new C6734b(m1936a, null);
                    String name = this.f35913b.getClass().getName();
                    String valueOf = String.valueOf(c6734b);
                    StringBuilder sb = new StringBuilder(name.length() + 35 + valueOf.length());
                    sb.append("The service for ");
                    sb.append(name);
                    sb.append(" is not available: ");
                    sb.append(valueOf);
                    Log.w("GoogleApiManager", sb.toString());
                    m2734p(c6734b, null);
                    return;
                }
                C7009f0 c7009f0 = new C7009f0(this.f35924x, this.f35913b, this.f35914d);
                if (this.f35913b.mo1987n()) {
                    ((BinderC7049t0) C7297q.m1883j(this.f35919s)).m2597b2(c7009f0);
                }
                try {
                    this.f35913b.mo1991h(c7009f0);
                } catch (SecurityException e) {
                    m2734p(new C6734b(10), e);
                }
            } catch (IllegalStateException e2) {
                m2734p(new C6734b(10), e2);
            }
        }
    }

    /* renamed from: b */
    public final void m2748b() {
        m2729u();
        m2737m(C6734b.f35387p);
        m2740j();
        Iterator<C7039p0> it = this.f35917q.values().iterator();
        if (!it.hasNext()) {
            m2745e();
            m2739k();
            return;
        }
        it.next().getClass();
        throw null;
    }

    /* renamed from: c */
    public final void m2747c(int i) {
        Handler handler;
        Handler handler2;
        long j;
        Handler handler3;
        Handler handler4;
        long j2;
        C7268h0 c7268h0;
        m2729u();
        this.f35920t = true;
        this.f35915k.m2612e(i, this.f35913b.mo2649m());
        handler = this.f35924x.f35942A;
        handler2 = this.f35924x.f35942A;
        Message obtain = Message.obtain(handler2, 9, this.f35914d);
        j = this.f35924x.f35944a;
        handler.sendMessageDelayed(obtain, j);
        handler3 = this.f35924x.f35942A;
        handler4 = this.f35924x.f35942A;
        Message obtain2 = Message.obtain(handler4, 11, this.f35914d);
        j2 = this.f35924x.f35945b;
        handler3.sendMessageDelayed(obtain2, j2);
        c7268h0 = this.f35924x.f35952t;
        c7268h0.m1934c();
        for (C7039p0 c7039p0 : this.f35917q.values()) {
            c7039p0.f36019a.run();
        }
    }

    /* renamed from: d */
    public final boolean m2746d(C6734b c6734b) {
        Object obj;
        C7048t c7048t;
        Set set;
        C7048t c7048t2;
        obj = C7008f.f35940E;
        synchronized (obj) {
            c7048t = this.f35924x.f35956x;
            if (c7048t != null) {
                set = this.f35924x.f35957y;
                if (set.contains(this.f35914d)) {
                    c7048t2 = this.f35924x.f35956x;
                    c7048t2.m2661q(c6734b, this.f35918r);
                    return true;
                }
            }
            return false;
        }
    }

    @Override // p203v3.InterfaceC7005e
    /* renamed from: j0 */
    public final void mo2594j0(int i) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.f35924x.f35942A;
        if (myLooper == handler.getLooper()) {
            m2747c(i);
            return;
        }
        handler2 = this.f35924x.f35942A;
        handler2.post(new RunnableC7060z(this, i));
    }

    @Override // p203v3.InterfaceC7005e
    /* renamed from: o0 */
    public final void mo2593o0(Bundle bundle) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.f35924x.f35942A;
        if (myLooper == handler.getLooper()) {
            m2748b();
            return;
        }
        handler2 = this.f35924x.f35942A;
        handler2.post(new RunnableC7058y(this));
    }
}
