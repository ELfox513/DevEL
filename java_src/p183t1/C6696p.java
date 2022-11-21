package p183t1;

import java.io.EOFException;
/* renamed from: t1.p */
/* loaded from: classes.dex */
public final class C6696p extends AbstractC6646b implements InterfaceC6648d {

    /* renamed from: c */
    public final short[] f35307c;

    /* renamed from: m */
    public boolean m3631m() {
        return mo3706k() < this.f35307c.length;
    }

    @Override // p183t1.InterfaceC6648d
    public int read() {
        try {
            short s = this.f35307c[mo3706k()];
            m3709l(1);
            return s & 65535;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new EOFException();
        }
    }

    public C6696p(short[] sArr) {
        if (sArr != null) {
            this.f35307c = sArr;
            return;
        }
        throw new NullPointerException("array == null");
    }

    @Override // p183t1.InterfaceC6648d
    public int readInt() {
        return read() | (read() << 16);
    }

    @Override // p183t1.InterfaceC6648d
    public long readLong() {
        return read() | (read() << 16) | (read() << 32) | (read() << 48);
    }
}
