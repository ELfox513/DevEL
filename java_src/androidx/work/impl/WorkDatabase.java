package androidx.work.impl;

import android.content.Context;
import androidx.work.impl.C0385a;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p057f1.InterfaceC3460b;
import p057f1.InterfaceC3464e;
import p057f1.InterfaceC3468h;
import p057f1.InterfaceC3473k;
import p057f1.InterfaceC3477n;
import p057f1.InterfaceC3485q;
import p057f1.InterfaceC3497t;
import p128n0.AbstractC4676e;
import p128n0.C4675d;
import p155q0.InterfaceC5382b;
import p155q0.InterfaceC5383c;
import p164r0.C5521c;
import p217x0.C7198h;
/* loaded from: classes.dex */
public abstract class WorkDatabase extends AbstractC4676e {

    /* renamed from: l */
    public static final long f1368l = TimeUnit.DAYS.toMillis(1);

    /* renamed from: androidx.work.impl.WorkDatabase$a */
    /* loaded from: classes.dex */
    public class C0382a implements InterfaceC5383c.InterfaceC5387c {

        /* renamed from: a */
        public final /* synthetic */ Context f1369a;

        public C0382a(Context context) {
            this.f1369a = context;
        }

        @Override // p155q0.InterfaceC5383c.InterfaceC5387c
        /* renamed from: a */
        public InterfaceC5383c mo13123a(InterfaceC5383c.C5385b c5385b) {
            InterfaceC5383c.C5385b.C5386a m13355a = InterfaceC5383c.C5385b.m13355a(this.f1369a);
            m13355a.m13352c(c5385b.f20077b).m13353b(c5385b.f20078c).m13351d(true);
            return new C5521c().mo13123a(m13355a.m13354a());
        }
    }

    /* renamed from: u */
    public static AbstractC4676e.AbstractC4678b m26648u() {
        return new C0383b();
    }

    /* renamed from: v */
    public static long m26647v() {
        return System.currentTimeMillis() - f1368l;
    }

    /* renamed from: w */
    public static String m26646w() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + m26647v() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    /* renamed from: A */
    public abstract InterfaceC3477n mo26645A();

    /* renamed from: B */
    public abstract InterfaceC3485q mo26644B();

    /* renamed from: C */
    public abstract InterfaceC3497t mo26643C();

    /* renamed from: t */
    public abstract InterfaceC3460b mo26631t();

    /* renamed from: x */
    public abstract InterfaceC3464e mo26630x();

    /* renamed from: y */
    public abstract InterfaceC3468h mo26629y();

    /* renamed from: z */
    public abstract InterfaceC3473k mo26628z();

    /* renamed from: androidx.work.impl.WorkDatabase$b */
    /* loaded from: classes.dex */
    public class C0383b extends AbstractC4676e.AbstractC4678b {
        @Override // p128n0.AbstractC4676e.AbstractC4678b
        /* renamed from: c */
        public void mo15803c(InterfaceC5382b interfaceC5382b) {
            super.mo15803c(interfaceC5382b);
            interfaceC5382b.mo13130u();
            try {
                interfaceC5382b.mo13140B(WorkDatabase.m26646w());
                interfaceC5382b.mo13134e0();
            } finally {
                interfaceC5382b.mo13131s0();
            }
        }
    }

    /* renamed from: s */
    public static WorkDatabase m26649s(Context context, Executor executor, boolean z) {
        AbstractC4676e.C4677a m15833a;
        if (z) {
            m15833a = C4675d.m15831c(context, WorkDatabase.class).m15810c();
        } else {
            m15833a = C4675d.m15833a(context, WorkDatabase.class, C7198h.m2177d());
            m15833a.m15807f(new C0382a(context));
        }
        return (WorkDatabase) m15833a.m15806g(executor).m15812a(m26648u()).m15811b(C0385a.f1378a).m15811b(new C0385a.C0393h(context, 2, 3)).m15811b(C0385a.f1379b).m15811b(C0385a.f1380c).m15811b(new C0385a.C0393h(context, 5, 6)).m15811b(C0385a.f1381d).m15811b(C0385a.f1382e).m15811b(C0385a.f1383f).m15811b(new C0385a.C0394i(context)).m15811b(new C0385a.C0393h(context, 10, 11)).m15811b(C0385a.f1384g).m15808e().m15809d();
    }
}
