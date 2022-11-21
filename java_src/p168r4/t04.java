package p168r4;
/* renamed from: r4.t04 */
/* loaded from: classes2.dex */
public final class t04 {

    /* renamed from: a */
    public int f31606a;

    /* renamed from: b */
    public String f31607b;

    /* renamed from: c */
    public int f31608c;

    /* renamed from: d */
    public int f31609d;

    /* renamed from: e */
    public int f31610e;

    /* renamed from: f */
    public int f31611f;

    /* renamed from: g */
    public int f31612g;

    /* renamed from: a */
    public final boolean m6936a(int i) {
        boolean m6656l;
        int i2;
        int i3;
        int i4;
        int i5;
        String[] strArr;
        int[] iArr;
        int m6655m;
        int[] iArr2;
        int[] iArr3;
        int i6;
        int[] iArr4;
        int[] iArr5;
        int i7;
        int[] iArr6;
        m6656l = u04.m6656l(i);
        if (!m6656l || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        this.f31606a = i2;
        strArr = u04.f32110a;
        this.f31607b = strArr[3 - i3];
        iArr = u04.f32111b;
        int i8 = iArr[i5];
        this.f31609d = i8;
        int i9 = 2;
        if (i2 == 2) {
            this.f31609d = i8 / 2;
        } else if (i2 == 0) {
            this.f31609d = i8 / 4;
        }
        int i10 = (i >>> 9) & 1;
        m6655m = u04.m6655m(i2, i3);
        this.f31612g = m6655m;
        if (i3 == 3) {
            if (i2 == 3) {
                iArr6 = u04.f32112c;
                i7 = iArr6[i4 - 1];
            } else {
                iArr5 = u04.f32113d;
                i7 = iArr5[i4 - 1];
            }
            this.f31611f = i7;
            this.f31608c = (((i7 * 12) / this.f31609d) + i10) * 4;
        } else {
            int i11 = 144;
            if (i2 == 3) {
                if (i3 == 2) {
                    iArr4 = u04.f32114e;
                    i6 = iArr4[i4 - 1];
                } else {
                    iArr3 = u04.f32115f;
                    i6 = iArr3[i4 - 1];
                }
                this.f31611f = i6;
                this.f31608c = ((i6 * 144) / this.f31609d) + i10;
            } else {
                iArr2 = u04.f32116g;
                int i12 = iArr2[i4 - 1];
                this.f31611f = i12;
                if (i3 == 1) {
                    i11 = 72;
                }
                this.f31608c = ((i11 * i12) / this.f31609d) + i10;
            }
        }
        if (((i >> 6) & 3) == 3) {
            i9 = 1;
        }
        this.f31610e = i9;
        return true;
    }
}
