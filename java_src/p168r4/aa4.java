package p168r4;

import java.io.EOFException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: r4.aa4 */
/* loaded from: classes2.dex */
public abstract class aa4 implements ba4 {

    /* renamed from: b */
    public static final Logger f20441b = Logger.getLogger(aa4.class.getName());

    /* renamed from: a */
    public final ThreadLocal<ByteBuffer> f20442a = new z94(this);

    /* renamed from: b */
    public abstract ea4 mo12376b(String str, byte[] bArr, String str2);

    @Override // p168r4.ba4
    /* renamed from: a */
    public final ea4 mo12835a(gr3 gr3Var, fa4 fa4Var) {
        int mo4151J0;
        long j;
        String str;
        long mo4149b = gr3Var.mo4149b();
        this.f20442a.get().rewind().limit(8);
        do {
            mo4151J0 = gr3Var.mo4151J0(this.f20442a.get());
            if (mo4151J0 == 8) {
                this.f20442a.get().rewind();
                long m12184a = da4.m12184a(this.f20442a.get());
                byte[] bArr = null;
                if (m12184a < 8 && m12184a > 1) {
                    Logger logger = f20441b;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(m12184a);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                this.f20442a.get().get(bArr2);
                try {
                    String str2 = new String(bArr2, "ISO-8859-1");
                    if (m12184a == 1) {
                        this.f20442a.get().limit(16);
                        gr3Var.mo4151J0(this.f20442a.get());
                        this.f20442a.get().position(8);
                        j = da4.m12181d(this.f20442a.get()) - 16;
                    } else if (m12184a == 0) {
                        j = gr3Var.mo4150a() - gr3Var.mo4149b();
                    } else {
                        j = m12184a - 8;
                    }
                    if ("uuid".equals(str2)) {
                        this.f20442a.get().limit(this.f20442a.get().limit() + 16);
                        gr3Var.mo4151J0(this.f20442a.get());
                        bArr = new byte[16];
                        for (int position = this.f20442a.get().position() - 16; position < this.f20442a.get().position(); position++) {
                            bArr[position - (this.f20442a.get().position() - 16)] = this.f20442a.get().get(position);
                        }
                        j -= 16;
                    }
                    long j2 = j;
                    if (fa4Var instanceof ea4) {
                        str = ((ea4) fa4Var).mo11836a();
                    } else {
                        str = "";
                    }
                    ea4 mo12376b = mo12376b(str2, bArr, str);
                    mo12376b.mo11835c(fa4Var);
                    this.f20442a.get().rewind();
                    mo12376b.mo11834e(gr3Var, this.f20442a.get(), j2, this);
                    return mo12376b;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (mo4151J0 >= 0);
        gr3Var.mo4147x(mo4149b);
        throw new EOFException();
    }
}
