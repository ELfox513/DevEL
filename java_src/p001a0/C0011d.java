package p001a0;

import android.util.Base64;
import java.util.List;
import p022c0.C1024g;
/* renamed from: a0.d */
/* loaded from: classes.dex */
public final class C0011d {

    /* renamed from: a */
    public final String f10a;

    /* renamed from: b */
    public final String f11b;

    /* renamed from: c */
    public final String f12c;

    /* renamed from: d */
    public final List<List<byte[]>> f13d;

    /* renamed from: e */
    public final int f14e = 0;

    /* renamed from: f */
    public final String f15f;

    /* renamed from: b */
    public List<List<byte[]>> m27828b() {
        return this.f13d;
    }

    /* renamed from: c */
    public int m27827c() {
        return this.f14e;
    }

    /* renamed from: d */
    public String m27826d() {
        return this.f15f;
    }

    /* renamed from: e */
    public String m27825e() {
        return this.f10a;
    }

    /* renamed from: f */
    public String m27824f() {
        return this.f11b;
    }

    /* renamed from: g */
    public String m27823g() {
        return this.f12c;
    }

    /* renamed from: a */
    public final String m27829a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f10a + ", mProviderPackage: " + this.f11b + ", mQuery: " + this.f12c + ", mCertificates:");
        for (int i = 0; i < this.f13d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f13d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f14e);
        return sb.toString();
    }

    public C0011d(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f10a = (String) C1024g.m24809b(str);
        this.f11b = (String) C1024g.m24809b(str2);
        this.f12c = (String) C1024g.m24809b(str3);
        this.f13d = (List) C1024g.m24809b(list);
        this.f15f = m27829a(str, str2, str3);
    }
}
