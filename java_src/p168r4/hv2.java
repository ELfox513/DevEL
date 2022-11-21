package p168r4;
/* renamed from: r4.hv2 */
/* loaded from: classes2.dex */
public final class hv2 {

    /* renamed from: a */
    public final String f24878a;

    /* renamed from: b */
    public final String f24879b;

    public hv2(String str, String str2) {
        this.f24878a = str;
        this.f24879b = str2;
    }

    /* renamed from: b */
    public final String m10785b() {
        return this.f24878a;
    }

    /* renamed from: c */
    public final String m10784c() {
        return this.f24879b;
    }

    /* renamed from: a */
    public static hv2 m10786a(String str, String str2) {
        iw2.m10483b(str, "Name is null or empty");
        iw2.m10483b(str2, "Version is null or empty");
        return new hv2(str, str2);
    }
}
