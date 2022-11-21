package p168r4;

import android.annotation.TargetApi;
import android.util.Pair;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: r4.d92 */
/* loaded from: classes2.dex */
public final class d92 implements ga1, y81, m71, d81, InterfaceC5812gt, j71, w91, InterfaceC6165qc, z71, cf1 {

    /* renamed from: t */
    public final xt2 f22191t;

    /* renamed from: a */
    public final AtomicReference<InterfaceC5887iv> f22183a = new AtomicReference<>();

    /* renamed from: b */
    public final AtomicReference<InterfaceC5666cw> f22184b = new AtomicReference<>();

    /* renamed from: d */
    public final AtomicReference<InterfaceC5742ex> f22185d = new AtomicReference<>();

    /* renamed from: k */
    public final AtomicReference<InterfaceC5998lv> f22186k = new AtomicReference<>();

    /* renamed from: p */
    public final AtomicReference<InterfaceC5962kw> f22187p = new AtomicReference<>();

    /* renamed from: q */
    public final AtomicBoolean f22188q = new AtomicBoolean(true);

    /* renamed from: r */
    public final AtomicBoolean f22189r = new AtomicBoolean(false);

    /* renamed from: s */
    public final AtomicBoolean f22190s = new AtomicBoolean(false);

    /* renamed from: u */
    public final BlockingQueue<Pair<String, String>> f22192u = new ArrayBlockingQueue(((Integer) C5592av.m12935c().m8098c(C6225rz.f31072m6)).intValue());

    /* renamed from: A */
    public final void m12198A(InterfaceC5742ex interfaceC5742ex) {
        this.f22185d.set(interfaceC5742ex);
    }

    /* renamed from: L */
    public final void m12197L(InterfaceC5998lv interfaceC5998lv) {
        this.f22186k.set(interfaceC5998lv);
    }

    /* renamed from: N */
    public final void m12196N(InterfaceC5962kw interfaceC5962kw) {
        this.f22187p.set(interfaceC5962kw);
    }

    /* renamed from: c */
    public final synchronized InterfaceC5887iv m12194c() {
        return this.f22183a.get();
    }

    @Override // p168r4.ga1
    /* renamed from: c0 */
    public final void mo4832c0(og0 og0Var) {
    }

    @Override // p168r4.y81
    /* renamed from: d */
    public final synchronized void mo4268d() {
        ol2.m8771a(this.f22183a, z82.f34399a);
        ol2.m8771a(this.f22186k, a92.f20423a);
        this.f22190s.set(true);
        m12195Q();
    }

    @Override // p168r4.d81
    /* renamed from: g */
    public final void mo5385g() {
        ol2.m8771a(this.f22183a, o82.f28922a);
    }

    @Override // p168r4.j71
    /* renamed from: h */
    public final void mo5384h() {
        ol2.m8771a(this.f22183a, y82.f34008a);
    }

    @Override // p168r4.j71
    /* renamed from: k */
    public final void mo5382k() {
    }

    @Override // p168r4.j71
    /* renamed from: l */
    public final void mo5381l() {
    }

    @Override // p168r4.z71
    /* renamed from: o */
    public final void mo4410o(final C5996lt c5996lt) {
        ol2.m8771a(this.f22187p, new nl2(c5996lt) { // from class: r4.r82

            /* renamed from: a */
            public final C5996lt f30501a;

            {
                this.f30501a = c5996lt;
            }

            @Override // p168r4.nl2
            /* renamed from: a */
            public final void mo4181a(Object obj) {
                ((InterfaceC5962kw) obj).mo9905I4(this.f30501a);
            }
        });
    }

    @Override // p168r4.InterfaceC6165qc
    @TargetApi(5)
    /* renamed from: p */
    public final synchronized void mo5379p(final String str, final String str2) {
        if (this.f22188q.get()) {
            if (!this.f22192u.offer(new Pair<>(str, str2))) {
                cm0.m12442a("The queue for app events is full, dropping the new event.");
                xt2 xt2Var = this.f22191t;
                if (xt2Var != null) {
                    wt2 m5590a = wt2.m5590a("dae_action");
                    m5590a.m5588c("dae_name", str);
                    m5590a.m5588c("dae_data", str2);
                    xt2Var.mo4985a(m5590a);
                    return;
                }
            }
            return;
        }
        ol2.m8771a(this.f22184b, new nl2(str, str2) { // from class: r4.q82

            /* renamed from: a */
            public final String f30038a;

            /* renamed from: b */
            public final String f30039b;

            {
                this.f30038a = str;
                this.f30039b = str2;
            }

            @Override // p168r4.nl2
            /* renamed from: a */
            public final void mo4181a(Object obj) {
                ((InterfaceC5666cw) obj).mo12337x6(this.f30038a, this.f30039b);
            }
        });
    }

