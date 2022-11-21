package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Arrays;
/* renamed from: r4.z93 */
/* loaded from: classes2.dex */
public final class z93 implements Comparable<z93> {

    /* renamed from: a */
    public final byte[] f34404a;

    public final int hashCode() {
        return Arrays.hashCode(this.f34404a);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(z93 z93Var) {
        z93 z93Var2 = z93Var;
        int length = this.f34404a.length;
        int length2 = z93Var2.f34404a.length;
        if (length != length2) {
            return length - length2;
        }
        int i = 0;
        while (true) {
            byte[] bArr = this.f34404a;
            if (i >= bArr.length) {
                return 0;
            }
            byte b = bArr[i];
            byte b2 = z93Var2.f34404a[i];
            if (b != b2) {
                return b - b2;
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof z93)) {
            return false;
        }
        return Arrays.equals(this.f34404a, ((z93) obj).f34404a);
    }

    public final String toString() {
        byte[] bArr = this.f34404a;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b : bArr) {
            int i = b & DefaultClassResolver.NAME;
            sb.append("0123456789abcdef".charAt(i >> 4));
            sb.append("0123456789abcdef".charAt(i & 15));
        }
        return sb.toString();
    }
}
