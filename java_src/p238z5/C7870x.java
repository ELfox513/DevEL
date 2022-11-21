package p238z5;

import p238z5.AbstractC7810c0;
/* renamed from: z5.x */
/* loaded from: classes2.dex */
public final class C7870x extends AbstractC7810c0.AbstractC7811a {

    /* renamed from: a */
    public final String f38252a;

    /* renamed from: b */
    public final String f38253b;

    /* renamed from: c */
    public final String f38254c;

    /* renamed from: d */
    public final String f38255d;

    /* renamed from: e */
    public final int f38256e;

    /* renamed from: f */
    public final String f38257f;

    @Override // p238z5.AbstractC7810c0.AbstractC7811a
    /* renamed from: a */
    public String mo113a() {
        return this.f38252a;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7811a
    /* renamed from: c */
    public int mo112c() {
        return this.f38256e;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7811a
    /* renamed from: d */
    public String mo111d() {
        return this.f38255d;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7811a
    /* renamed from: e */
    public String mo110e() {
        return this.f38257f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7810c0.AbstractC7811a)) {
            return false;
        }
        AbstractC7810c0.AbstractC7811a abstractC7811a = (AbstractC7810c0.AbstractC7811a) obj;
        if (this.f38252a.equals(abstractC7811a.mo113a()) && this.f38253b.equals(abstractC7811a.mo109f()) && this.f38254c.equals(abstractC7811a.mo108g()) && this.f38255d.equals(abstractC7811a.mo111d()) && this.f38256e == abstractC7811a.mo112c()) {
            String str = this.f38257f;
            if (str == null) {
                if (abstractC7811a.mo110e() == null) {
                    return true;
                }
            } else if (str.equals(abstractC7811a.mo110e())) {
                return true;
            }
        }
        return false;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7811a
    /* renamed from: f */
    public String mo109f() {
        return this.f38253b;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7811a
    /* renamed from: g */
    public String mo108g() {
        return this.f38254c;
    }

    public String toString() {
        return "AppData{appIdentifier=" + this.f38252a + ", versionCode=" + this.f38253b + ", versionName=" + this.f38254c + ", installUuid=" + this.f38255d + ", deliveryMechanism=" + this.f38256e + ", unityVersion=" + this.f38257f + "}";
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (((((((((this.f38252a.hashCode() ^ 1000003) * 1000003) ^ this.f38253b.hashCode()) * 1000003) ^ this.f38254c.hashCode()) * 1000003) ^ this.f38255d.hashCode()) * 1000003) ^ this.f38256e) * 1000003;
        String str = this.f38257f;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 ^ hashCode;
    }

    public C7870x(String str, String str2, String str3, String str4, int i, String str5) {
        if (str != null) {
            this.f38252a = str;
            if (str2 != null) {
                this.f38253b = str2;
                if (str3 != null) {
                    this.f38254c = str3;
                    if (str4 != null) {
                        this.f38255d = str4;
                        this.f38256e = i;
                        this.f38257f = str5;
                        return;
                    }
                    throw new NullPointerException("Null installUuid");
                }
                throw new NullPointerException("Null versionName");
            }
            throw new NullPointerException("Null versionCode");
        }
        throw new NullPointerException("Null appIdentifier");
    }
}
