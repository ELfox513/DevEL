package p168r4;

import android.net.Uri;
/* renamed from: r4.yp0 */
/* loaded from: classes2.dex */
public final class yp0 implements InterfaceC5766fk {

    /* renamed from: a */
    public final InterfaceC5766fk f34164a;

    /* renamed from: b */
    public final long f34165b;

    /* renamed from: c */
    public final InterfaceC5766fk f34166c;

    /* renamed from: d */
    public long f34167d;

    /* renamed from: e */
    public Uri f34168e;

    public yp0(InterfaceC5766fk interfaceC5766fk, int i, InterfaceC5766fk interfaceC5766fk2) {
        this.f34164a = interfaceC5766fk;
        this.f34165b = i;
        this.f34166c = interfaceC5766fk2;
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: b */
    public final Uri mo4615b() {
        return this.f34168e;
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: a */
    public final int mo4616a(byte[] bArr, int i, int i2) {
        int i3;
        long j = this.f34167d;
        long j2 = this.f34165b;
        if (j < j2) {
            int mo4616a = this.f34164a.mo4616a(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.f34167d + mo4616a;
            this.f34167d = j3;
            i3 = mo4616a;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j >= this.f34165b) {
            int mo4616a2 = this.f34166c.mo4616a(bArr, i + i3, i2 - i3);
            this.f34167d += mo4616a2;
            return i3 + mo4616a2;
        }
        return i3;
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: d */
    public final long mo4614d(C5877ik c5877ik) {
        long j;
        C5877ik c5877ik2;
        long j2;
        long j3;
        this.f34168e = c5877ik.f25138a;
        long j4 = c5877ik.f25140c;
        long j5 = this.f34165b;
        C5877ik c5877ik3 = null;
        if (j4 >= j5) {
            c5877ik2 = null;
        } else {
            long j6 = c5877ik.f25141d;
            if (j6 != -1) {
                j = Math.min(j6, j5 - j4);
            } else {
                j = j5 - j4;
            }
            c5877ik2 = new C5877ik(c5877ik.f25138a, null, j4, j4, j, null, 0);
        }
        long j7 = c5877ik.f25141d;
        if (j7 == -1 || c5877ik.f25140c + j7 > this.f34165b) {
            long max = Math.max(this.f34165b, c5877ik.f25140c);
            long j8 = c5877ik.f25141d;
            if (j8 != -1) {
                j2 = Math.min(j8, (c5877ik.f25140c + j8) - this.f34165b);
            } else {
                j2 = -1;
            }
            c5877ik3 = new C5877ik(c5877ik.f25138a, null, max, max, j2, null, 0);
        }
        long j9 = 0;
        if (c5877ik2 != null) {
            j3 = this.f34164a.mo4614d(c5877ik2);
        } else {
            j3 = 0;
        }
        if (c5877ik3 != null) {
            j9 = this.f34166c.mo4614d(c5877ik3);
        }
        this.f34167d = c5877ik.f25140c;
        if (j9 == -1) {
            return -1L;
        }
        return j3 + j9;
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: e */
    public final void mo4613e() {
        this.f34164a.mo4613e();
        this.f34166c.mo4613e();
    }
}
