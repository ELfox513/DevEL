package p086i3;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import p168r4.C5705dy;
import p168r4.C6260sx;
import p168r4.pf0;
import p184t2.C6708f;
import p184t2.EnumC6703b;
/* renamed from: i3.b */
/* loaded from: classes.dex */
public class C4124b {

    /* renamed from: a */
    public final C5705dy f17735a;

    public C4124b(C5705dy c5705dy) {
        this.f17735a = c5705dy;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public String m17328b() {
        return this.f17735a.m11894a();
    }

    /* renamed from: a */
    public static void m17329a(@RecentlyNonNull Context context, @RecentlyNonNull EnumC6703b enumC6703b, C6708f c6708f, @RecentlyNonNull AbstractC4125c abstractC4125c) {
        C6260sx m3595a;
        if (c6708f == null) {
            m3595a = null;
        } else {
            m3595a = c6708f.m3595a();
        }
        new pf0(context, enumC6703b, m3595a).m8331b(abstractC4125c);
    }
}
