package p167r3;

import androidx.annotation.RecentlyNonNull;
/* renamed from: r3.b */
/* loaded from: classes.dex */
public class C5535b {

    /* renamed from: b */
    public static int f20298b = 31;

    /* renamed from: a */
    public int f20299a = 1;

    /* renamed from: b */
    public int m13103b() {
        return this.f20299a;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public final C5535b m13102c(boolean z) {
        this.f20299a = (f20298b * this.f20299a) + (z ? 1 : 0);
        return this;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public C5535b m13104a(Object obj) {
        int hashCode;
        int i = f20298b * this.f20299a;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        this.f20299a = i + hashCode;
        return this;
    }
}
