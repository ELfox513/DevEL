package p016b3;

import android.content.Context;
import java.io.File;
import java.util.regex.Pattern;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.C6479yu;
import p168r4.e94;
import p168r4.f70;
import p168r4.f94;
import p168r4.l84;
import p168r4.m94;
import p168r4.q84;
import p168r4.s94;
import p168r4.t84;
import p168r4.vl0;
/* renamed from: b3.e0 */
/* loaded from: classes.dex */
public final class C0471e0 extends f94 {

    /* renamed from: d */
    public final Context f1600d;

    public C0471e0(Context context, e94 e94Var) {
        super(e94Var);
        this.f1600d = context;
    }

    /* renamed from: b */
    public static t84 m26391b(Context context) {
        t84 t84Var = new t84(new m94(new File(context.getCacheDir(), "admob_volley"), 20971520), new C0471e0(context, new s94(null, null)), 4);
        t84Var.m6900a();
        return t84Var;
    }

    @Override // p168r4.f94, p168r4.i84
    /* renamed from: a */
    public final l84 mo10712a(q84<?> q84Var) {
        String str;
        String str2;
        if (q84Var.m7940d() == 0) {
            if (Pattern.matches((String) C5592av.m12935c().m8098c(C6225rz.f30897R2), q84Var.m7933u())) {
                C6479yu.m4568a();
                if (vl0.m6116l(this.f1600d, 13400000)) {
                    l84 mo10712a = new f70(this.f1600d).mo10712a(q84Var);
                    if (mo10712a != null) {
                        String valueOf = String.valueOf(q84Var.m7933u());
                        if (valueOf.length() != 0) {
                            str2 = "Got gmscore asset response: ".concat(valueOf);
                        } else {
                            str2 = new String("Got gmscore asset response: ");
                        }
                        C0543w1.m26251k(str2);
                        return mo10712a;
                    }
                    String valueOf2 = String.valueOf(q84Var.m7933u());
                    if (valueOf2.length() != 0) {
                        str = "Failed to get gmscore asset response: ".concat(valueOf2);
                    } else {
                        str = new String("Failed to get gmscore asset response: ");
                    }
                    C0543w1.m26251k(str);
                }
            }
        }
        return super.mo10712a(q84Var);
    }
}
