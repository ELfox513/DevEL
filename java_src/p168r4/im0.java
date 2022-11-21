package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p185t3.C6756m;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.im0 */
/* loaded from: classes2.dex */
public final class im0 extends AbstractC7408a {
    public static final Parcelable.Creator<im0> CREATOR = new km0();

    /* renamed from: a */
    public String f25171a;

    /* renamed from: b */
    public int f25172b;

    /* renamed from: d */
    public int f25173d;

    /* renamed from: k */
    public boolean f25174k;

    /* renamed from: p */
    public boolean f25175p;

    public im0(int i, int i2, boolean z, boolean z2) {
        this(213806000, i2, true, false, false);
    }

    /* renamed from: X0 */
    public static im0 m10595X0() {
        return new im0((int) C6756m.f35427a, (int) C6756m.f35427a, true, false, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public im0(int r8, int r9, boolean r10, boolean r11, boolean r12) {
        /*
            r7 = this;
            if (r10 == 0) goto L5
            java.lang.String r11 = "0"
            goto L7
        L5:
            java.lang.String r11 = "1"
        L7:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            int r0 = r11.length()
            int r0 = r0 + 36
            r12.<init>(r0)
            java.lang.String r0 = "afma-sdk-a-v"
            r12.append(r0)
            r12.append(r8)
            java.lang.String r0 = "."
            r12.append(r0)
            r12.append(r9)
            r12.append(r0)
            r12.append(r11)
            java.lang.String r2 = r12.toString()
            r6 = 0
            r1 = r7
            r3 = r8
            r4 = r9
            r5 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.im0.<init>(int, int, boolean, boolean, boolean):void");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, this.f25171a, false);
        C7411c.m1479l(parcel, 3, this.f25172b);
        C7411c.m1479l(parcel, 4, this.f25173d);
        C7411c.m1488c(parcel, 5, this.f25174k);
        C7411c.m1488c(parcel, 6, this.f25175p);
        C7411c.m1489b(parcel, m1490a);
    }

    public im0(String str, int i, int i2, boolean z, boolean z2) {
        this.f25171a = str;
        this.f25172b = i;
        this.f25173d = i2;
        this.f25174k = z;
        this.f25175p = z2;
    }
}
