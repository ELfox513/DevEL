package p238z5;

import p238z5.AbstractC7810c0;
/* renamed from: z5.z */
/* loaded from: classes2.dex */
public final class C7872z extends AbstractC7810c0.AbstractC7813c {

    /* renamed from: a */
    public final String f38267a;

    /* renamed from: b */
    public final String f38268b;

    /* renamed from: c */
    public final boolean f38269c;

    @Override // p238z5.AbstractC7810c0.AbstractC7813c
    /* renamed from: b */
    public boolean mo98b() {
        return this.f38269c;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7813c
    /* renamed from: c */
    public String mo97c() {
        return this.f38268b;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7813c
    /* renamed from: d */
    public String mo96d() {
        return this.f38267a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7810c0.AbstractC7813c)) {
            return false;
        }
        AbstractC7810c0.AbstractC7813c abstractC7813c = (AbstractC7810c0.AbstractC7813c) obj;
        return this.f38267a.equals(abstractC7813c.mo96d()) && this.f38268b.equals(abstractC7813c.mo97c()) && this.f38269c == abstractC7813c.mo98b();
    }

    public String toString() {
        return "OsData{osRelease=" + this.f38267a + ", osCodeName=" + this.f38268b + ", isRooted=" + this.f38269c + "}";
    }

    public int hashCode() {
        int i;
        int hashCode = (((this.f38267a.hashCode() ^ 1000003) * 1000003) ^ this.f38268b.hashCode()) * 1000003;
        if (this.f38269c) {
            i = 1231;
        } else {
            i = 1237;
        }
        return hashCode ^ i;
    }

    public C7872z(String str, String str2, boolean z) {
        if (str != null) {
            this.f38267a = str;
            if (str2 != null) {
                this.f38268b = str2;
                this.f38269c = z;
                return;
            }
            throw new NullPointerException("Null osCodeName");
        }
        throw new NullPointerException("Null osRelease");
    }
}
