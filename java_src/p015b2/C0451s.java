package p015b2;

import com.prineside.tdi2.tiles.CoreTile;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
/* renamed from: b2.s */
/* loaded from: classes.dex */
public final class C0451s {

    /* renamed from: a */
    public final Writer f1538a;

    /* renamed from: b */
    public final int f1539b;

    /* renamed from: c */
    public final StringBuffer f1540c;

    /* renamed from: d */
    public final StringBuffer f1541d;

    /* renamed from: e */
    public final C0439h f1542e;

    /* renamed from: f */
    public final C0439h f1543f;

    /* renamed from: i */
    public static void m26432i(Writer writer, int i) {
        while (i > 0) {
            writer.write(32);
            i--;
        }
    }

    /* renamed from: e */
    public Writer m26436e() {
        return this.f1542e;
    }

    /* renamed from: f */
    public Writer m26435f() {
        return this.f1543f;
    }

    /* renamed from: b */
    public void m26439b() {
        try {
            m26440a(this.f1540c, this.f1542e);
            m26440a(this.f1541d, this.f1543f);
            m26434g();
            m26438c();
            m26437d();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: c */
    public final void m26438c() {
        m26440a(this.f1540c, this.f1542e);
        while (this.f1540c.length() != 0) {
            this.f1543f.write(10);
            m26434g();
        }
    }

    /* renamed from: d */
    public final void m26437d() {
        m26440a(this.f1541d, this.f1543f);
        while (this.f1541d.length() != 0) {
            this.f1542e.write(10);
            m26434g();
        }
    }

    /* renamed from: g */
    public final void m26434g() {
        int indexOf;
        while (true) {
            int indexOf2 = this.f1540c.indexOf("\n");
            if (indexOf2 < 0 || (indexOf = this.f1541d.indexOf("\n")) < 0) {
                return;
            }
            if (indexOf2 != 0) {
                this.f1538a.write(this.f1540c.substring(0, indexOf2));
            }
            if (indexOf != 0) {
                m26432i(this.f1538a, this.f1539b - indexOf2);
                this.f1538a.write(this.f1541d.substring(0, indexOf));
            }
            this.f1538a.write(10);
            this.f1540c.delete(0, indexOf2 + 1);
            this.f1541d.delete(0, indexOf + 1);
        }
    }

    public C0451s(Writer writer, int i, int i2, String str) {
        if (writer != null) {
            if (i >= 1) {
                if (i2 >= 1) {
                    if (str != null) {
                        StringWriter stringWriter = new StringWriter(CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
                        StringWriter stringWriter2 = new StringWriter(CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
                        this.f1538a = writer;
                        this.f1539b = i;
                        this.f1540c = stringWriter.getBuffer();
                        this.f1541d = stringWriter2.getBuffer();
                        this.f1542e = new C0439h(stringWriter, i);
                        this.f1543f = new C0439h(stringWriter2, i2, str);
                        return;
                    }
                    throw new NullPointerException("spacer == null");
                }
                throw new IllegalArgumentException("rightWidth < 1");
            }
            throw new IllegalArgumentException("leftWidth < 1");
        }
        throw new NullPointerException("out == null");
    }

    /* renamed from: a */
    public static void m26440a(StringBuffer stringBuffer, Writer writer) {
        int length = stringBuffer.length();
        if (length != 0 && stringBuffer.charAt(length - 1) != '\n') {
            writer.write(10);
        }
    }

    /* renamed from: h */
    public static String m26433h(String str, int i, String str2, String str3, int i2) {
        StringWriter stringWriter = new StringWriter((str.length() + str3.length()) * 3);
        C0451s c0451s = new C0451s(stringWriter, i, i2, str2);
        try {
            c0451s.m26436e().write(str);
            c0451s.m26435f().write(str3);
            c0451s.m26439b();
            return stringWriter.toString();
        } catch (IOException e) {
            throw new RuntimeException("shouldn't happen", e);
        }
    }
}
