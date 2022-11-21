package p237z4;

import java.util.Arrays;
import p237z4.AbstractC7673m0;
/* renamed from: z4.y2 */
/* loaded from: classes2.dex */
public final class C7735y2 {

    /* renamed from: f */
    public static final C7735y2 f37925f = new C7735y2(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f37926a;

    /* renamed from: b */
    public int[] f37927b;

    /* renamed from: c */
    public Object[] f37928c;

    /* renamed from: d */
    public int f37929d;

    /* renamed from: e */
    public boolean f37930e;

    public C7735y2() {
        this(0, new int[8], new Object[8], true);
    }

    /* renamed from: h */
    public static C7735y2 m450h() {
        return f37925f;
    }

    /* renamed from: b */
    public final void m456b(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f37926a; i2++) {
            C7716u1.m585b(sb, i, String.valueOf(this.f37927b[i2] >>> 3), this.f37928c[i2]);
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C7735y2)) {
            return false;
        }
        C7735y2 c7735y2 = (C7735y2) obj;
        int i = this.f37926a;
        if (i == c7735y2.f37926a) {
            int[] iArr = this.f37927b;
            int[] iArr2 = c7735y2.f37927b;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        z = false;
                        break;
                    }
                    i2++;
                } else {
                    z = true;
                    break;
                }
            }
            if (z) {
                Object[] objArr = this.f37928c;
                Object[] objArr2 = c7735y2.f37928c;
                int i3 = this.f37926a;
                int i4 = 0;
                while (true) {
                    if (i4 < i3) {
                        if (!objArr[i4].equals(objArr2[i4])) {
                            z2 = false;
                            break;
                        }
                        i4++;
                    } else {
                        z2 = true;
                        break;
                    }
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: f */
    public final void m452f() {
        this.f37930e = false;
    }

    public C7735y2(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f37929d = -1;
        this.f37926a = i;
        this.f37927b = iArr;
        this.f37928c = objArr;
        this.f37930e = z;
    }

    /* renamed from: a */
    public static C7735y2 m457a(C7735y2 c7735y2, C7735y2 c7735y22) {
        int i = c7735y2.f37926a + c7735y22.f37926a;
        int[] copyOf = Arrays.copyOf(c7735y2.f37927b, i);
        System.arraycopy(c7735y22.f37927b, 0, copyOf, c7735y2.f37926a, c7735y22.f37926a);
        Object[] copyOf2 = Arrays.copyOf(c7735y2.f37928c, i);
        System.arraycopy(c7735y22.f37928c, 0, copyOf2, c7735y2.f37926a, c7735y22.f37926a);
        return new C7735y2(i, copyOf, copyOf2, true);
    }

    /* renamed from: d */
    public static void m454d(int i, Object obj, InterfaceC7705r3 interfaceC7705r3) {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i3 == 5) {
                            interfaceC7705r3.mo448A(i2, ((Integer) obj).intValue());
                            return;
                        }
                        throw new RuntimeException(C7702r0.m612c());
                    } else if (interfaceC7705r3.mo415r() == AbstractC7673m0.C7677d.f37823l) {
                        interfaceC7705r3.mo413t(i2);
                        ((C7735y2) obj).m453e(interfaceC7705r3);
                        interfaceC7705r3.mo410w(i2);
                        return;
                    } else {
                        interfaceC7705r3.mo410w(i2);
                        ((C7735y2) obj).m453e(interfaceC7705r3);
                        interfaceC7705r3.mo413t(i2);
                        return;
                    }
                }
                interfaceC7705r3.mo407z(i2, (AbstractC7652i) obj);
                return;
            }
            interfaceC7705r3.mo423j(i2, ((Long) obj).longValue());
            return;
        }
        interfaceC7705r3.mo417p(i2, ((Long) obj).longValue());
    }

    /* renamed from: e */
    public final void m453e(InterfaceC7705r3 interfaceC7705r3) {
        if (this.f37926a == 0) {
            return;
        }
        if (interfaceC7705r3.mo415r() == AbstractC7673m0.C7677d.f37823l) {
            for (int i = 0; i < this.f37926a; i++) {
                m454d(this.f37927b[i], this.f37928c[i], interfaceC7705r3);
            }
            return;
        }
        for (int i2 = this.f37926a - 1; i2 >= 0; i2--) {
            m454d(this.f37927b[i2], this.f37928c[i2], interfaceC7705r3);
        }
    }

    /* renamed from: g */
    public final int m451g() {
        int m516f0;
        int i = this.f37929d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f37926a; i3++) {
            int i4 = this.f37927b[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 != 1) {
                    if (i6 != 2) {
                        if (i6 != 3) {
                            if (i6 == 5) {
                                m516f0 = AbstractC7726x.m505o0(i5, ((Integer) this.f37928c[i3]).intValue());
                            } else {
                                throw new IllegalStateException(C7702r0.m612c());
                            }
                        } else {
                            m516f0 = (AbstractC7726x.m503q(i5) << 1) + ((C7735y2) this.f37928c[i3]).m451g();
                        }
                    } else {
                        m516f0 = AbstractC7726x.m533O(i5, (AbstractC7652i) this.f37928c[i3]);
                    }
                } else {
                    m516f0 = AbstractC7726x.m510k0(i5, ((Long) this.f37928c[i3]).longValue());
                }
            } else {
                m516f0 = AbstractC7726x.m516f0(i5, ((Long) this.f37928c[i3]).longValue());
            }
            i2 += m516f0;
        }
        this.f37929d = i2;
        return i2;
    }

    public final int hashCode() {
        int i = this.f37926a;
        int i2 = (i + 527) * 31;
        int[] iArr = this.f37927b;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.f37928c;
        int i7 = this.f37926a;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* renamed from: i */
    public final int m449i() {
        int i = this.f37929d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f37926a; i3++) {
            i2 += AbstractC7726x.m523b0(this.f37927b[i3] >>> 3, (AbstractC7652i) this.f37928c[i3]);
        }
        this.f37929d = i2;
        return i2;
    }

    /* renamed from: c */
    public final void m455c(InterfaceC7705r3 interfaceC7705r3) {
        if (interfaceC7705r3.mo415r() == AbstractC7673m0.C7677d.f37824m) {
            for (int i = this.f37926a - 1; i >= 0; i--) {
                interfaceC7705r3.mo422k(this.f37927b[i] >>> 3, this.f37928c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f37926a; i2++) {
            interfaceC7705r3.mo422k(this.f37927b[i2] >>> 3, this.f37928c[i2]);
        }
    }
}
