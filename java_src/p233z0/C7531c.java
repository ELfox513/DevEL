package p233z0;

import android.content.Context;
import androidx.work.impl.background.systemalarm.C0396a;
import p057f1.C3482p;
import p209w0.AbstractC7114j;
import p217x0.InterfaceC7195e;
/* renamed from: z0.c */
/* loaded from: classes.dex */
public class C7531c implements InterfaceC7195e {

    /* renamed from: b */
    public static final String f37390b = AbstractC7114j.m2489f("SystemAlarmScheduler");

    /* renamed from: a */
    public final Context f37391a;

    @Override // p217x0.InterfaceC7195e
    /* renamed from: a */
    public boolean mo1291a() {
        return true;
    }

    @Override // p217x0.InterfaceC7195e
    /* renamed from: c */
    public void mo1289c(C3482p... c3482pArr) {
        for (C3482p c3482p : c3482pArr) {
            m1290b(c3482p);
        }
    }

    @Override // p217x0.InterfaceC7195e
    /* renamed from: e */
    public void mo1288e(String str) {
        this.f37391a.startService(C0396a.m26619g(this.f37391a, str));
    }

    public C7531c(Context context) {
        this.f37391a = context.getApplicationContext();
    }

    /* renamed from: b */
    public final void m1290b(C3482p c3482p) {
        AbstractC7114j.m2491c().mo2488a(f37390b, String.format("Scheduling work with workSpecId %s", c3482p.f15921a), new Throwable[0]);
        this.f37391a.startService(C0396a.m26620f(this.f37391a, c3482p.f15921a));
    }
}
