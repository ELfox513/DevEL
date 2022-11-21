package com.prineside.luaj.parser;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
/* loaded from: classes2.dex */
public class SimpleCharStream {
    public static final boolean staticFlag = false;

    /* renamed from: a */
    public int f8368a;

    /* renamed from: b */
    public int f8369b;
    public int bufpos;

    /* renamed from: c */
    public int f8370c;

    /* renamed from: d */
    public int[] f8371d;

    /* renamed from: e */
    public int[] f8372e;

    /* renamed from: f */
    public int f8373f;

    /* renamed from: g */
    public int f8374g;

    /* renamed from: h */
    public boolean f8375h;

    /* renamed from: i */
    public boolean f8376i;

    /* renamed from: j */
    public Reader f8377j;

    /* renamed from: k */
    public char[] f8378k;

    /* renamed from: l */
    public int f8379l;

    /* renamed from: m */
    public int f8380m;

    /* renamed from: n */
    public int f8381n;

    public SimpleCharStream(Reader reader, int i, int i2, int i3) {
        this.bufpos = -1;
        this.f8375h = false;
        this.f8376i = false;
        this.f8379l = 0;
        this.f8380m = 0;
        this.f8381n = 1;
        this.f8377j = reader;
        this.f8374g = i;
        this.f8373f = i2 - 1;
        this.f8368a = i3;
        this.f8369b = i3;
        this.f8378k = new char[i3];
        this.f8371d = new int[i3];
        this.f8372e = new int[i3];
    }

    public char BeginToken() {
        this.f8370c = -1;
        char readChar = readChar();
        this.f8370c = this.bufpos;
        return readChar;
    }

    public void Done() {
        this.f8378k = null;
        this.f8371d = null;
        this.f8372e = null;
    }

    public void ReInit(Reader reader, int i, int i2, int i3) {
        this.f8377j = reader;
        this.f8374g = i;
        this.f8373f = i2 - 1;
        char[] cArr = this.f8378k;
        if (cArr == null || i3 != cArr.length) {
            this.f8368a = i3;
            this.f8369b = i3;
            this.f8378k = new char[i3];
            this.f8371d = new int[i3];
            this.f8372e = new int[i3];
        }
        this.f8375h = false;
        this.f8376i = false;
        this.f8379l = 0;
        this.f8380m = 0;
        this.f8370c = 0;
        this.bufpos = -1;
    }

    public int getBeginColumn() {
        return this.f8372e[this.f8370c];
    }

    public int getBeginLine() {
        return this.f8371d[this.f8370c];
    }

    public int getColumn() {
        return this.f8372e[this.bufpos];
    }

    public int getEndColumn() {
        return this.f8372e[this.bufpos];
    }

    public int getEndLine() {
        return this.f8371d[this.bufpos];
    }

    public int getLine() {
        return this.f8371d[this.bufpos];
    }

    public int getTabSize(int i) {
        return this.f8381n;
    }

    public void setTabSize(int i) {
        this.f8381n = i;
    }

    public String GetImage() {
        int i = this.bufpos;
        int i2 = this.f8370c;
        if (i >= i2) {
            return new String(this.f8378k, i2, (i - i2) + 1);
        }
        StringBuilder sb = new StringBuilder();
        char[] cArr = this.f8378k;
        int i3 = this.f8370c;
        sb.append(new String(cArr, i3, this.f8368a - i3));
        sb.append(new String(this.f8378k, 0, this.bufpos + 1));
        return sb.toString();
    }

    public char[] GetSuffix(int i) {
        char[] cArr = new char[i];
        int i2 = this.bufpos;
        if (i2 + 1 >= i) {
            System.arraycopy(this.f8378k, (i2 - i) + 1, cArr, 0, i);
        } else {
            System.arraycopy(this.f8378k, this.f8368a - ((i - i2) - 1), cArr, 0, (i - i2) - 1);
            char[] cArr2 = this.f8378k;
            int i3 = this.bufpos;
            System.arraycopy(cArr2, 0, cArr, (i - i3) - 1, i3 + 1);
        }
        return cArr;
    }

