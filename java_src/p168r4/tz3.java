package p168r4;

import java.util.Arrays;
/* renamed from: r4.tz3 */
/* loaded from: classes2.dex */
public final class tz3 implements z04 {

    /* renamed from: a */
    public final int f32089a;

    /* renamed from: b */
    public final int[] f32090b;

    /* renamed from: c */
    public final long[] f32091c;

    /* renamed from: d */
    public final long[] f32092d;

    /* renamed from: e */
    public final long[] f32093e;

    /* renamed from: f */
    public final long f32094f;

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return true;
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f32094f;
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        int m9704d = C5979lc.m9704d(this.f32093e, j, true, true);
        a14 a14Var = new a14(this.f32093e[m9704d], this.f32091c[m9704d]);
        if (a14Var.f20342a < j && m9704d != this.f32089a - 1) {
            int i = m9704d + 1;
            return new x04(a14Var, new a14(this.f32093e[i], this.f32091c[i]));
        }
        return new x04(a14Var, a14Var);
    }

    public final String toString() {
        int i = this.f32089a;
        String arrays = Arrays.toString(this.f32090b);
        String arrays2 = Arrays.toString(this.f32091c);
        String arrays3 = Arrays.toString(this.f32093e);
        String arrays4 = Arrays.toString(this.f32092d);
        int length = String.valueOf(arrays).length();
        int length2 = String.valueOf(arrays2).length();
        StringBuilder sb = new StringBuilder(length + 71 + length2 + String.valueOf(arrays3).length() + String.valueOf(arrays4).length());
        sb.append("ChunkIndex(length=");
        sb.append(i);
        sb.append(", sizes=");
        sb.append(arrays);
        sb.append(", offsets=");
        sb.append(arrays2);
        sb.append(", timeUs=");
        sb.append(arrays3);
        sb.append(", durationsUs=");
        sb.append(arrays4);
        sb.append(")");
        return sb.toString();
    }

    public tz3(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f32090b = iArr;
        this.f32091c = jArr;
        this.f32092d = jArr2;
        this.f32093e = jArr3;
        int length = iArr.length;
        this.f32089a = length;
        if (length > 0) {
            int i = length - 1;
            this.f32094f = jArr2[i] + jArr3[i];
            return;
        }
        this.f32094f = 0L;
    }
}
