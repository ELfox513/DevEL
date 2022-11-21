package p168r4;

import android.graphics.Rect;
import com.prineside.tdi2.Config;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: r4.zm1 */
/* loaded from: classes2.dex */
public final class zm1 {

    /* renamed from: a */
    public final Executor f34674a;

    /* renamed from: b */
    public final zz0 f34675b;

    /* renamed from: c */
    public final xe1 f34676c;

    public zm1(Executor executor, zz0 zz0Var, xe1 xe1Var) {
        this.f34674a = executor;
        this.f34676c = xe1Var;
        this.f34675b = zz0Var;
    }

    /* renamed from: b */
    public final /* synthetic */ void m4183b(cs0 cs0Var, Map map) {
        this.f34675b.m4015b();
    }

    /* renamed from: c */
    public final /* synthetic */ void m4182c(cs0 cs0Var, Map map) {
        this.f34675b.m4014c();
    }

    /* renamed from: a */
    public final void m4184a(final cs0 cs0Var) {
        if (cs0Var == null) {
            return;
        }
        this.f34676c.m5335T0(cs0Var.mo5124I());
        this.f34676c.m4759K0(new InterfaceC6064nm(cs0Var) { // from class: r4.um1

            /* renamed from: a */
            public final cs0 f32323a;

            {
                this.f32323a = cs0Var;
            }

            @Override // p168r4.InterfaceC6064nm
            /* renamed from: Y */
            public final void mo4017Y(C6026mm c6026mm) {
                st0 mo5057o0 = this.f32323a.mo5057o0();
                Rect rect = c6026mm.f27776d;
                mo5057o0.mo7012J0(rect.left, rect.top, false);
            }
        }, this.f34674a);
        this.f34676c.m4759K0(new InterfaceC6064nm(cs0Var) { // from class: r4.vm1

            /* renamed from: a */
            public final cs0 f32762a;

            {
                this.f32762a = cs0Var;
            }

            @Override // p168r4.InterfaceC6064nm
            /* renamed from: Y */
            public final void mo4017Y(C6026mm c6026mm) {
                String str;
                cs0 cs0Var2 = this.f32762a;
                HashMap hashMap = new HashMap();
                if (true != c6026mm.f27782j) {
                    str = "0";
                } else {
                    str = Config.SITE_API_VERSION;
                }
                hashMap.put("isVisible", str);
                cs0Var2.mo5125H0("onAdVisibilityChanged", hashMap);
            }
        }, this.f34674a);
        this.f34676c.m4759K0(this.f34675b, this.f34674a);
        this.f34675b.m4016a(cs0Var);
        cs0Var.mo5080g0("/trackActiveViewUnit", new u50(this) { // from class: r4.xm1

            /* renamed from: a */
            public final zm1 f33638a;

            {
                this.f33638a = this;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                this.f33638a.m4182c((cs0) obj, map);
            }
        });
        cs0Var.mo5080g0("/untrackActiveViewUnit", new u50(this) { // from class: r4.ym1

            /* renamed from: a */
            public final zm1 f34144a;

            {
                this.f34144a = this;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                this.f34144a.m4183b((cs0) obj, map);
            }
        });
    }
}
