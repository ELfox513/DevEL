package p168r4;

import java.util.Arrays;
/* renamed from: r4.qj */
/* loaded from: classes2.dex */
public class C6172qj {

    /* renamed from: a */
    public final C5986lj f30155a;

    /* renamed from: b */
    public final int[] f30156b;

    /* renamed from: c */
    public final C5870id[] f30157c;

    /* renamed from: d */
    public int f30158d;

    /* renamed from: a */
    public final C5986lj m7814a() {
        return this.f30155a;
    }

    /* renamed from: b */
    public final int m7813b() {
        int length = this.f30156b.length;
        return 1;
    }

    /* renamed from: c */
    public final C5870id m7812c(int i) {
        return this.f30157c[i];
    }

    /* renamed from: d */
    public final int m7811d(int i) {
        return this.f30156b[0];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            C6172qj c6172qj = (C6172qj) obj;
            if (this.f30155a == c6172qj.f30155a && Arrays.equals(this.f30156b, c6172qj.f30156b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f30158d;
        if (i == 0) {
            int identityHashCode = (System.identityHashCode(this.f30155a) * 31) + Arrays.hashCode(this.f30156b);
            this.f30158d = identityHashCode;
            return identityHashCode;
        }
        return i;
    }

    public C6172qj(C5986lj c5986lj, int... iArr) {
        c5986lj.getClass();
        this.f30155a = c5986lj;
        this.f30157c = new C5870id[1];
        for (int i = 0; i <= 0; i++) {
            this.f30157c[i] = c5986lj.m9657a(iArr[i]);
        }
        Arrays.sort(this.f30157c, new C6098oj(null));
        this.f30156b = new int[1];
        for (int i2 = 0; i2 <= 0; i2++) {
            this.f30156b[i2] = c5986lj.m9656b(this.f30157c[i2]);
        }
    }
}
