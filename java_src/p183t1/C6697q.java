package p183t1;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: t1.q */
/* loaded from: classes.dex */
public final class C6697q extends AbstractC6646b implements InterfaceC6649e {

    /* renamed from: c */
    public final short[] f35308c;

    @Override // p183t1.InterfaceC6649e
    /* renamed from: a */
    public void mo3630a(short[] sArr) {
        for (short s : sArr) {
            mo3624i(s);
        }
    }

    @Override // p183t1.InterfaceC6649e
    /* renamed from: c */
    public void mo3629c(long[] jArr) {
        for (long j : jArr) {
            m3621n(j);
        }
    }

    @Override // p183t1.InterfaceC6649e
    /* renamed from: d */
    public void mo3628d(int[] iArr) {
        for (int i : iArr) {
            writeInt(i);
        }
    }

    /* renamed from: n */
    public void m3621n(long j) {
        mo3624i((short) j);
        mo3624i((short) (j >> 16));
        mo3624i((short) (j >> 32));
        mo3624i((short) (j >> 48));
    }

    @Override // p183t1.InterfaceC6649e
    public void write(byte[] bArr) {
        boolean z = true;
        int i = 0;
        for (byte b : bArr) {
            if (z) {
                i = b & DefaultClassResolver.NAME;
                z = false;
            } else {
                int i2 = (b << 8) | i;
                mo3624i((short) i2);
                i = i2;
                z = true;
            }
        }
        if (!z) {
            mo3624i((short) i);
        }
    }

    @Override // p183t1.InterfaceC6649e
    public void writeInt(int i) {
        mo3624i((short) i);
        mo3624i((short) (i >> 16));
    }

    @Override // p183t1.InterfaceC6649e
    /* renamed from: i */
    public void mo3624i(short s) {
        this.f35308c[mo3706k()] = s;
        m3709l(1);
    }

    public C6697q(int i) {
        if (i >= 0) {
            this.f35308c = new short[i];
            return;
        }
        throw new IllegalArgumentException("maxSize < 0");
    }

    @Override // p183t1.InterfaceC6649e
    /* renamed from: e */
    public void mo3627e(short s, short s2) {
        mo3624i(s);
        mo3624i(s2);
    }

    @Override // p183t1.InterfaceC6649e
    /* renamed from: f */
    public void mo3626f(short s, short s2, short s3) {
        mo3624i(s);
        mo3624i(s2);
        mo3624i(s3);
    }

    @Override // p183t1.InterfaceC6649e
    /* renamed from: h */
    public void mo3625h(short s, short s2, short s3, short s4) {
        mo3624i(s);
        mo3624i(s2);
        mo3624i(s3);
        mo3624i(s4);
    }

    @Override // p183t1.InterfaceC6649e
    /* renamed from: j */
    public void mo3623j(short s, short s2, short s3, short s4, short s5) {
        mo3624i(s);
        mo3624i(s2);
        mo3624i(s3);
        mo3624i(s4);
        mo3624i(s5);
    }

    /* renamed from: m */
    public short[] m3622m() {
        int mo3706k = mo3706k();
        short[] sArr = this.f35308c;
        if (mo3706k == sArr.length) {
            return sArr;
        }
        short[] sArr2 = new short[mo3706k];
        System.arraycopy(sArr, 0, sArr2, 0, mo3706k);
        return sArr2;
    }
}
