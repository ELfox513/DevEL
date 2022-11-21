package p222x5;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
import p238z5.AbstractC7762a0;
/* renamed from: x5.e */
/* loaded from: classes2.dex */
public class C7337e implements InterfaceC7330a0 {

    /* renamed from: a */
    public final byte[] f36827a;

    /* renamed from: b */
    public final String f36828b;

    /* renamed from: c */
    public final String f36829c;

    @Override // p222x5.InterfaceC7330a0
    /* renamed from: a */
    public String mo1618a() {
        return this.f36829c;
    }

    @Override // p222x5.InterfaceC7330a0
    /* renamed from: b */
    public InputStream mo1617b() {
        if (m1822e()) {
            return null;
        }
        return new ByteArrayInputStream(this.f36827a);
    }

    /* renamed from: e */
    public final boolean m1822e() {
        byte[] bArr = this.f36827a;
        return bArr == null || bArr.length == 0;
    }

    public C7337e(String str, String str2, byte[] bArr) {
        this.f36828b = str;
        this.f36829c = str2;
        this.f36827a = bArr;
    }

    @Override // p222x5.InterfaceC7330a0
    /* renamed from: c */
    public AbstractC7762a0.AbstractC7768d.AbstractC7770b mo1616c() {
        byte[] m1823d = m1823d();
        if (m1823d == null) {
            return null;
        }
        return AbstractC7762a0.AbstractC7768d.AbstractC7770b.m360a().mo284b(m1823d).mo283c(this.f36828b).mo285a();
    }

    /* renamed from: d */
    public final byte[] m1823d() {
        if (m1822e()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(this.f36827a);
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th2) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                }
                throw th;
            }
        } catch (IOException unused) {
            return null;
        }
    }
}
