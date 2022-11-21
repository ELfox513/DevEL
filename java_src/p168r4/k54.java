package p168r4;

import java.util.Arrays;
/* renamed from: r4.k54 */
/* loaded from: classes2.dex */
public final class k54 {

    /* renamed from: a */
    public int f26310a;

    /* renamed from: b */
    public final hv3[] f26311b;

    public k54(hv3[] hv3VarArr, byte... bArr) {
        this.f26311b = hv3VarArr;
        int length = hv3VarArr.length;
    }

    public final int hashCode() {
        int i = this.f26310a;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.f26311b) + 527;
            this.f26310a = hashCode;
            return hashCode;
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && k54.class == obj.getClass()) {
            return Arrays.equals(this.f26311b, ((k54) obj).f26311b);
        }
        return false;
    }
}
