package p022c0;

import android.util.Log;
import java.io.Writer;
@Deprecated
/* renamed from: c0.c */
/* loaded from: classes.dex */
public class C1020c extends Writer {

    /* renamed from: a */
    public final String f2921a;

    /* renamed from: b */
    public StringBuilder f2922b = new StringBuilder(128);

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m24815c();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m24815c();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m24815c();
            } else {
                this.f2922b.append(c);
            }
        }
    }

    /* renamed from: c */
    public final void m24815c() {
        if (this.f2922b.length() > 0) {
            Log.d(this.f2921a, this.f2922b.toString());
            StringBuilder sb = this.f2922b;
            sb.delete(0, sb.length());
        }
    }

    public C1020c(String str) {
        this.f2921a = str;
    }
}
