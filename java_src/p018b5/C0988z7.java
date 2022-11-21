package p018b5;
/* renamed from: b5.z7 */
/* loaded from: classes2.dex */
public final class C0988z7 extends C0581b8 {

    /* renamed from: b */
    public final byte[] f2459b;

    /* renamed from: c */
    public int f2460c;

    /* renamed from: d */
    public int f2461d;

    /* renamed from: e */
    public int f2462e;

    public /* synthetic */ C0988z7(byte[] bArr, int i, int i2, boolean z, C0954x7 c0954x7) {
        super(null);
        this.f2462e = Integer.MAX_VALUE;
        this.f2459b = bArr;
        this.f2460c = 0;
    }

    /* renamed from: c */
    public final int m24868c(int i) {
        int i2 = this.f2462e;
        this.f2462e = 0;
        int i3 = this.f2460c + this.f2461d;
        this.f2460c = i3;
        if (i3 > 0) {
            this.f2461d = i3;
            this.f2460c = 0;
        } else {
            this.f2461d = 0;
        }
        return i2;
    }
}
