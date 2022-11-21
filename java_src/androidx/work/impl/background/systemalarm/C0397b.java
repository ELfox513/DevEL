package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.C0399d;
import java.util.ArrayList;
import java.util.List;
import p014b1.C0427d;
import p057f1.C3482p;
import p209w0.AbstractC7114j;
/* renamed from: androidx.work.impl.background.systemalarm.b */
/* loaded from: classes.dex */
public class C0397b {

    /* renamed from: e */
    public static final String f1401e = AbstractC7114j.m2489f("ConstraintsCmdHandler");

    /* renamed from: a */
    public final Context f1402a;

    /* renamed from: b */
    public final int f1403b;

    /* renamed from: c */
    public final C0399d f1404c;

    /* renamed from: d */
    public final C0427d f1405d;

    /* renamed from: a */
    public void m26609a() {
        List<C3482p> mo18778g = this.f1404c.m26600g().m2159r().mo26644B().mo18778g();
        ConstraintProxy.m26627a(this.f1402a, mo18778g);
        this.f1405d.m26537d(mo18778g);
        ArrayList<C3482p> arrayList = new ArrayList(mo18778g.size());
        long currentTimeMillis = System.currentTimeMillis();
        for (C3482p c3482p : mo18778g) {
            String str = c3482p.f15921a;
            if (currentTimeMillis >= c3482p.m18788a() && (!c3482p.m18787b() || this.f1405d.m26538c(str))) {
                arrayList.add(c3482p);
            }
        }
        for (C3482p c3482p2 : arrayList) {
            String str2 = c3482p2.f15921a;
            Intent m26623b = C0396a.m26623b(this.f1402a, str2);
            AbstractC7114j.m2491c().mo2488a(f1401e, String.format("Creating a delay_met command for workSpec with id (%s)", str2), new Throwable[0]);
            C0399d c0399d = this.f1404c;
            c0399d.m26596k(new C0399d.RunnableC0401b(c0399d, m26623b, this.f1403b));
        }
        this.f1405d.m26536e();
    }

    public C0397b(Context context, int i, C0399d c0399d) {
        this.f1402a = context;
        this.f1403b = i;
        this.f1404c = c0399d;
        this.f1405d = new C0427d(context, c0399d.m26601f(), null);
    }
}