    /* renamed from: a */
    public void m22240a(boolean z) {
        int i = this.f8368a;
        char[] cArr = new char[i + 2048];
        int[] iArr = new int[i + 2048];
        int[] iArr2 = new int[i + 2048];
        try {
            if (z) {
                char[] cArr2 = this.f8378k;
                int i2 = this.f8370c;
                System.arraycopy(cArr2, i2, cArr, 0, i - i2);
                System.arraycopy(this.f8378k, 0, cArr, this.f8368a - this.f8370c, this.bufpos);
                this.f8378k = cArr;
                int[] iArr3 = this.f8371d;
                int i3 = this.f8370c;
                System.arraycopy(iArr3, i3, iArr, 0, this.f8368a - i3);
                System.arraycopy(this.f8371d, 0, iArr, this.f8368a - this.f8370c, this.bufpos);
                this.f8371d = iArr;
                int[] iArr4 = this.f8372e;
                int i4 = this.f8370c;
                System.arraycopy(iArr4, i4, iArr2, 0, this.f8368a - i4);
                System.arraycopy(this.f8372e, 0, iArr2, this.f8368a - this.f8370c, this.bufpos);
                this.f8372e = iArr2;
                int i5 = this.bufpos + (this.f8368a - this.f8370c);
                this.bufpos = i5;
                this.f8379l = i5;
            } else {
                char[] cArr3 = this.f8378k;
                int i6 = this.f8370c;
                System.arraycopy(cArr3, i6, cArr, 0, i - i6);
                this.f8378k = cArr;
                int[] iArr5 = this.f8371d;
                int i7 = this.f8370c;
                System.arraycopy(iArr5, i7, iArr, 0, this.f8368a - i7);
                this.f8371d = iArr;
                int[] iArr6 = this.f8372e;
                int i8 = this.f8370c;
                System.arraycopy(iArr6, i8, iArr2, 0, this.f8368a - i8);
                this.f8372e = iArr2;
                int i9 = this.bufpos - this.f8370c;
                this.bufpos = i9;
                this.f8379l = i9;
            }
            int i10 = this.f8368a + 2048;
            this.f8368a = i10;
            this.f8369b = i10;
            this.f8370c = 0;
        } catch (Throwable th) {
            throw new Error(th.getMessage());
        }
    }

