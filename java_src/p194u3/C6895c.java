package p194u3;

import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import p145p.C5270a;
import p185t3.C6734b;
import p203v3.C6995b;
import p220x3.C7297q;
/* renamed from: u3.c */
/* loaded from: classes.dex */
public class C6895c extends Exception {

    /* renamed from: a */
    public final C5270a<C6995b<?>, C6734b> f35752a;

    public C6895c(@RecentlyNonNull C5270a<C6995b<?>, C6734b> c5270a) {
        this.f35752a = c5270a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (C6995b<?> c6995b : this.f35752a.keySet()) {
            C6734b c6734b = (C6734b) C7297q.m1883j(this.f35752a.get(c6995b));
            z &= !c6734b.m3524b1();
            String m2770b = c6995b.m2770b();
            String valueOf = String.valueOf(c6734b);
            StringBuilder sb = new StringBuilder(String.valueOf(m2770b).length() + 2 + valueOf.length());
            sb.append(m2770b);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}
