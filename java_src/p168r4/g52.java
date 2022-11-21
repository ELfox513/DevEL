package p168r4;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.utility.JavaConstant;
import p026c4.InterfaceC1045f;
/* renamed from: r4.g52 */
/* loaded from: classes2.dex */
public final class g52 {

    /* renamed from: a */
    public final InterfaceC1045f f23886a;

    /* renamed from: b */
    public final h52 f23887b;

    /* renamed from: c */
    public final List<String> f23888c = Collections.synchronizedList(new ArrayList());

    /* renamed from: d */
    public final boolean f23889d = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30999d5)).booleanValue();

    /* renamed from: e */
    public final v12 f23890e;

    /* renamed from: g */
    public final String m11285g() {
        return TextUtils.join(JavaConstant.Dynamic.DEFAULT_NAME, this.f23888c);
    }

    /* renamed from: f */
    public static /* synthetic */ void m11286f(g52 g52Var, String str, int i, long j, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String sb2 = sb.toString();
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder sb3 = new StringBuilder(sb2.length() + 1 + String.valueOf(str2).length());
            sb3.append(sb2);
            sb3.append(".");
            sb3.append(str2);
            sb2 = sb3.toString();
        }
        g52Var.f23888c.add(sb2);
    }

    /* renamed from: e */
    public final <T> h83<T> m11287e(so2 so2Var, no2 no2Var, h83<T> h83Var) {
        long mo24762b = this.f23886a.mo24762b();
        String str = no2Var.f28436w;
        if (str != null) {
            y73.m4799p(h83Var, new f52(this, mo24762b, str, no2Var, so2Var), qm0.f30195f);
        }
        return h83Var;
    }

    public g52(InterfaceC1045f interfaceC1045f, h52 h52Var, v12 v12Var) {
        this.f23886a = interfaceC1045f;
        this.f23887b = h52Var;
        this.f23890e = v12Var;
    }
}
