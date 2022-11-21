package p023c1;

import android.content.Context;
import android.os.Build;
import p014b1.C0425b;
import p039d1.C3282k;
import p057f1.C3482p;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
import p209w0.EnumC7116k;
/* renamed from: c1.f */
/* loaded from: classes.dex */
public class C1032f extends AbstractC1028c<C0425b> {

    /* renamed from: e */
    public static final String f2932e = AbstractC7114j.m2489f("NetworkNotRoamingCtrlr");

    public C1032f(Context context, InterfaceC4086a interfaceC4086a) {
        super(C3282k.m19199c(context, interfaceC4086a).m19198d());
    }

    @Override // p023c1.AbstractC1028c
    /* renamed from: b */
    public boolean mo24787b(C3482p c3482p) {
        return c3482p.f15930j.m2524b() == EnumC7116k.NOT_ROAMING;
    }

    @Override // p023c1.AbstractC1028c
    /* renamed from: i */
    public boolean mo24786c(C0425b c0425b) {
        if (Build.VERSION.SDK_INT < 24) {
            AbstractC7114j.m2491c().mo2488a(f2932e, "Not-roaming network constraint is not supported before API 24, only checking for connected state.", new Throwable[0]);
            return !c0425b.m26542a();
        } else if (!c0425b.m26542a() || !c0425b.m26540c()) {
            return true;
        } else {
            return false;
        }
    }
}
