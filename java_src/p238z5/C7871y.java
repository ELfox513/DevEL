package p238z5;

import p238z5.AbstractC7810c0;
/* renamed from: z5.y */
/* loaded from: classes2.dex */
public final class C7871y extends AbstractC7810c0.AbstractC7812b {

    /* renamed from: a */
    public final int f38258a;

    /* renamed from: b */
    public final String f38259b;

    /* renamed from: c */
    public final int f38260c;

    /* renamed from: d */
    public final long f38261d;

    /* renamed from: e */
    public final long f38262e;

    /* renamed from: f */
    public final boolean f38263f;

    /* renamed from: g */
    public final int f38264g;

    /* renamed from: h */
    public final String f38265h;

    /* renamed from: i */
    public final String f38266i;

    @Override // p238z5.AbstractC7810c0.AbstractC7812b
    /* renamed from: a */
    public int mo107a() {
        return this.f38258a;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7812b
    /* renamed from: b */
    public int mo106b() {
        return this.f38260c;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7812b
    /* renamed from: d */
    public long mo105d() {
        return this.f38262e;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7812b
    /* renamed from: e */
    public boolean mo104e() {
        return this.f38263f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7810c0.AbstractC7812b)) {
            return false;
        }
        AbstractC7810c0.AbstractC7812b abstractC7812b = (AbstractC7810c0.AbstractC7812b) obj;
        return this.f38258a == abstractC7812b.mo107a() && this.f38259b.equals(abstractC7812b.mo102g()) && this.f38260c == abstractC7812b.mo106b() && this.f38261d == abstractC7812b.mo99j() && this.f38262e == abstractC7812b.mo105d() && this.f38263f == abstractC7812b.mo104e() && this.f38264g == abstractC7812b.mo100i() && this.f38265h.equals(abstractC7812b.mo103f()) && this.f38266i.equals(abstractC7812b.mo101h());
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7812b
    /* renamed from: f */
    public String mo103f() {
        return this.f38265h;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7812b
    /* renamed from: g */
    public String mo102g() {
        return this.f38259b;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7812b
    /* renamed from: h */
    public String mo101h() {
        return this.f38266i;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7812b
    /* renamed from: i */
    public int mo100i() {
        return this.f38264g;
    }

    @Override // p238z5.AbstractC7810c0.AbstractC7812b
    /* renamed from: j */
    public long mo99j() {
        return this.f38261d;
    }

    public String toString() {
        return "DeviceData{arch=" + this.f38258a + ", model=" + this.f38259b + ", availableProcessors=" + this.f38260c + ", totalRam=" + this.f38261d + ", diskSpace=" + this.f38262e + ", isEmulator=" + this.f38263f + ", state=" + this.f38264g + ", manufacturer=" + this.f38265h + ", modelClass=" + this.f38266i + "}";
    }

    public int hashCode() {
        int i;
        long j = this.f38261d;
        long j2 = this.f38262e;
        int hashCode = (((((((((this.f38258a ^ 1000003) * 1000003) ^ this.f38259b.hashCode()) * 1000003) ^ this.f38260c) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        if (this.f38263f) {
            i = 1231;
        } else {
            i = 1237;
        }
        return ((((((hashCode ^ i) * 1000003) ^ this.f38264g) * 1000003) ^ this.f38265h.hashCode()) * 1000003) ^ this.f38266i.hashCode();
    }

    public C7871y(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
        this.f38258a = i;
        if (str != null) {
            this.f38259b = str;
            this.f38260c = i2;
            this.f38261d = j;
            this.f38262e = j2;
            this.f38263f = z;
            this.f38264g = i3;
            if (str2 != null) {
                this.f38265h = str2;
                if (str3 != null) {
                    this.f38266i = str3;
                    return;
                }
                throw new NullPointerException("Null modelClass");
            }
            throw new NullPointerException("Null manufacturer");
        }
        throw new NullPointerException("Null model");
    }
}
