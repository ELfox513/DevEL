package com.badlogic.gdx.utils;

import java.io.Writer;
/* loaded from: classes.dex */
public class XmlWriter extends Writer {

    /* renamed from: a */
    public final Writer f6801a;

    /* renamed from: b */
    public final Array<String> f6802b = new Array<>();

    /* renamed from: d */
    public String f6803d;
    public int indent;

    /* renamed from: k */
    public boolean f6804k;

    public XmlWriter element(String str) {
        if (m23462d()) {
            this.f6801a.write(10);
        }
        m23463c();
        this.f6801a.write(60);
        this.f6801a.write(str);
        this.f6803d = str;
        return this;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        this.f6801a.flush();
    }

    public XmlWriter attribute(String str, Object obj) {
        String obj2;
        if (this.f6803d != null) {
            this.f6801a.write(32);
            this.f6801a.write(str);
            this.f6801a.write("=\"");
            Writer writer = this.f6801a;
            if (obj == null) {
                obj2 = "null";
            } else {
                obj2 = obj.toString();
            }
            writer.write(obj2);
            this.f6801a.write(34);
            return this;
        }
        throw new IllegalStateException();
    }

    /* renamed from: c */
    public final void m23463c() {
        int i = this.indent;
        if (this.f6803d != null) {
            i++;
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.f6801a.write(9);
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (this.f6802b.size != 0) {
            pop();
        }
        this.f6801a.close();
    }

    /* renamed from: d */
    public final boolean m23462d() {
        String str = this.f6803d;
        if (str == null) {
            return false;
        }
        this.indent++;
        this.f6802b.add(str);
        this.f6803d = null;
        this.f6801a.write(">");
        return true;
    }

    public XmlWriter pop() {
        if (this.f6803d != null) {
            this.f6801a.write("/>\n");
            this.f6803d = null;
        } else {
            this.indent = Math.max(this.indent - 1, 0);
            if (this.f6804k) {
                m23463c();
            }
            this.f6801a.write("</");
            this.f6801a.write(this.f6802b.pop());
            this.f6801a.write(">\n");
        }
        this.f6804k = true;
        return this;
    }

    public XmlWriter(Writer writer) {
        this.f6801a = writer;
    }

    public XmlWriter text(Object obj) {
        String obj2;
        boolean z;
        m23462d();
        if (obj == null) {
            obj2 = "null";
        } else {
            obj2 = obj.toString();
        }
        if (obj2.length() > 64) {
            z = true;
        } else {
            z = false;
        }
        this.f6804k = z;
        if (z) {
            this.f6801a.write(10);
            m23463c();
        }
        this.f6801a.write(obj2);
        if (this.f6804k) {
            this.f6801a.write(10);
        }
        return this;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        m23462d();
        this.f6801a.write(cArr, i, i2);
    }

    public XmlWriter element(String str, Object obj) {
        return element(str).text(obj).pop();
    }
}
