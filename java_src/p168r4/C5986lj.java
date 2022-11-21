package p168r4;

import java.util.Arrays;
/* renamed from: r4.lj */
/* loaded from: classes2.dex */
public final class C5986lj {

    /* renamed from: a */
    public final int f27228a = 1;

    /* renamed from: b */
    public final C5870id[] f27229b;

    /* renamed from: c */
    public int f27230c;

    public C5986lj(C5870id... c5870idArr) {
        this.f27229b = c5870idArr;
    }

    /* renamed from: a */
    public final C5870id m9657a(int i) {
        return this.f27229b[i];
    }

    /* renamed from: b */
    public final int m9656b(C5870id c5870id) {
        for (int i = 0; i <= 0; i++) {
            if (c5870id == this.f27229b[i]) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C5986lj.class == obj.getClass() && Arrays.equals(this.f27229b, ((C5986lj) obj).f27229b);
    }

    public final int hashCode() {
        int i = this.f27230c;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.f27229b) + 527;
            this.f27230c = hashCode;
            return hashCode;
        }
        return i;
    }
}
