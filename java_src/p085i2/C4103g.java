package p085i2;

import java.util.Arrays;
import p058f2.C3503b;
/* renamed from: i2.g */
/* loaded from: classes.dex */
public final class C4103g {

    /* renamed from: a */
    public final C3503b f17712a;

    /* renamed from: b */
    public final byte[] f17713b;

    /* renamed from: a */
    public byte[] m17400a() {
        return this.f17713b;
    }

    /* renamed from: b */
    public C3503b m17399b() {
        return this.f17712a;
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f17712a + ", bytes=[...]}";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4103g)) {
            return false;
        }
        C4103g c4103g = (C4103g) obj;
        if (!this.f17712a.equals(c4103g.f17712a)) {
            return false;
        }
        return Arrays.equals(this.f17713b, c4103g.f17713b);
    }

    public int hashCode() {
        return ((this.f17712a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f17713b);
    }

    public C4103g(C3503b c3503b, byte[] bArr) {
        if (c3503b != null) {
            if (bArr != null) {
                this.f17712a = c3503b;
                this.f17713b = bArr;
                return;
            }
            throw new NullPointerException("bytes is null");
        }
        throw new NullPointerException("encoding is null");
    }
}
