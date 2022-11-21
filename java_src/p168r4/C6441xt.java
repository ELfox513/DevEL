package p168r4;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
import p184t2.C6723t;
/* renamed from: r4.xt */
/* loaded from: classes2.dex */
public final class C6441xt {

    /* renamed from: a */
    public static final C6441xt f33766a = new C6441xt();

    /* renamed from: a */
    public final C6293tt m5009a(Context context, C6260sx c6260sx) {
        long j;
        Context context2;
        List list;
        String str;
        Date m6975a = c6260sx.m6975a();
        if (m6975a != null) {
            j = m6975a.getTime();
        } else {
            j = -1;
        }
        long j2 = j;
        String m6974b = c6260sx.m6974b();
        int m6972d = c6260sx.m6972d();
        Set<String> m6971e = c6260sx.m6971e();
        if (!m6971e.isEmpty()) {
            list = Collections.unmodifiableList(new ArrayList(m6971e));
            context2 = context;
        } else {
            context2 = context;
            list = null;
        }
        boolean m6965k = c6260sx.m6965k(context2);
        Location m6970f = c6260sx.m6970f();
        Bundle m6969g = c6260sx.m6969g(AdMobAdapter.class);
        c6260sx.m6958r();
        String m6968h = c6260sx.m6968h();
        c6260sx.m6966j();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            C6479yu.m4568a();
            str = vl0.m6118j(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean m6959q = c6260sx.m6959q();
        C6723t m4048i = C6519zx.m4053d().m4048i();
        return new C6293tt(8, j2, m6969g, m6972d, list, m6965k, Math.max(c6260sx.m6962n(), m4048i.m3556b()), false, m6968h, null, m6970f, m6974b, c6260sx.m6963m(), c6260sx.m6961o(), Collections.unmodifiableList(new ArrayList(c6260sx.m6960p())), c6260sx.m6967i(), str, m6959q, null, Math.max(-1, m4048i.m3555c()), (String) Collections.max(Arrays.asList(null, m4048i.m3557a()), C6404wt.f33317a), c6260sx.m6973c(), c6260sx.m6956t(), c6260sx.m6957s());
    }
}
