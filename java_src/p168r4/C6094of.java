package p168r4;

import java.io.EOFException;
import java.util.Arrays;
import net.bytebuddy.jar.asm.Opcodes;
/* renamed from: r4.of */
/* loaded from: classes2.dex */
public final class C6094of {

    /* renamed from: g */
    public static final byte[] f28965g = new byte[4096];

    /* renamed from: a */
    public final InterfaceC5766fk f28966a;

    /* renamed from: b */
    public final long f28967b;

    /* renamed from: c */
    public long f28968c;

    /* renamed from: d */
    public byte[] f28969d = new byte[65536];

    /* renamed from: e */
    public int f28970e;

    /* renamed from: f */
    public int f28971f;

    public C6094of(InterfaceC5766fk interfaceC5766fk, long j, long j2) {
        this.f28966a = interfaceC5766fk;
        this.f28968c = j;
        this.f28967b = j2;
    }

    /* renamed from: e */
    public final boolean m8814e(byte[] bArr, int i, int i2, boolean z) {
        if (m8813f(i2, false)) {
            System.arraycopy(this.f28969d, this.f28970e - i2, bArr, i, i2);
            return true;
        }
        return false;
    }

    /* renamed from: g */
    public final void m8812g() {
        this.f28970e = 0;
    }

    /* renamed from: h */
    public final long m8811h() {
        return this.f28968c;
    }

    /* renamed from: i */
    public final long m8810i() {
        return this.f28967b;
    }

    /* renamed from: n */
    public final void m8805n(int i) {
        if (i != -1) {
            this.f28968c += i;
        }
    }

    /* renamed from: f */
    public final boolean m8813f(int i, boolean z) {
        int i2 = this.f28970e + i;
        int length = this.f28969d.length;
        if (i2 > length) {
            this.f28969d = Arrays.copyOf(this.f28969d, C5988ll.m9648f(length + length, 65536 + i2, i2 + Opcodes.ASM8));
        }
        int min = Math.min(this.f28971f - this.f28970e, i);
        while (min < i) {
            min = m8806m(this.f28969d, this.f28970e, i, min, false);
            if (min == -1) {
                return false;
            }
        }
        int i3 = this.f28970e + i;
        this.f28970e = i3;
        this.f28971f = Math.max(this.f28971f, i3);
        return true;
    }

    /* renamed from: j */
    public final int m8809j(int i) {
        int min = Math.min(this.f28971f, i);
        m8807l(min);
        return min;
    }

    /* renamed from: k */
    public final int m8808k(byte[] bArr, int i, int i2) {
        int i3 = this.f28971f;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f28969d, 0, bArr, i, min);
        m8807l(min);
        return min;
    }

    /* renamed from: l */
    public final void m8807l(int i) {
        byte[] bArr;
        int i2 = this.f28971f - i;
        this.f28971f = i2;
        this.f28970e = 0;
        byte[] bArr2 = this.f28969d;
        if (i2 < bArr2.length - 524288) {
            bArr = new byte[65536 + i2];
        } else {
            bArr = bArr2;
        }
        System.arraycopy(bArr2, i, bArr, 0, i2);
        this.f28969d = bArr;
    }

    /* renamed from: a */
    public final int m8818a(byte[] bArr, int i, int i2) {
        int m8808k = m8808k(bArr, i, i2);
        if (m8808k == 0) {
            m8808k = m8806m(bArr, i, i2, 0, true);
        }
        m8805n(m8808k);
        return m8808k;
    }

    /* renamed from: b */
    public final boolean m8817b(byte[] bArr, int i, int i2, boolean z) {
        int m8808k = m8808k(bArr, i, i2);
        while (m8808k < i2 && m8808k != -1) {
            m8808k = m8806m(bArr, i, i2, m8808k, z);
        }
        m8805n(m8808k);
        if (m8808k != -1) {
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public final int m8816c(int i) {
        int m8809j = m8809j(i);
        if (m8809j == 0) {
            m8809j = m8806m(f28965g, 0, Math.min(i, 4096), 0, true);
        }
        m8805n(m8809j);
        return m8809j;
    }

    /* renamed from: d */
    public final boolean m8815d(int i, boolean z) {
        int m8809j = m8809j(i);
        while (m8809j < i && m8809j != -1) {
            m8809j = m8806m(f28965g, -m8809j, Math.min(i, m8809j + 4096), m8809j, false);
        }
        m8805n(m8809j);
        if (m8809j != -1) {
            return true;
        }
        return false;
    }

    /* renamed from: m */
    public final int m8806m(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (!Thread.interrupted()) {
            int mo4616a = this.f28966a.mo4616a(bArr, i + i3, i2 - i3);
            if (mo4616a == -1) {
                if (i3 == 0 && z) {
                    return -1;
                }
                throw new EOFException();
            }
            return i3 + mo4616a;
        }
        throw new InterruptedException();
    }
}
