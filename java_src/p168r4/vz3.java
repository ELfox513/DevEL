package p168r4;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import net.bytebuddy.jar.asm.Opcodes;
/* renamed from: r4.vz3 */
/* loaded from: classes2.dex */
public final class vz3 implements b04 {

    /* renamed from: b */
    public final InterfaceC5936k6 f32991b;

    /* renamed from: c */
    public final long f32992c;

    /* renamed from: d */
    public long f32993d;

    /* renamed from: f */
    public int f32995f;

    /* renamed from: g */
    public int f32996g;

    /* renamed from: e */
    public byte[] f32994e = new byte[65536];

    /* renamed from: a */
    public final byte[] f32990a = new byte[4096];

    public vz3(InterfaceC5936k6 interfaceC5936k6, long j, long j2) {
        this.f32991b = interfaceC5936k6;
        this.f32993d = j;
        this.f32992c = j2;
    }

    @Override // p168r4.b04
    /* renamed from: D */
    public final int mo5966D(int i) {
        int m5951s = m5951s(1);
        if (m5951s == 0) {
            m5951s = m5948v(this.f32990a, 0, Math.min(1, 4096), 0, true);
        }
        m5947w(m5951s);
        return m5951s;
    }

    @Override // p168r4.b04
    /* renamed from: S */
    public final void mo5965S(int i) {
        m5956n(i, false);
    }

    @Override // p168r4.b04
    /* renamed from: T */
    public final void mo5964T(int i) {
        m5955o(i, false);
    }

    @Override // p168r4.b04
    /* renamed from: a */
    public final void mo5963a(byte[] bArr, int i, int i2) {
        mo5961f(bArr, i, i2, false);
    }

    @Override // p168r4.b04
    /* renamed from: e */
    public final void mo5962e(byte[] bArr, int i, int i2) {
        mo5960i(bArr, i, i2, false);
    }

    @Override // p168r4.b04
    /* renamed from: k */
    public final void mo5959k() {
        this.f32995f = 0;
    }

    @Override // p168r4.b04
    /* renamed from: l */
    public final long mo5958l() {
        return this.f32993d + this.f32995f;
    }

    @Override // p168r4.b04
    /* renamed from: p */
    public final long mo5954p() {
        return this.f32993d;
    }

    @Override // p168r4.b04
    /* renamed from: q */
    public final long mo5953q() {
        return this.f32992c;
    }

    /* renamed from: w */
    public final void m5947w(int i) {
        if (i != -1) {
            this.f32993d += i;
        }
    }

    /* renamed from: r */
    public final void m5952r(int i) {
        int i2 = this.f32995f + i;
        int length = this.f32994e.length;
        if (i2 > length) {
            this.f32994e = Arrays.copyOf(this.f32994e, C5979lc.m9705c0(length + length, 65536 + i2, i2 + Opcodes.ASM8));
        }
    }

    /* renamed from: s */
    public final int m5951s(int i) {
        int min = Math.min(this.f32996g, i);
        m5949u(min);
        return min;
    }

    /* renamed from: t */
    public final int m5950t(byte[] bArr, int i, int i2) {
        int i3 = this.f32996g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f32994e, 0, bArr, i, min);
        m5949u(min);
        return min;
    }

    /* renamed from: u */
    public final void m5949u(int i) {
        byte[] bArr;
        int i2 = this.f32996g - i;
        this.f32996g = i2;
        this.f32995f = 0;
        byte[] bArr2 = this.f32994e;
        if (i2 < bArr2.length - 524288) {
            bArr = new byte[65536 + i2];
        } else {
            bArr = bArr2;
        }
        System.arraycopy(bArr2, i, bArr, 0, i2);
        this.f32994e = bArr;
    }

    @Override // p168r4.b04, p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        int m5950t = m5950t(bArr, i, i2);
        if (m5950t == 0) {
            m5950t = m5948v(bArr, i, i2, 0, true);
        }
        m5947w(m5950t);
        return m5950t;
    }

    @Override // p168r4.b04
    /* renamed from: f */
    public final boolean mo5961f(byte[] bArr, int i, int i2, boolean z) {
        int m5950t = m5950t(bArr, i, i2);
        while (m5950t < i2 && m5950t != -1) {
            m5950t = m5948v(bArr, i, i2, m5950t, z);
        }
        m5947w(m5950t);
        if (m5950t != -1) {
            return true;
        }
        return false;
    }

    @Override // p168r4.b04
    /* renamed from: i */
    public final boolean mo5960i(byte[] bArr, int i, int i2, boolean z) {
        if (!m5955o(i2, z)) {
            return false;
        }
        System.arraycopy(this.f32994e, this.f32995f - i2, bArr, i, i2);
        return true;
    }

    @Override // p168r4.b04
    /* renamed from: m */
    public final int mo5957m(byte[] bArr, int i, int i2) {
        int min;
        m5952r(i2);
        int i3 = this.f32996g;
        int i4 = this.f32995f;
        int i5 = i3 - i4;
        if (i5 == 0) {
            min = m5948v(this.f32994e, i4, i2, 0, true);
            if (min == -1) {
                return -1;
            }
            this.f32996g += min;
        } else {
            min = Math.min(i2, i5);
        }
        System.arraycopy(this.f32994e, this.f32995f, bArr, i, min);
        this.f32995f += min;
        return min;
    }

    /* renamed from: n */
    public final boolean m5956n(int i, boolean z) {
        int m5951s = m5951s(i);
        while (m5951s < i && m5951s != -1) {
            m5951s = m5948v(this.f32990a, -m5951s, Math.min(i, m5951s + 4096), m5951s, false);
        }
        m5947w(m5951s);
        if (m5951s != -1) {
            return true;
        }
        return false;
    }

    /* renamed from: o */
    public final boolean m5955o(int i, boolean z) {
        m5952r(i);
        int i2 = this.f32996g - this.f32995f;
        while (i2 < i) {
            i2 = m5948v(this.f32994e, this.f32995f, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.f32996g = this.f32995f + i2;
        }
        this.f32995f += i;
        return true;
    }

    /* renamed from: v */
    public final int m5948v(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (!Thread.interrupted()) {
            int mo4060b = this.f32991b.mo4060b(bArr, i + i3, i2 - i3);
            if (mo4060b == -1) {
                if (i3 == 0 && z) {
                    return -1;
                }
                throw new EOFException();
            }
            return i3 + mo4060b;
        }
        throw new InterruptedIOException();
    }
}
