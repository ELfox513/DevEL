package p016b3;

import android.content.Context;
import com.badlogic.gdx.Net;
import java.util.Map;
import p026c4.C1044e;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.bm0;
import p168r4.cm0;
import p168r4.h83;
import p168r4.l84;
import p168r4.t84;
import p168r4.vm0;
import p168r4.x74;
import p168r4.y94;
/* renamed from: b3.v0 */
/* loaded from: classes.dex */
public final class C0539v0 {

    /* renamed from: a */
    public static t84 f1696a;

    /* renamed from: b */
    public static final Object f1697b = new Object();
    @Deprecated

    /* renamed from: c */
    public static final InterfaceC0519q0<Void> f1698c = new C0507n0();

    /* renamed from: a */
    public final h83<l84> m26254a(String str) {
        vm0 vm0Var = new vm0();
        f1696a.m6899b(new C0535u0(str, null, vm0Var));
        return vm0Var;
    }

    /* renamed from: b */
    public final h83<String> m26253b(int i, String str, Map<String, String> map, byte[] bArr) {
        C0527s0 c0527s0 = new C0527s0(null);
        C0511o0 c0511o0 = new C0511o0(this, str, c0527s0);
        bm0 bm0Var = new bm0(null);
        C0515p0 c0515p0 = new C0515p0(this, i, str, c0527s0, c0511o0, bArr, map, bm0Var);
        if (bm0.m12756j()) {
            try {
                bm0Var.m12764b(str, Net.HttpMethods.GET, c0515p0.mo7952B(), c0515p0.mo7951C());
            } catch (x74 e) {
                cm0.m12437f(e.getMessage());
            }
        }
        f1696a.m6899b(c0515p0);
        return c0527s0;
    }

    public C0539v0(Context context) {
        t84 m4795a;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (f1697b) {
            if (f1696a == null) {
                C6225rz.m7278a(context);
                if (!C1044e.m24774a()) {
                    if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30889Q2)).booleanValue()) {
                        m4795a = C0471e0.m26391b(context);
                        f1696a = m4795a;
                    }
                }
                m4795a = y94.m4795a(context, null);
                f1696a = m4795a;
            }
        }
    }
}