    @Override // p168r4.j71
    /* renamed from: q */
    public final void mo5378q(eh0 eh0Var, String str, String str2) {
    }

    /* renamed from: s */
    public final synchronized InterfaceC5666cw m12193s() {
        return this.f22184b.get();
    }

    @Override // p168r4.w91
    /* renamed from: u */
    public final void mo5377u(final C5591au c5591au) {
        ol2.m8771a(this.f22185d, new nl2(c5591au) { // from class: r4.p82

            /* renamed from: a */
            public final C5591au f29387a;

            {
                this.f29387a = c5591au;
            }

            @Override // p168r4.nl2
            /* renamed from: a */
            public final void mo4181a(Object obj) {
                ((InterfaceC5742ex) obj).mo7279v5(this.f29387a);
            }
        });
    }

    /* renamed from: v */
    public final void m12192v(InterfaceC5887iv interfaceC5887iv) {
        this.f22183a.set(interfaceC5887iv);
    }

    @Override // p168r4.ga1
    /* renamed from: A0 */
    public final void mo4833A0(bp2 bp2Var) {
        this.f22188q.set(true);
        this.f22190s.set(false);
    }

    @Override // p168r4.m71
    /* renamed from: B */
    public final void mo5143B(final C5996lt c5996lt) {
        ol2.m8771a(this.f22183a, new nl2(c5996lt) { // from class: r4.v82

            /* renamed from: a */
            public final C5996lt f32651a;

            {
                this.f32651a = c5996lt;
            }

            @Override // p168r4.nl2
            /* renamed from: a */
            public final void mo4181a(Object obj) {
                ((InterfaceC5887iv) obj).mo5592g0(this.f32651a);
            }
        });
        ol2.m8771a(this.f22183a, new nl2(c5996lt) { // from class: r4.w82

            /* renamed from: a */
            public final C5996lt f33136a;

            {
                this.f33136a = c5996lt;
            }

            @Override // p168r4.nl2
            /* renamed from: a */
            public final void mo4181a(Object obj) {
                ((InterfaceC5887iv) obj).mo5598D(this.f33136a.f27361a);
            }
        });
        ol2.m8771a(this.f22186k, new nl2(c5996lt) { // from class: r4.x82

            /* renamed from: a */
            public final C5996lt f33515a;

            {
                this.f33515a = c5996lt;
            }

            @Override // p168r4.nl2
            /* renamed from: a */
            public final void mo4181a(Object obj) {
                ((InterfaceC5998lv) obj).mo8214u2(this.f33515a);
            }
        });
        this.f22188q.set(false);
        this.f22192u.clear();
    }

    @Override // p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final void mo3609F0() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30983b7)).booleanValue()) {
            ol2.m8771a(this.f22183a, l82.f27126a);
        }
    }

    @TargetApi(5)
    /* renamed from: Q */
    public final void m12195Q() {
        if (this.f22189r.get() && this.f22190s.get()) {
            for (final Pair<String, String> pair : this.f22192u) {
                ol2.m8771a(this.f22184b, new nl2(pair) { // from class: r4.s82

                    /* renamed from: a */
                    public final Pair f31282a;

                    {
                        this.f31282a = pair;
                    }

                    @Override // p168r4.nl2
                    /* renamed from: a */
                    public final void mo4181a(Object obj) {
                        Pair pair2 = this.f31282a;
                        ((InterfaceC5666cw) obj).mo12337x6((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            this.f22192u.clear();
            this.f22188q.set(false);
        }
    }

    @Override // p168r4.cf1
    /* renamed from: a */
    public final void mo5096a() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30983b7)).booleanValue()) {
            ol2.m8771a(this.f22183a, m82.f27539a);
        }
        ol2.m8771a(this.f22187p, n82.f28200a);
    }

    @Override // p168r4.j71
    /* renamed from: f */
    public final void mo5386f() {
        ol2.m8771a(this.f22183a, b92.f20923a);
        ol2.m8771a(this.f22187p, c92.f21448a);
        ol2.m8771a(this.f22187p, k82.f26342a);
    }

    @Override // p168r4.j71
    /* renamed from: j */
    public final void mo5383j() {
        ol2.m8771a(this.f22183a, j82.f25952a);
        ol2.m8771a(this.f22187p, t82.f31732a);
    }

    /* renamed from: z */
    public final void m12191z(InterfaceC5666cw interfaceC5666cw) {
        this.f22184b.set(interfaceC5666cw);
        this.f22189r.set(true);
        m12195Q();
    }

    public d92(xt2 xt2Var) {
        this.f22191t = xt2Var;
    }
}
