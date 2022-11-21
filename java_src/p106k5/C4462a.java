package p106k5;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.List;
import p229y4.C7500z0;
/* renamed from: k5.a */
/* loaded from: classes2.dex */
public class C4462a {

    /* renamed from: a */
    public final boolean f18480a;

    /* renamed from: b */
    public final int f18481b;

    /* renamed from: k5.a$a */
    /* loaded from: classes2.dex */
    public static class C4463a {

        /* renamed from: b */
        public final Context f18483b;

        /* renamed from: d */
        public boolean f18485d;

        /* renamed from: a */
        public final List<String> f18482a = new ArrayList();

        /* renamed from: c */
        public int f18484c = 0;

        @RecentlyNonNull
        /* renamed from: a */
        public C4462a m16344a() {
            Context context = this.f18483b;
            List<String> list = this.f18482a;
            boolean z = true;
            if (!C7500z0.m1373b() && !list.contains(C7500z0.m1374a(context)) && !this.f18485d) {
                z = false;
            }
            return new C4462a(z, this, null);
        }

        public C4463a(@RecentlyNonNull Context context) {
            this.f18483b = context.getApplicationContext();
        }
    }

    public /* synthetic */ C4462a(boolean z, C4463a c4463a, C4475g c4475g) {
        this.f18480a = z;
        this.f18481b = c4463a.f18484c;
    }

    /* renamed from: a */
    public int m16346a() {
        return this.f18481b;
    }

    /* renamed from: b */
    public boolean m16345b() {
        return this.f18480a;
    }
}
