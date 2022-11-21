package p077h3;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0497k2;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.cm0;
import p168r4.im0;
import p168r4.sk0;
import p168r4.t73;
import p235z2.C7601t;
/* renamed from: h3.c0 */
/* loaded from: classes.dex */
public final class C3990c0 implements t73<C4003j> {

    /* renamed from: a */
    public final /* synthetic */ sk0 f17424a;

    /* renamed from: b */
    public final /* synthetic */ BinderC3998g0 f17425b;

    public C3990c0(BinderC3998g0 binderC3998g0, sk0 sk0Var) {
        this.f17425b = binderC3998g0;
        this.f17424a = sk0Var;
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(C4003j c4003j) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        String str3;
        String str4;
        Context context;
        im0 im0Var;
        String str5;
        String str6;
        AtomicInteger atomicInteger;
        C4008m c4008m;
        C4003j c4003j2 = c4003j;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31159x5)).booleanValue()) {
            try {
                this.f17424a.mo7148u("QueryInfo generation has been disabled.");
                return;
            } catch (RemoteException e) {
                cm0.m12440c("QueryInfo generation has been disabled.".concat(e.toString()));
                return;
            }
        }
        try {
            if (c4003j2 == null) {
                this.f17424a.mo7149f2(null, null, null);
                BinderC3998g0.m17591I7(this.f17425b, "sgs", "rid", "-1");
                return;
            }
            try {
                String optString = new JSONObject(c4003j2.f17481b).optString("request_id", "");
                if (TextUtils.isEmpty(optString)) {
                    cm0.m12437f("The request ID is empty in request JSON.");
                    this.f17424a.mo7148u("Internal error: request ID is empty in request JSON.");
                    BinderC3998g0.m17591I7(this.f17425b, "sgf", "sgf_reason", "rid_missing");
                    return;
                }
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31039i5)).booleanValue()) {
                    c4008m = this.f17425b.f17460v;
                    c4008m.m17560b(optString, c4003j2.f17481b);
                }
                Bundle bundle = c4003j2.f17482c;
                z = this.f17425b.f17443C;
                if (z && bundle != null) {
                    str5 = this.f17425b.f17445E;
                    if (bundle.getInt(str5, -1) == -1) {
                        str6 = this.f17425b.f17445E;
                        atomicInteger = this.f17425b.f17446F;
                        bundle.putInt(str6, atomicInteger.get());
                    }
                }
                z2 = this.f17425b.f17442B;
                if (z2 && bundle != null) {
                    str = this.f17425b.f17444D;
                    if (TextUtils.isEmpty(bundle.getString(str))) {
                        str2 = this.f17425b.f17448H;
                        if (TextUtils.isEmpty(str2)) {
                            BinderC3998g0 binderC3998g0 = this.f17425b;
                            C0497k2 m939d = C7601t.m939d();
                            context = this.f17425b.f17451b;
                            im0Var = this.f17425b.f17447G;
                            binderC3998g0.f17448H = m939d.m26339P(context, im0Var.f25171a);
                        }
                        str3 = this.f17425b.f17444D;
                        str4 = this.f17425b.f17448H;
                        bundle.putString(str3, str4);
                    }
                }
                this.f17424a.mo7149f2(c4003j2.f17480a, c4003j2.f17481b, bundle);
                BinderC3998g0.m17591I7(this.f17425b, "sgs", "rid", optString);
            } catch (JSONException e2) {
                cm0.m12437f("Failed to create JSON object from the request string.");
                sk0 sk0Var = this.f17424a;
                String obj = e2.toString();
                StringBuilder sb = new StringBuilder(obj.length() + 33);
                sb.append("Internal error for request JSON: ");
                sb.append(obj);
                sk0Var.mo7148u(sb.toString());
                BinderC3998g0.m17591I7(this.f17425b, "sgf", "sgf_reason", "request_invalid");
            }
        } catch (RemoteException e3) {
            cm0.m12439d("", e3);
        }
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        String str;
        String message = th.getMessage();
        C7601t.m935h().m9056k(th, "SignalGeneratorImpl.generateSignals");
        BinderC3998g0.m17591I7(this.f17425b, "sgf", "sgf_reason", message);
        try {
            sk0 sk0Var = this.f17424a;
            String valueOf = String.valueOf(message);
            if (valueOf.length() != 0) {
                str = "Internal error. ".concat(valueOf);
            } else {
                str = new String("Internal error. ");
            }
            sk0Var.mo7148u(str);
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }
}
