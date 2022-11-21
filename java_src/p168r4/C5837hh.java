package p168r4;
/* renamed from: r4.hh */
/* loaded from: classes2.dex */
public final class C5837hh {

    /* renamed from: a */
    public final int f24628a;

    /* renamed from: b */
    public final long[] f24629b;

    /* renamed from: c */
    public final int[] f24630c;

    /* renamed from: d */
    public final int f24631d;

    /* renamed from: e */
    public final long[] f24632e;

    /* renamed from: f */
    public final int[] f24633f;

    /* renamed from: a */
    public final int m10915a(long j) {
        for (int m9646h = C5988ll.m9646h(this.f24632e, j, true, false); m9646h >= 0; m9646h--) {
            if ((this.f24633f[m9646h] & 1) != 0) {
                return m9646h;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m10914b(long j) {
        for (int m9645i = C5988ll.m9645i(this.f24632e, j, true, false); m9645i < this.f24632e.length; m9645i++) {
            if ((this.f24633f[m9645i] & 1) != 0) {
                return m9645i;
            }
        }
        return -1;
    }

    public C5837hh(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        boolean z;
        boolean z2;
        int length = jArr2.length;
        if (iArr.length == length) {
            z = true;
        } else {
            z = false;
        }
        C6358vk.m6140a(z);
        int length2 = jArr.length;
        if (length2 == length) {
            z2 = true;
        } else {
            z2 = false;
        }
        C6358vk.m6140a(z2);
        C6358vk.m6140a(iArr2.length == length);
        this.f24629b = jArr;
        this.f24630c = iArr;
        this.f24631d = i;
        this.f24632e = jArr2;
        this.f24633f = iArr2;
        this.f24628a = length2;
    }
}
