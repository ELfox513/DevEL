package p222x5;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
import p238z5.AbstractC7762a0;
/* renamed from: x5.u */
/* loaded from: classes2.dex */
public class C7385u implements InterfaceC7330a0 {

    /* renamed from: a */
    public final File f36967a;

    /* renamed from: b */
    public final String f36968b;

    /* renamed from: c */
    public final String f36969c;

    @Override // p222x5.InterfaceC7330a0
    /* renamed from: a */
    public String mo1618a() {
        return this.f36969c;
    }

    @Override // p222x5.InterfaceC7330a0
    /* renamed from: b */
    public InputStream mo1617b() {
        if (this.f36967a.exists() && this.f36967a.isFile()) {
            try {
                return new FileInputStream(this.f36967a);
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
    }

    /* renamed from: d */
    public final byte[] m1615d() {
        byte[] bArr = new byte[8192];
        try {
            InputStream mo1617b = mo1617b();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            if (mo1617b == null) {
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                if (mo1617b != null) {
                    mo1617b.close();
                }
                return null;
            }
            while (true) {
                try {
                    int read = mo1617b.read(bArr);
                    if (read > 0) {
                        gZIPOutputStream.write(bArr, 0, read);
                    } else {
                        gZIPOutputStream.finish();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        gZIPOutputStream.close();
                        byteArrayOutputStream.close();
                        mo1617b.close();
                        return byteArray;
                    }
                } catch (Throwable th) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th2) {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                    }
                    throw th;
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public C7385u(String str, String str2, File file) {
        this.f36968b = str;
        this.f36969c = str2;
        this.f36967a = file;
    }

    @Override // p222x5.InterfaceC7330a0
    /* renamed from: c */
    public AbstractC7762a0.AbstractC7768d.AbstractC7770b mo1616c() {
        byte[] m1615d = m1615d();
        if (m1615d != null) {
            return AbstractC7762a0.AbstractC7768d.AbstractC7770b.m360a().mo284b(m1615d).mo283c(this.f36968b).mo285a();
        }
        return null;
    }
}
