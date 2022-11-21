package p168r4;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* renamed from: r4.p8 */
/* loaded from: classes2.dex */
public final class C6124p8 {

    /* renamed from: a */
    public final ByteArrayOutputStream f29381a;

    /* renamed from: b */
    public final DataOutputStream f29382b;

    /* renamed from: a */
    public final byte[] m8454a(C6050n8 c6050n8) {
        this.f29381a.reset();
        try {
            m8453b(this.f29382b, c6050n8.f28191a);
            String str = c6050n8.f28192b;
            if (str == null) {
                str = "";
            }
            m8453b(this.f29382b, str);
            this.f29382b.writeLong(c6050n8.f28193d);
            this.f29382b.writeLong(c6050n8.f28194k);
            this.f29382b.write(c6050n8.f28195p);
            this.f29382b.flush();
            return this.f29381a.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public C6124p8() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f29381a = byteArrayOutputStream;
        this.f29382b = new DataOutputStream(byteArrayOutputStream);
    }

    /* renamed from: b */
    public static void m8453b(DataOutputStream dataOutputStream, String str) {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }
}
