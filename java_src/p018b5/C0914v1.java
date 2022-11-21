package p018b5;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import p060f4.BinderC3514b;
import p070g5.C3838u4;
import p220x3.C7297q;
/* renamed from: b5.v1 */
/* loaded from: classes2.dex */
public final class C0914v1 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ String f2347p;

    /* renamed from: q */
    public final /* synthetic */ String f2348q;

    /* renamed from: r */
    public final /* synthetic */ Context f2349r;

    /* renamed from: s */
    public final /* synthetic */ Bundle f2350s;

    /* renamed from: t */
    public final /* synthetic */ C0966y2 f2351t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0914v1(C0966y2 c0966y2, String str, String str2, Context context, Bundle bundle) {
        super(c0966y2, true);
        this.f2351t = c0966y2;
        this.f2347p = str;
        this.f2348q = str2;
        this.f2349r = context;
        this.f2350s = bundle;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        boolean m24936n;
        String str;
        String str2;
        String str3;
        InterfaceC0642f1 interfaceC0642f1;
        boolean z;
        InterfaceC0642f1 interfaceC0642f12;
        String str4;
        String str5;
        try {
            C0966y2 c0966y2 = this.f2351t;
            m24936n = C0966y2.m24936n(this.f2347p, this.f2348q);
            if (m24936n) {
                String str6 = this.f2348q;
                String str7 = this.f2347p;
                str5 = this.f2351t.f2426a;
                str2 = str7;
                str3 = str6;
                str = str5;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            C7297q.m1883j(this.f2349r);
            C0966y2 c0966y22 = this.f2351t;
            c0966y22.f2434i = c0966y22.m24930t(this.f2349r, true);
            interfaceC0642f1 = this.f2351t.f2434i;
            if (interfaceC0642f1 == null) {
                str4 = this.f2351t.f2426a;
                Log.w(str4, "Failed to connect to measurement client.");
                return;
            }
            int m23007a = DynamiteModule.m23007a(this.f2349r, ModuleDescriptor.MODULE_ID);
            int m23005c = DynamiteModule.m23005c(this.f2349r, ModuleDescriptor.MODULE_ID);
            int max = Math.max(m23007a, m23005c);
            if (m23005c < m23007a) {
                z = true;
            } else {
                z = false;
            }
            C0795o1 c0795o1 = new C0795o1(43042L, max, z, str, str2, str3, this.f2350s, C3838u4.m17961a(this.f2349r));
            interfaceC0642f12 = this.f2351t.f2434i;
            ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f12)).initialize(BinderC3514b.m18741L0(this.f2349r), c0795o1, this.f2052a);
        } catch (Exception e) {
            this.f2351t.m24939k(e, true, false);
        }
    }
}
