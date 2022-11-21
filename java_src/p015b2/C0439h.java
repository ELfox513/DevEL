package p015b2;

import java.io.FilterWriter;
import java.io.Writer;
/* renamed from: b2.h */
/* loaded from: classes.dex */
public final class C0439h extends FilterWriter {

    /* renamed from: a */
    public final String f1524a;

    /* renamed from: b */
    public final int f1525b;

    /* renamed from: d */
    public final int f1526d;

    /* renamed from: k */
    public int f1527k;

    /* renamed from: p */
    public boolean f1528p;

    /* renamed from: q */
    public int f1529q;

    public C0439h(Writer writer, int i, String str) {
        super(writer);
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("width < 0");
        }
        if (str != null) {
            this.f1525b = i != 0 ? i : Integer.MAX_VALUE;
            this.f1526d = i >> 1;
            this.f1524a = str.length() == 0 ? null : str;
            m26472c();
            return;
        }
        throw new NullPointerException("prefix == null");
    }

    /* renamed from: c */
    public final void m26472c() {
        boolean z;
        this.f1527k = 0;
        if (this.f1526d != 0) {
            z = true;
        } else {
            z = false;
        }
        this.f1528p = z;
        this.f1529q = 0;
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i) {
        int i2;
        synchronized (((FilterWriter) this).lock) {
            int i3 = 0;
            if (this.f1528p) {
                if (i == 32) {
                    int i4 = this.f1529q + 1;
                    this.f1529q = i4;
                    int i5 = this.f1526d;
                    if (i4 >= i5) {
                        this.f1529q = i5;
                        this.f1528p = false;
                    }
                } else {
                    this.f1528p = false;
                }
            }
            if (this.f1527k == this.f1525b && i != 10) {
                ((FilterWriter) this).out.write(10);
                this.f1527k = 0;
            }
            if (this.f1527k == 0) {
                String str = this.f1524a;
                if (str != null) {
                    ((FilterWriter) this).out.write(str);
                }
                if (!this.f1528p) {
                    while (true) {
                        i2 = this.f1529q;
                        if (i3 >= i2) {
                            break;
                        }
                        ((FilterWriter) this).out.write(32);
                        i3++;
                    }
                    this.f1527k = i2;
                }
            }
            ((FilterWriter) this).out.write(i);
            if (i == 10) {
                m26472c();
            } else {
                this.f1527k++;
            }
        }
    }

    public C0439h(Writer writer, int i) {
        this(writer, i, "");
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        synchronized (((FilterWriter) this).lock) {
            while (i2 > 0) {
                write(cArr[i]);
                i++;
                i2--;
            }
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i, int i2) {
        synchronized (((FilterWriter) this).lock) {
            while (i2 > 0) {
                write(str.charAt(i));
                i++;
                i2--;
            }
        }
    }
}