    public void adjustBeginLineColumn(int i, int i2) {
        int i3;
        int i4 = this.f8370c;
        int i5 = this.bufpos;
        if (i5 >= i4) {
            i3 = (i5 - i4) + this.f8380m + 1;
        } else {
            i3 = this.f8380m + (this.f8368a - i4) + i5 + 1;
        }
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            if (i6 >= i3) {
                break;
            }
            int[] iArr = this.f8371d;
            int i9 = this.f8368a;
            int i10 = i4 % i9;
            i4++;
            int i11 = i4 % i9;
            if (iArr[i10] == iArr[i11]) {
                iArr[i10] = i;
                int[] iArr2 = this.f8372e;
                iArr2[i10] = i8 + i2;
                i6++;
                i8 = (iArr2[i11] + i8) - iArr2[i10];
                i7 = i10;
            } else {
                i7 = i10;
                break;
            }
        }
        if (i6 < i3) {
            int i12 = i + 1;
            this.f8371d[i7] = i;
            this.f8372e[i7] = i2 + i8;
            while (true) {
                int i13 = i6 + 1;
                if (i6 >= i3) {
                    break;
                }
                int[] iArr3 = this.f8371d;
                int i14 = this.f8368a;
                i7 = i4 % i14;
                i4++;
                if (iArr3[i7] != iArr3[i4 % i14]) {
                    iArr3[i7] = i12;
                    i12++;
                } else {
                    iArr3[i7] = i12;
                }
                i6 = i13;
            }
        }
        this.f8374g = this.f8371d[i7];
        this.f8373f = this.f8372e[i7];
    }

    /* renamed from: b */
    public void m22239b() {
        int i = this.f8379l;
        int i2 = this.f8369b;
        if (i == i2) {
            int i3 = this.f8368a;
            if (i2 == i3) {
                int i4 = this.f8370c;
                if (i4 > 2048) {
                    this.f8379l = 0;
                    this.bufpos = 0;
                    this.f8369b = i4;
                } else if (i4 < 0) {
                    this.f8379l = 0;
                    this.bufpos = 0;
                } else {
                    m22240a(false);
                }
            } else {
                int i5 = this.f8370c;
                if (i2 > i5) {
                    this.f8369b = i3;
                } else if (i5 - i2 < 2048) {
                    m22240a(true);
                } else {
                    this.f8369b = i5;
                }
            }
        }
        try {
            Reader reader = this.f8377j;
            char[] cArr = this.f8378k;
            int i6 = this.f8379l;
            int read = reader.read(cArr, i6, this.f8369b - i6);
            if (read != -1) {
                this.f8379l += read;
            } else {
                this.f8377j.close();
                throw new IOException();
            }
        } catch (IOException e) {
            this.bufpos--;
            backup(0);
            if (this.f8370c == -1) {
                this.f8370c = this.bufpos;
            }
            throw e;
        }
    }

    public void backup(int i) {
        this.f8380m += i;
        int i2 = this.bufpos - i;
        this.bufpos = i2;
        if (i2 < 0) {
            this.bufpos = i2 + this.f8368a;
        }
    }

    /* renamed from: c */
    public void m22238c(char c) {
        this.f8373f++;
        if (this.f8376i) {
            this.f8376i = false;
            int i = this.f8374g;
            this.f8373f = 1;
            this.f8374g = i + 1;
        } else if (this.f8375h) {
            this.f8375h = false;
            if (c == '\n') {
                this.f8376i = true;
            } else {
                int i2 = this.f8374g;
                this.f8373f = 1;
                this.f8374g = i2 + 1;
            }
        }
        if (c != '\t') {
            if (c != '\n') {
                if (c == '\r') {
                    this.f8375h = true;
                }
            } else {
                this.f8376i = true;
            }
        } else {
            int i3 = this.f8373f - 1;
            this.f8373f = i3;
            int i4 = this.f8381n;
            this.f8373f = i3 + (i4 - (i3 % i4));
        }
        int[] iArr = this.f8371d;
        int i5 = this.bufpos;
        iArr[i5] = this.f8374g;
        this.f8372e[i5] = this.f8373f;
    }

    public char readChar() {
        int i = this.f8380m;
        if (i > 0) {
            this.f8380m = i - 1;
            int i2 = this.bufpos + 1;
            this.bufpos = i2;
            if (i2 == this.f8368a) {
                this.bufpos = 0;
            }
            return this.f8378k[this.bufpos];
        }
        int i3 = this.bufpos + 1;
        this.bufpos = i3;
        if (i3 >= this.f8379l) {
            m22239b();
        }
        char c = this.f8378k[this.bufpos];
        m22238c(c);
        return c;
    }

    public void ReInit(Reader reader, int i, int i2) {
        ReInit(reader, i, i2, 4096);
    }

    public void ReInit(Reader reader) {
        ReInit(reader, 1, 1, 4096);
    }

    public void ReInit(InputStream inputStream, String str, int i, int i2, int i3) {
        ReInit(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str), i, i2, i3);
    }

    public SimpleCharStream(Reader reader, int i, int i2) {
        this(reader, i, i2, 4096);
    }

    public void ReInit(InputStream inputStream, int i, int i2, int i3) {
        ReInit(new InputStreamReader(inputStream), i, i2, i3);
    }

    public SimpleCharStream(Reader reader) {
        this(reader, 1, 1, 4096);
    }

    public void ReInit(InputStream inputStream, String str) {
        ReInit(inputStream, str, 1, 1, 4096);
    }

    public SimpleCharStream(InputStream inputStream, String str, int i, int i2, int i3) {
        this(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str), i, i2, i3);
    }

    public void ReInit(InputStream inputStream) {
        ReInit(inputStream, 1, 1, 4096);
    }

    public SimpleCharStream(InputStream inputStream, int i, int i2, int i3) {
        this(new InputStreamReader(inputStream), i, i2, i3);
    }

    public void ReInit(InputStream inputStream, String str, int i, int i2) {
        ReInit(inputStream, str, i, i2, 4096);
    }

    public SimpleCharStream(InputStream inputStream, String str, int i, int i2) {
        this(inputStream, str, i, i2, 4096);
    }

    public void ReInit(InputStream inputStream, int i, int i2) {
        ReInit(inputStream, i, i2, 4096);
    }

    public SimpleCharStream(InputStream inputStream, int i, int i2) {
        this(inputStream, i, i2, 4096);
    }

    public SimpleCharStream(InputStream inputStream, String str) {
        this(inputStream, str, 1, 1, 4096);
    }

    public SimpleCharStream(InputStream inputStream) {
        this(inputStream, 1, 1, 4096);
    }
}
