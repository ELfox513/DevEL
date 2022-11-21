package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.C0399d;
import java.util.Collections;
import java.util.List;
import p014b1.C0427d;
import p014b1.InterfaceC0426c;
import p057f1.C3482p;
import p066g1.C3560l;
import p066g1.C3568p;
import p209w0.AbstractC7114j;
import p217x0.InterfaceC7191b;
/* renamed from: androidx.work.impl.background.systemalarm.c */
/* loaded from: classes.dex */
public class C0398c implements InterfaceC0426c, InterfaceC7191b, C3568p.InterfaceC3570b {

    /* renamed from: u */
    public static final String f1406u = AbstractC7114j.m2489f("DelayMetCommandHandler");

    /* renamed from: a */
    public final Context f1407a;

    /* renamed from: b */
    public final int f1408b;

    /* renamed from: d */
    public final String f1409d;

    /* renamed from: k */
    public final C0399d f1410k;

    /* renamed from: p */
    public final C0427d f1411p;

    /* renamed from: s */
    public PowerManager.WakeLock f1414s;

    /* renamed from: t */
    public boolean f1415t = false;

    /* renamed from: r */
    public int f1413r = 0;

    /* renamed from: q */
    public final Object f1412q = new Object();

    @Override // p014b1.InterfaceC0426c
    /* renamed from: b */
    public void mo1577b(List<String> list) {
        m26606g();
    }

    /* renamed from: c */
    public final void m26608c() {
        synchronized (this.f1412q) {
            this.f1411p.m26536e();
            this.f1410k.m26599h().m18609c(this.f1409d);
            PowerManager.WakeLock wakeLock = this.f1414s;
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC7114j.m2491c().mo2488a(f1406u, String.format("Releasing wakelock %s for WorkSpec %s", this.f1414s, this.f1409d), new Throwable[0]);
                this.f1414s.release();
            }
        }
    }

    /* renamed from: e */
    public void m26607e() {
        this.f1414s = C3560l.m18613b(this.f1407a, String.format("%s (%s)", this.f1409d, Integer.valueOf(this.f1408b)));
        AbstractC7114j m2491c = AbstractC7114j.m2491c();
        String str = f1406u;
        m2491c.mo2488a(str, String.format("Acquiring wakelock %s for WorkSpec %s", this.f1414s, this.f1409d), new Throwable[0]);
        this.f1414s.acquire();
        C3482p mo18772m = this.f1410k.m26600g().m2159r().mo26644B().mo18772m(this.f1409d);
        if (mo18772m == null) {
            m26606g();
            return;
        }
        boolean m18787b = mo18772m.m18787b();
        this.f1415t = m18787b;
        if (!m18787b) {
            AbstractC7114j.m2491c().mo2488a(str, String.format("No constraints for %s", this.f1409d), new Throwable[0]);
            mo1575f(Collections.singletonList(this.f1409d));
            return;
        }
        this.f1411p.m26537d(Collections.singletonList(mo18772m));
    }

    @Override // p014b1.InterfaceC0426c
    /* renamed from: f */
    public void mo1575f(List<String> list) {
        if (!list.contains(this.f1409d)) {
            return;
        }
        synchronized (this.f1412q) {
            if (this.f1413r == 0) {
                this.f1413r = 1;
                AbstractC7114j.m2491c().mo2488a(f1406u, String.format("onAllConstraintsMet for %s", this.f1409d), new Throwable[0]);
                if (this.f1410k.m26602e().m2201j(this.f1409d)) {
                    this.f1410k.m26599h().m18610b(this.f1409d, 600000L, this);
                } else {
                    m26608c();
                }
            } else {
                AbstractC7114j.m2491c().mo2488a(f1406u, String.format("Already started work for %s", this.f1409d), new Throwable[0]);
            }
        }
    }

    /* renamed from: g */
    public final void m26606g() {
        synchronized (this.f1412q) {
            if (this.f1413r < 2) {
                this.f1413r = 2;
                AbstractC7114j m2491c = AbstractC7114j.m2491c();
                String str = f1406u;
                m2491c.mo2488a(str, String.format("Stopping work for WorkSpec %s", this.f1409d), new Throwable[0]);
                Intent m26619g = C0396a.m26619g(this.f1407a, this.f1409d);
                C0399d c0399d = this.f1410k;
                c0399d.m26596k(new C0399d.RunnableC0401b(c0399d, m26619g, this.f1408b));
                if (this.f1410k.m26602e().m2204g(this.f1409d)) {
                    AbstractC7114j.m2491c().mo2488a(str, String.format("WorkSpec %s needs to be rescheduled", this.f1409d), new Throwable[0]);
                    Intent m26620f = C0396a.m26620f(this.f1407a, this.f1409d);
                    C0399d c0399d2 = this.f1410k;
                    c0399d2.m26596k(new C0399d.RunnableC0401b(c0399d2, m26620f, this.f1408b));
                } else {
                    AbstractC7114j.m2491c().mo2488a(str, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f1409d), new Throwable[0]);
                }
            } else {
                AbstractC7114j.m2491c().mo2488a(f1406u, String.format("Already stopped work for %s", this.f1409d), new Throwable[0]);
            }
        }
    }

    public C0398c(Context context, int i, String str, C0399d c0399d) {
        this.f1407a = context;
        this.f1408b = i;
        this.f1410k = c0399d;
        this.f1409d = str;
        this.f1411p = new C0427d(context, c0399d.m26601f(), this);
    }

    @Override // p066g1.C3568p.InterfaceC3570b
    /* renamed from: a */
    public void mo18608a(String str) {
        AbstractC7114j.m2491c().mo2488a(f1406u, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        m26606g();
    }

    @Override // p217x0.InterfaceC7191b
    /* renamed from: d */
    public void mo1576d(String str, boolean z) {
        AbstractC7114j.m2491c().mo2488a(f1406u, String.format("onExecuted %s, %s", str, Boolean.valueOf(z)), new Throwable[0]);
        m26608c();
        if (z) {
            Intent m26620f = C0396a.m26620f(this.f1407a, this.f1409d);
            C0399d c0399d = this.f1410k;
            c0399d.m26596k(new C0399d.RunnableC0401b(c0399d, m26620f, this.f1408b));
        }
        if (this.f1415t) {
            Intent m26624a = C0396a.m26624a(this.f1407a);
            C0399d c0399d2 = this.f1410k;
            c0399d2.m26596k(new C0399d.RunnableC0401b(c0399d2, m26624a, this.f1408b));
        }
    }
}
