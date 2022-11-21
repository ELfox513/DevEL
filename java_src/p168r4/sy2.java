package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.sy2 */
/* loaded from: classes2.dex */
public final class sy2 extends AbstractC7408a {
    public static final Parcelable.Creator<sy2> CREATOR = new ty2();

    /* renamed from: a */
    public final int f31586a;

    /* renamed from: b */
    public pb4 f31587b = null;

    /* renamed from: d */
    public byte[] f31588d;

    /* renamed from: X0 */
    public final pb4 m6950X0() {
        if (this.f31587b == null) {
            try {
                this.f31587b = pb4.m8366y0(this.f31588d, bm3.m12746a());
                this.f31588d = null;
            } catch (NullPointerException | bn3 e) {
                throw new IllegalStateException(e);
            }
        }
        m6949a();
        return this.f31587b;
    }

    /* renamed from: a */
    public final void m6949a() {
        pb4 pb4Var = this.f31587b;
        if (pb4Var == null && this.f31588d != null) {
            return;
        }
        if (pb4Var != null && this.f31588d == null) {
            return;
        }
        if (pb4Var != null && this.f31588d != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        }
        if (pb4Var == null && this.f31588d == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        }
        throw new IllegalStateException("Impossible");
    }

    public sy2(int i, byte[] bArr) {
        this.f31586a = i;
        this.f31588d = bArr;
        m6949a();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f31586a);
        byte[] bArr = this.f31588d;
        if (bArr == null) {
            bArr = this.f31587b.mo6490t();
        }
        C7411c.m1484g(parcel, 2, bArr, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
