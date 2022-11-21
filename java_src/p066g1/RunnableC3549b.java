package p066g1;

import android.text.TextUtils;
import androidx.work.C0380b;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.List;
import p057f1.C3482p;
import p209w0.AbstractC7114j;
import p209w0.C7103b;
import p209w0.InterfaceC7119m;
import p217x0.C7192c;
import p217x0.C7196f;
import p217x0.C7197g;
import p217x0.C7199i;
import p217x0.InterfaceC7195e;
/* renamed from: g1.b */
/* loaded from: classes.dex */
public class RunnableC3549b implements Runnable {

    /* renamed from: d */
    public static final String f16085d = AbstractC7114j.m2489f("EnqueueRunnable");

    /* renamed from: a */
    public final C7197g f16086a;

    /* renamed from: b */
    public final C7192c f16087b = new C7192c();

    /* JADX WARN: Removed duplicated region for block: B:118:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01e1 A[LOOP:5: B:125:0x01db->B:127:0x01e1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x020a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0159  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m18635c(p217x0.C7199i r19, java.util.List<? extends p209w0.AbstractC7132u> r20, java.lang.String[] r21, java.lang.String r22, p209w0.EnumC7107d r23) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p066g1.RunnableC3549b.m18635c(x0.i, java.util.List, java.lang.String[], java.lang.String, w0.d):boolean");
    }

    /* renamed from: h */
    public static boolean m18630h(C7199i c7199i, String str) {
        try {
            Class<?> cls = Class.forName(str);
            for (InterfaceC7195e interfaceC7195e : c7199i.m2160q()) {
                if (cls.isAssignableFrom(interfaceC7195e.getClass())) {
                    return true;
                }
            }
        } catch (ClassNotFoundException unused) {
        }
        return false;
    }

    /* renamed from: d */
    public InterfaceC7119m m18634d() {
        return this.f16087b;
    }

    /* renamed from: g */
    public static void m18631g(C3482p c3482p) {
        C7103b c7103b = c3482p.f15930j;
        String str = c3482p.f15923c;
        if (!str.equals(ConstraintTrackingWorker.class.getName())) {
            if (c7103b.m2520f() || c7103b.m2517i()) {
                C0380b.C0381a c0381a = new C0380b.C0381a();
                c0381a.m26653c(c3482p.f15925e).m26650f("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
                c3482p.f15923c = ConstraintTrackingWorker.class.getName();
                c3482p.f15925e = c0381a.m26655a();
            }
        }
    }

    /* renamed from: a */
    public boolean m18637a() {
        WorkDatabase m2159r = this.f16086a.m2186g().m2159r();
        m2159r.m15828c();
        try {
            boolean m18633e = m18633e(this.f16086a);
            m2159r.m15813r();
            return m18633e;
        } finally {
            m2159r.m15824g();
        }
    }

    /* renamed from: f */
    public void m18632f() {
        C7199i m2186g = this.f16086a.m2186g();
        C7196f.m2194b(m2186g.m2165l(), m2186g.m2159r(), m2186g.m2160q());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (!this.f16086a.m2185h()) {
                if (m18637a()) {
                    C3552e.m18623a(this.f16086a.m2186g().m2166k(), RescheduleReceiver.class, true);
                    m18632f();
                }
                this.f16087b.m2210a(InterfaceC7119m.f36132a);
                return;
            }
            throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f16086a));
        } catch (Throwable th) {
            this.f16087b.m2210a(new InterfaceC7119m.AbstractC7121b.C7122a(th));
        }
    }

    public RunnableC3549b(C7197g c7197g) {
        this.f16086a = c7197g;
    }

    /* renamed from: b */
    public static boolean m18636b(C7197g c7197g) {
        boolean m18635c = m18635c(c7197g.m2186g(), c7197g.m2187f(), (String[]) C7197g.m2181l(c7197g).toArray(new String[0]), c7197g.m2189d(), c7197g.m2191b());
        c7197g.m2182k();
        return m18635c;
    }

    /* renamed from: e */
    public static boolean m18633e(C7197g c7197g) {
        List<C7197g> m2188e = c7197g.m2188e();
        boolean z = false;
        if (m2188e != null) {
            boolean z2 = false;
            for (C7197g c7197g2 : m2188e) {
                if (!c7197g2.m2183j()) {
                    z2 |= m18633e(c7197g2);
                } else {
                    AbstractC7114j.m2491c().mo2484h(f16085d, String.format("Already enqueued work ids (%s).", TextUtils.join(", ", c7197g2.m2190c())), new Throwable[0]);
                }
            }
            z = z2;
        }
        return m18636b(c7197g) | z;
    }
}
