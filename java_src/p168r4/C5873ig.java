package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.ig */
/* loaded from: classes2.dex */
public final class C5873ig {

    /* renamed from: a */
    public final C5692dl f25084a = new C5692dl(8);

    /* renamed from: b */
    public int f25085b;

    /* renamed from: b */
    public final long m10663b(C6094of c6094of) {
        int i = 0;
        c6094of.m8814e(this.f25084a.f22312a, 0, 1, false);
        int i2 = this.f25084a.f22312a[0] & DefaultClassResolver.NAME;
        if (i2 != 0) {
            int i3 = 128;
            int i4 = 0;
            while ((i2 & i3) == 0) {
                i3 >>= 1;
                i4++;
            }
            int i5 = i2 & (i3 ^ (-1));
            c6094of.m8814e(this.f25084a.f22312a, 1, i4, false);
            while (i < i4) {
                i++;
                i5 = (this.f25084a.f22312a[i] & DefaultClassResolver.NAME) + (i5 << 8);
            }
            this.f25085b += i4 + 1;
            return i5;
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: a */
    public final boolean m10664a(C6094of c6094of) {
        long m8810i = c6094of.m8810i();
        long j = 1024;
        if (m8810i != -1 && m8810i <= 1024) {
            j = m8810i;
        }
        int i = (int) j;
        c6094of.m8814e(this.f25084a.f22312a, 0, 4, false);
        long m12107p = this.f25084a.m12107p();
        this.f25085b = 4;
        while (m12107p != 440786851) {
            int i2 = this.f25085b + 1;
            this.f25085b = i2;
            if (i2 == i) {
                return false;
            }
            c6094of.m8814e(this.f25084a.f22312a, 0, 1, false);
            m12107p = ((m12107p << 8) & (-256)) | (this.f25084a.f22312a[0] & DefaultClassResolver.NAME);
        }
        long m10663b = m10663b(c6094of);
        long j2 = this.f25085b;
        if (m10663b != Long.MIN_VALUE && (m8810i == -1 || j2 + m10663b < m8810i)) {
            while (true) {
                long j3 = this.f25085b;
                long j4 = j2 + m10663b;
                if (j3 < j4) {
                    if (m10663b(c6094of) == Long.MIN_VALUE) {
                        return false;
                    }
                    long m10663b2 = m10663b(c6094of);
                    if (m10663b2 < 0) {
                        return false;
                    }
                    if (m10663b2 != 0) {
                        c6094of.m8813f((int) m10663b2, false);
                        this.f25085b = (int) (this.f25085b + m10663b2);
                    }
                } else if (j3 == j4) {
                    return true;
                }
            }
        }
        return false;
    }
}
