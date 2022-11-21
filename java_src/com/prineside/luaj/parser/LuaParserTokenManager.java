package com.prineside.luaj.parser;

import java.io.IOException;
import java.io.PrintStream;
/* loaded from: classes2.dex */
public class LuaParserTokenManager implements LuaParserConstants {

    /* renamed from: a */
    public SimpleCharStream f8354a;

    /* renamed from: b */
    public final int[] f8355b;

    /* renamed from: c */
    public final int[] f8356c;

    /* renamed from: d */
    public final StringBuffer f8357d;
    public PrintStream debugStream;

    /* renamed from: e */
    public StringBuffer f8358e;

    /* renamed from: f */
    public int f8359f;

    /* renamed from: g */
    public char f8360g;

    /* renamed from: h */
    public int f8361h;

    /* renamed from: i */
    public int f8362i;

    /* renamed from: j */
    public int f8363j;

    /* renamed from: k */
    public int f8364k;

    /* renamed from: l */
    public int f8365l;

    /* renamed from: m */
    public int f8366m;

    /* renamed from: n */
    public static final long[] f8347n = {-2, -1, -1, -1};

    /* renamed from: o */
    public static final long[] f8348o = {0, 0, -1, -1};

    /* renamed from: p */
    public static final int[] f8349p = {62, 63, 65, 32, 49, 50, 51, 36, 37, 38, 26, 27, 29, 22, 36, 37, 38, 46, 36, 47, 37, 38, 49, 50, 51, 59, 49, 60, 50, 51, 20, 25, 23, 24, 33, 34, 39, 40, 45, 52, 53, 58, 0, 1, 3};
    public static final String[] jjstrLiteralImages = {"", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "return", "repeat", "then", "true", "until", "while", null, null, null, null, null, null, null, null, null, null, null, null, null, null, "::", null, null, null, "#", ";", "=", ",", ".", ":", "(", ")", "[", "]", "...", "{", "}", "+", "-", "*", "/", "^", "%", "..", "<", "<=", ">", ">=", "==", "~="};
    public static final String[] lexStateNames = {"DEFAULT", "IN_COMMENT", "IN_LC0", "IN_LC1", "IN_LC2", "IN_LC3", "IN_LCN", "IN_LS0", "IN_LS1", "IN_LS2", "IN_LS3", "IN_LSN"};
    public static final int[] jjnewLexState = {-1, -1, -1, -1, -1, -1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    /* renamed from: q */
    public static final long[] f8350q = {6926536226618998785L, 2147483618};

    /* renamed from: r */
    public static final long[] f8351r = {8257598, 0};

    /* renamed from: s */
    public static final long[] f8352s = {8257536, 0};

    /* renamed from: t */
    public static final long[] f8353t = {268566464, 0};

    public LuaParserTokenManager(SimpleCharStream simpleCharStream) {
        this.debugStream = System.out;
        this.f8355b = new int[66];
        this.f8356c = new int[132];
        StringBuffer stringBuffer = new StringBuffer();
        this.f8357d = stringBuffer;
        this.f8358e = stringBuffer;
        this.f8361h = 0;
        this.f8362i = 0;
        this.f8354a = simpleCharStream;
    }

    /* renamed from: d */
    public static final boolean m22265d(int i, int i2, int i3, long j, long j2) {
        return i != 0 ? (f8347n[i2] & j) != 0 : (f8348o[i3] & j2) != 0;
    }

    /* renamed from: A */
    public final int m22297A(long j) {
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != ']' || (j & 262144) == 0) {
                return 2;
            }
            return m22268b0(1, 18);
        } catch (IOException unused) {
            return 1;
        }
    }

    /* renamed from: E */
    public final int m22293E(long j) {
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != ']' || (j & 8388608) == 0) {
                return 2;
            }
            return m22268b0(1, 23);
        } catch (IOException unused) {
            return 1;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: H */
    public final int m22290H(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return m22270a0(0, j, j3);
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '.') {
                if (readChar != '=') {
                    if (readChar != '[') {
                        if (readChar != 'i') {
                            if (readChar != 'l') {
                                if (readChar != 'n') {
                                    if (readChar != 'p') {
                                        switch (readChar) {
                                            case 'c':
                                                return m22283O(j5, 2199023255552L, j6, 0L);
                                            case 'd':
                                                if ((536870912 & j5) != 0) {
                                                    return m22272Z(2, 29, 17);
                                                }
                                                if ((17179869184L & j5) != 0) {
                                                    return m22272Z(2, 34, 17);
                                                }
                                                break;
                                            case 'e':
                                                return m22283O(j5, 140738562097152L, j6, 0L);
                                            default:
                                                switch (readChar) {
                                                    case 'r':
                                                        if ((68719476736L & j5) != 0) {
                                                            return m22272Z(2, 36, 17);
                                                        }
                                                        break;
                                                    case 's':
                                                        return m22283O(j5, 12884901888L, j6, 0L);
                                                    case 't':
                                                        if ((8796093022208L & j5) != 0) {
                                                            return m22272Z(2, 43, 17);
                                                        }
                                                        return m22283O(j5, 598409203417088L, j6, 0L);
                                                    case 'u':
                                                        return m22283O(j5, 281474976710656L, j6, 0L);
                                                }
                                        }
                                    } else {
                                        return m22283O(j5, 70368744177664L, j6, 0L);
                                    }
                                } else {
                                    return m22283O(j5, 137438953472L, j6, 0L);
                                }
                            } else if ((4398046511104L & j5) != 0) {
                                return m22272Z(2, 42, 17);
                            } else {
                                return m22283O(j5, 34359738368L, j6, 0L);
                            }
                        } else {
                            return m22283O(j5, 1125899906842624L, j6, 0L);
                        }
                    } else if ((4096 & j5) != 0) {
                        return m22268b0(2, 12);
                    } else {
                        return m22283O(j5, 960L, j6, 0L);
                    }
                } else {
                    return m22283O(j5, 24576L, j6, 0L);
                }
            } else if ((32768 & j6) != 0) {
                return m22268b0(2, 79);
            }
            return m22270a0(1, j5, j6);
        } catch (IOException unused) {
            m22266c0(1, j5, j6);
            return 2;
        }
    }

    /* renamed from: I */
    public final int m22289I(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 3;
            }
            return m22282P(j3, 67108864L);
        } catch (IOException unused) {
            return 2;
        }
    }

    /* renamed from: J */
    public final int m22288J(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != ']' || (j3 & 524288) == 0) {
                return 3;
            }
            return m22268b0(2, 19);
        } catch (IOException unused) {
            return 2;
        }
    }

    /* renamed from: K */
    public final int m22287K(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 3;
            }
            return m22281Q(j3, 1048576L);
        } catch (IOException unused) {
            return 2;
        }
    }

    /* renamed from: L */
    public final int m22286L(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 3;
            }
            return m22280R(j3, 2097152L);
        } catch (IOException unused) {
            return 2;
        }
    }

    /* renamed from: M */
    public final int m22285M(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != ']' || (j3 & 16777216) == 0) {
                return 3;
            }
            return m22268b0(2, 24);
        } catch (IOException unused) {
            return 2;
        }
    }

    /* renamed from: N */
    public final int m22284N(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 3;
            }
            return m22279S(j3, 33554432L);
        } catch (IOException unused) {
            return 2;
        }
    }

    /* renamed from: O */
    public final int m22283O(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        if (((j4 & j3) | j5) == 0) {
            return m22270a0(1, j, j3);
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                if (readChar != '[') {
                    if (readChar != 'a') {
                        if (readChar != 'c') {
                            if (readChar != 'e') {
                                if (readChar != 'i') {
                                    if (readChar != 'l') {
                                        if (readChar != 's') {
                                            if (readChar != 'u') {
                                                if (readChar != 'n') {
                                                    if (readChar == 'o' && (274877906944L & j5) != 0) {
                                                        return m22272Z(3, 38, 17);
                                                    }
                                                } else if ((140737488355328L & j5) != 0) {
                                                    return m22272Z(3, 47, 17);
                                                }
                                            } else {
                                                return m22278T(j5, 35184372088832L);
                                            }
                                        } else {
                                            return m22278T(j5, 34359738368L);
                                        }
                                    } else {
                                        return m22278T(j5, 1125899906842624L);
                                    }
                                } else {
                                    return m22278T(j5, 562949953421312L);
                                }
                            } else {
                                if ((4294967296L & j5) != 0) {
                                    this.f8366m = 32;
                                    this.f8365l = 3;
                                } else if ((281474976710656L & j5) != 0) {
                                    return m22272Z(3, 48, 17);
                                }
                                return m22278T(j5, 70377334112256L);
                            }
                        } else {
                            return m22278T(j5, 137438953472L);
                        }
                    } else {
                        return m22278T(j5, 2200096997376L);
                    }
                } else if ((64 & j5) != 0) {
                    return m22268b0(3, 6);
                } else {
                    if ((8192 & j5) != 0) {
                        return m22268b0(3, 13);
                    }
                }
                return m22270a0(2, j5, 0L);
            }
            return m22278T(j5, 17280L);
        } catch (IOException unused) {
            m22266c0(2, j5, 0L);
            return 3;
        }
    }

    /* renamed from: P */
    public final int m22282P(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 3;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 4;
            }
            return m22277U(j3, 67108864L);
        } catch (IOException unused) {
            return 3;
        }
    }

    /* renamed from: Q */
    public final int m22281Q(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 3;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != ']' || (j3 & 1048576) == 0) {
                return 4;
            }
            return m22268b0(3, 20);
        } catch (IOException unused) {
            return 3;
        }
    }

    /* renamed from: R */
    public final int m22280R(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 3;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 4;
            }
            return m22276V(j3, 2097152L);
        } catch (IOException unused) {
            return 3;
        }
    }

    public void ReInit(SimpleCharStream simpleCharStream) {
        this.f8363j = 0;
        this.f8365l = 0;
        this.f8361h = this.f8362i;
        this.f8354a = simpleCharStream;
        m22271a();
    }

    /* renamed from: S */
    public final int m22279S(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 3;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != ']' || (j3 & 33554432) == 0) {
                return 4;
            }
            return m22268b0(3, 25);
        } catch (IOException unused) {
            return 3;
        }
    }

    /* renamed from: U */
    public final int m22277U(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 4;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != ']' || (j3 & 67108864) == 0) {
                return 5;
            }
            return m22268b0(4, 26);
        } catch (IOException unused) {
            return 4;
        }
    }

    /* renamed from: V */
    public final int m22276V(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 4;
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != ']' || (j3 & 2097152) == 0) {
                return 5;
            }
            return m22268b0(4, 21);
        } catch (IOException unused) {
            return 4;
        }
    }

    /* renamed from: a0 */
    public final int m22270a0(int i, long j, long j2) {
        return m22260i(m22266c0(i, j, j2), i + 1);
    }

    /* renamed from: b */
    public void m22269b(Token token) {
    }

    /* renamed from: c */
    public final void m22267c(int i, int i2) {
        while (true) {
            int[] iArr = this.f8356c;
            int i3 = this.f8363j;
            this.f8363j = i3 + 1;
            iArr[i3] = f8349p[i];
            int i4 = i + 1;
            if (i == i2) {
                return;
            }
            i = i4;
        }
    }

    /* renamed from: c0 */
    public final int m22266c0(int i, long j, long j2) {
        switch (i) {
            case 0:
                if ((j & 30720) == 0 && (j2 & 8192) == 0) {
                    if ((j2 & 16810496) != 0) {
                        return 31;
                    }
                    if ((j & 2251799276814336L) != 0) {
                        this.f8366m = 51;
                        return 17;
                    } else if ((j & 66496) == 0 && (j2 & 524288) == 0) {
                        return -1;
                    } else {
                        return 7;
                    }
                }
                return 14;
            case 1:
                if ((j & 66496) != 0) {
                    return 6;
                }
                if ((j & 28672) != 0) {
                    return 13;
                }
                if ((j & 19243600969728L) != 0) {
                    return 17;
                }
                if ((j & 2232555675844608L) == 0) {
                    return -1;
                }
                if (this.f8365l != 1) {
                    this.f8366m = 51;
                    this.f8365l = 1;
                }
                return 17;
            case 2:
                if ((j & 2219275100094464L) != 0) {
                    this.f8366m = 51;
                    this.f8365l = 2;
                    return 17;
                } else if ((j & 24576) != 0) {
                    return 12;
                } else {
                    if ((j & 960) != 0) {
                        return 5;
                    }
                    if ((j & 13280575750144L) == 0) {
                        return -1;
                    }
                    return 17;
                }
            case 3:
                if ((j & 896) != 0) {
                    return 4;
                }
                if ((j & 1796774872219648L) != 0) {
                    if (this.f8365l != 3) {
                        this.f8366m = 51;
                        this.f8365l = 3;
                    }
                    return 17;
                } else if ((j & 422500227874816L) != 0) {
                    return 17;
                } else {
                    if ((j & 16384) == 0) {
                        return -1;
                    }
                    return 9;
                }
            case 4:
                if ((j & 105699145154560L) != 0) {
                    this.f8366m = 51;
                    this.f8365l = 4;
                    return 17;
                } else if ((j & 768) != 0) {
                    return 3;
                } else {
                    if ((j & 1691084316999680L) == 0) {
                        return -1;
                    }
                    return 17;
                }
            case 5:
                if ((j & 512) != 0) {
                    return 0;
                }
                if ((j & 105561706201088L) != 0) {
                    return 17;
                }
                if ((j & 137438953472L) == 0) {
                    return -1;
                }
                this.f8366m = 51;
                this.f8365l = 5;
                return 17;
            case 6:
                if ((j & 137438953472L) == 0) {
                    return -1;
                }
                this.f8366m = 51;
                this.f8365l = 6;
                return 17;
            default:
                return -1;
        }
    }

    /* renamed from: f */
    public final void m22263f(int i, int i2) {
        while (true) {
            m22264e(f8349p[i]);
            int i3 = i + 1;
            if (i == i2) {
                return;
            }
            i = i3;
        }
    }

    /* renamed from: k */
    public final int m22258k(int i, int i2) {
        this.f8363j = 7;
        this.f8356c[0] = i;
        int i3 = 1;
        int i4 = 0;
        int i5 = Integer.MAX_VALUE;
        while (true) {
            int i6 = this.f8364k + 1;
            this.f8364k = i6;
            if (i6 == Integer.MAX_VALUE) {
                m22271a();
            }
            char c = this.f8360g;
            if (c < '@') {
                do {
                    int[] iArr = this.f8356c;
                    i3--;
                    int i7 = iArr[i3];
                    if (i7 != 0 && i7 != 1) {
                        if (i7 != 3) {
                            if (i7 != 4) {
                                if (i7 == 5 && this.f8360g == '=') {
                                    int i8 = this.f8363j;
                                    this.f8363j = i8 + 1;
                                    iArr[i8] = 4;
                                    continue;
                                }
                            } else if (this.f8360g == '=') {
                                int i9 = this.f8363j;
                                this.f8363j = i9 + 1;
                                iArr[i9] = 3;
                                continue;
                            } else {
                                continue;
                            }
                        } else if (this.f8360g == '=') {
                            int i10 = this.f8363j;
                            this.f8363j = i10 + 1;
                            iArr[i10] = 0;
                            continue;
                        } else {
                            continue;
                        }
                    } else if (this.f8360g == '=') {
                        m22262g(1, 2);
                        continue;
                    } else {
                        continue;
                    }
                } while (i3 != i4);
            } else if (c < 128) {
                do {
                    int[] iArr2 = this.f8356c;
                    i3--;
                    int i11 = iArr2[i3];
                    if (i11 != 2) {
                        if (i11 == 6 && this.f8360g == ']') {
                            int i12 = this.f8363j;
                            this.f8363j = i12 + 1;
                            iArr2[i12] = 5;
                            continue;
                        }
                    } else if (this.f8360g == ']' && i5 > 27) {
                        i5 = 27;
                        continue;
                    }
                } while (i3 != i4);
            } else {
                do {
                    i3--;
                    int i13 = this.f8356c[i3];
                } while (i3 != i4);
            }
            if (i5 != Integer.MAX_VALUE) {
                this.f8366m = i5;
                this.f8365l = i2;
                i5 = Integer.MAX_VALUE;
            }
            i2++;
            i3 = this.f8363j;
            this.f8363j = i4;
            i4 = 7 - i4;
            if (i3 == i4) {
                return i2;
            }
            try {
                this.f8360g = this.f8354a.readChar();
            } catch (IOException unused) {
                return i2;
            }
        }
    }

    /* renamed from: l */
    public final int m22257l(int i, int i2) {
        this.f8363j = 7;
        this.f8356c[0] = i;
        int i3 = 1;
        int i4 = 0;
        int i5 = Integer.MAX_VALUE;
        while (true) {
            int i6 = this.f8364k + 1;
            this.f8364k = i6;
            if (i6 == Integer.MAX_VALUE) {
                m22271a();
            }
            char c = this.f8360g;
            if (c < '@') {
                do {
                    int[] iArr = this.f8356c;
                    i3--;
                    int i7 = iArr[i3];
                    if (i7 != 0 && i7 != 1) {
                        if (i7 != 3) {
                            if (i7 != 4) {
                                if (i7 == 5 && this.f8360g == '=') {
                                    int i8 = this.f8363j;
                                    this.f8363j = i8 + 1;
                                    iArr[i8] = 4;
                                    continue;
                                }
                            } else if (this.f8360g == '=') {
                                int i9 = this.f8363j;
                                this.f8363j = i9 + 1;
                                iArr[i9] = 3;
                                continue;
                            } else {
                                continue;
                            }
                        } else if (this.f8360g == '=') {
                            int i10 = this.f8363j;
                            this.f8363j = i10 + 1;
                            iArr[i10] = 0;
                            continue;
                        } else {
                            continue;
                        }
                    } else if (this.f8360g == '=') {
                        m22262g(1, 2);
                        continue;
                    } else {
                        continue;
                    }
                } while (i3 != i4);
            } else if (c < 128) {
                do {
                    int[] iArr2 = this.f8356c;
                    i3--;
                    int i11 = iArr2[i3];
                    if (i11 != 2) {
                        if (i11 == 6 && this.f8360g == ']') {
                            int i12 = this.f8363j;
                            this.f8363j = i12 + 1;
                            iArr2[i12] = 5;
                            continue;
                        }
                    } else if (this.f8360g == ']' && i5 > 22) {
                        i5 = 22;
                        continue;
                    }
                } while (i3 != i4);
            } else {
                do {
                    i3--;
                    int i13 = this.f8356c[i3];
                } while (i3 != i4);
            }
            if (i5 != Integer.MAX_VALUE) {
                this.f8366m = i5;
                this.f8365l = i2;
                i5 = Integer.MAX_VALUE;
            }
            i2++;
            i3 = this.f8363j;
            this.f8363j = i4;
            i4 = 7 - i4;
            if (i3 == i4) {
                return i2;
            }
            try {
                this.f8360g = this.f8354a.readChar();
            } catch (IOException unused) {
                return i2;
            }
        }
    }

    /* renamed from: n */
    public final int m22255n() {
        return m22259j(4, 0);
    }

    /* renamed from: p */
    public final int m22253p() {
        return m22258k(6, 0);
    }

    public void setDebugStream(PrintStream printStream) {
        this.debugStream = printStream;
    }

    /* renamed from: u */
    public final int m22248u() {
        return m22257l(6, 0);
    }

    /* renamed from: y */
    public final int m22244y(long j, long j2) {
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '-') {
                if (readChar != '.') {
                    if (readChar != ':') {
                        if (readChar != '=') {
                            if (readChar != '[') {
                                if (readChar != 'a') {
                                    if (readChar != 'l') {
                                        if (readChar != 'r') {
                                            if (readChar != 'u') {
                                                if (readChar != 'e') {
                                                    if (readChar != 'f') {
                                                        if (readChar != 'h') {
                                                            if (readChar != 'i') {
                                                                if (readChar != 'n') {
                                                                    if (readChar == 'o') {
                                                                        if ((2147483648L & j) != 0) {
                                                                            return m22272Z(1, 31, 17);
                                                                        }
                                                                        return m22290H(j, 11338713661440L, j2, 0L);
                                                                    }
                                                                } else if ((1099511627776L & j) != 0) {
                                                                    return m22272Z(1, 40, 17);
                                                                } else {
                                                                    return m22290H(j, 562967670161408L, j2, 0L);
                                                                }
                                                            } else {
                                                                return m22290H(j, 4398046511104L, j2, 0L);
                                                            }
                                                        } else {
                                                            return m22290H(j, 1266637395197952L, j2, 0L);
                                                        }
                                                    } else if ((549755813888L & j) != 0) {
                                                        return m22272Z(1, 39, 17);
                                                    }
                                                } else {
                                                    return m22290H(j, 105553116266496L, j2, 0L);
                                                }
                                            } else {
                                                return m22290H(j, 137438953472L, j2, 0L);
                                            }
                                        } else if ((17592186044416L & j) != 0) {
                                            return m22272Z(1, 44, 17);
                                        } else {
                                            return m22290H(j, 281476050452480L, j2, 0L);
                                        }
                                    } else {
                                        return m22290H(j, 12884901888L, j2, 0L);
                                    }
                                } else {
                                    return m22290H(j, 34359738368L, j2, 0L);
                                }
                            } else if ((2048 & j) != 0) {
                                return m22268b0(1, 11);
                            }
                        } else if ((67108864 & j2) != 0) {
                            return m22268b0(1, 90);
                        } else {
                            if ((268435456 & j2) != 0) {
                                return m22268b0(1, 92);
                            }
                            if ((536870912 & j2) != 0) {
                                return m22268b0(1, 93);
                            }
                            if ((1073741824 & j2) != 0) {
                                return m22268b0(1, 94);
                            }
                            return m22290H(j, 28672L, j2, 0L);
                        }
                    } else if ((2 & j2) != 0) {
                        return m22268b0(1, 65);
                    }
                    return m22270a0(0, j, j2);
                }
                if ((16777216 & j2) != 0) {
                    this.f8366m = 88;
                    this.f8365l = 1;
                }
                return m22290H(j, 0L, j2, 32768L);
            }
            if ((65536 & j) != 0) {
                this.f8366m = 16;
                this.f8365l = 1;
            }
            return m22290H(j, 960L, j2, 0L);
        } catch (IOException unused) {
            m22266c0(0, j, j2);
            return 1;
        }
    }

    /* renamed from: B */
    public final int m22296B(long j) {
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 2;
            }
            return m22288J(j, 524288L);
        } catch (IOException unused) {
            return 1;
        }
    }

    /* renamed from: C */
    public final int m22295C(long j) {
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 2;
            }
            return m22287K(j, 1048576L);
        } catch (IOException unused) {
            return 1;
        }
    }

    /* renamed from: D */
    public final int m22294D(long j) {
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 2;
            }
            return m22286L(j, 2097152L);
        } catch (IOException unused) {
            return 1;
        }
    }

    /* renamed from: F */
    public final int m22292F(long j) {
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 2;
            }
            return m22285M(j, 16777216L);
        } catch (IOException unused) {
            return 1;
        }
    }

    /* renamed from: G */
    public final int m22291G(long j) {
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 2;
            }
            return m22284N(j, 33554432L);
        } catch (IOException unused) {
            return 1;
        }
    }

    public void SwitchTo(int i) {
        if (i < 12 && i >= 0) {
            this.f8361h = i;
            return;
        }
        throw new TokenMgrError("Error: Ignoring invalid lexical state : " + i + ". State unchanged.", 2);
    }

    /* renamed from: T */
    public final int m22278T(long j, long j2) {
        long j3 = j2 & j;
        if (j3 == 0) {
            return m22270a0(2, j, 0L);
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                if (readChar != '[') {
                    if (readChar != 'a') {
                        if (readChar != 'e') {
                            if (readChar != 'i') {
                                if (readChar != 'r') {
                                    if (readChar != 't') {
                                        if (readChar != 'k') {
                                            if (readChar == 'l') {
                                                if ((2199023255552L & j3) != 0) {
                                                    return m22272Z(4, 41, 17);
                                                }
                                                if ((562949953421312L & j3) != 0) {
                                                    return m22272Z(4, 49, 17);
                                                }
                                            }
                                        } else if ((1073741824 & j3) != 0) {
                                            return m22272Z(4, 30, 17);
                                        }
                                    } else {
                                        return m22275W(j3, 137438953472L);
                                    }
                                } else {
                                    return m22275W(j3, 35184372088832L);
                                }
                            } else {
                                return m22275W(j3, 8589934592L);
                            }
                        } else if ((34359738368L & j3) != 0) {
                            return m22272Z(4, 35, 17);
                        } else {
                            if ((1125899906842624L & j3) != 0) {
                                return m22272Z(4, 50, 17);
                            }
                        }
                    } else {
                        return m22275W(j3, 70368744177664L);
                    }
                } else if ((128 & j3) != 0) {
                    return m22268b0(4, 7);
                } else {
                    if ((16384 & j3) != 0) {
                        return m22268b0(4, 14);
                    }
                }
                return m22270a0(3, j3, 0L);
            }
            return m22275W(j3, 768L);
        } catch (IOException unused) {
            m22266c0(3, j3, 0L);
            return 4;
        }
    }

    /* renamed from: W */
    public final int m22275W(long j, long j2) {
        long j3 = j2 & j;
        if (j3 == 0) {
            return m22270a0(3, j, 0L);
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                if (readChar != '[') {
                    if (readChar != 'f') {
                        if (readChar != 'i') {
                            if (readChar != 'n') {
                                if (readChar == 't' && (70368744177664L & j3) != 0) {
                                    return m22272Z(5, 46, 17);
                                }
                            } else if ((35184372088832L & j3) != 0) {
                                return m22272Z(5, 45, 17);
                            }
                        } else {
                            return m22274X(j3, 137438953472L);
                        }
                    } else if ((8589934592L & j3) != 0) {
                        return m22272Z(5, 33, 17);
                    }
                } else if ((256 & j3) != 0) {
                    return m22268b0(5, 8);
                }
                return m22270a0(4, j3, 0L);
            }
            return m22274X(j3, 512L);
        } catch (IOException unused) {
            m22266c0(4, j3, 0L);
            return 5;
        }
    }

    /* renamed from: X */
    public final int m22274X(long j, long j2) {
        long j3 = j2 & j;
        if (j3 == 0) {
            return m22270a0(4, j, 0L);
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '[') {
                if (readChar == 'o') {
                    return m22273Y(j3, 137438953472L);
                }
            } else if ((512 & j3) != 0) {
                return m22268b0(6, 9);
            }
            return m22270a0(5, j3, 0L);
        } catch (IOException unused) {
            m22266c0(5, j3, 0L);
            return 6;
        }
    }

    /* renamed from: Y */
    public final int m22273Y(long j, long j2) {
        long j3 = j2 & j;
        if (j3 == 0) {
            return m22270a0(5, j, 0L);
        }
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar == 'n' && (137438953472L & j3) != 0) {
                return m22272Z(7, 37, 17);
            }
            return m22270a0(6, j3, 0L);
        } catch (IOException unused) {
            m22266c0(6, j3, 0L);
            return 7;
        }
    }

    /* renamed from: Z */
    public final int m22272Z(int i, int i2, int i3) {
        this.f8366m = i2;
        this.f8365l = i;
        try {
            this.f8360g = this.f8354a.readChar();
            return m22260i(i3, i + 1);
        } catch (IOException unused) {
            return i + 1;
        }
    }

    /* renamed from: b0 */
    public final int m22268b0(int i, int i2) {
        this.f8366m = i2;
        this.f8365l = i;
        return i + 1;
    }

    /* renamed from: e */
    public final void m22264e(int i) {
        int[] iArr = this.f8355b;
        int i2 = iArr[i];
        int i3 = this.f8364k;
        if (i2 != i3) {
            int[] iArr2 = this.f8356c;
            int i4 = this.f8363j;
            this.f8363j = i4 + 1;
            iArr2[i4] = i;
            iArr[i] = i3;
        }
    }

    public Token getNextToken() {
        int i;
        boolean z;
        int i2;
        String str;
        String str2 = "";
        String str3 = null;
        Token token = null;
        int i3 = 0;
        while (true) {
            try {
                this.f8360g = this.f8354a.BeginToken();
                StringBuffer stringBuffer = this.f8357d;
                this.f8358e = stringBuffer;
                stringBuffer.setLength(0);
                this.f8359f = 0;
                while (true) {
                    switch (this.f8361h) {
                        case 0:
                            try {
                                this.f8354a.backup(0);
                                while (true) {
                                    char c = this.f8360g;
                                    if (c <= ' ' && (4294981120L & (1 << c)) != 0) {
                                        this.f8360g = this.f8354a.BeginToken();
                                    }
                                }
                                this.f8366m = Integer.MAX_VALUE;
                                this.f8365l = 0;
                                i3 = m22256m();
                                break;
                            } catch (IOException unused) {
                                continue;
                            }
                            break;
                        case 1:
                            this.f8366m = 17;
                            this.f8365l = -1;
                            i3 = m22255n();
                            break;
                        case 2:
                            this.f8366m = Integer.MAX_VALUE;
                            this.f8365l = 0;
                            i3 = m22252q();
                            if (this.f8365l == 0 && this.f8366m > 28) {
                                this.f8366m = 28;
                                break;
                            }
                            break;
                        case 3:
                            this.f8366m = Integer.MAX_VALUE;
                            this.f8365l = 0;
                            i3 = m22251r();
                            if (this.f8365l == 0 && this.f8366m > 28) {
                                this.f8366m = 28;
                                break;
                            }
                            break;
                        case 4:
                            this.f8366m = Integer.MAX_VALUE;
                            this.f8365l = 0;
                            i3 = m22250s();
                            if (this.f8365l == 0 && this.f8366m > 28) {
                                this.f8366m = 28;
                                break;
                            }
                            break;
                        case 5:
                            this.f8366m = Integer.MAX_VALUE;
                            this.f8365l = 0;
                            i3 = m22249t();
                            if (this.f8365l == 0 && this.f8366m > 28) {
                                this.f8366m = 28;
                                break;
                            }
                            break;
                        case 6:
                            this.f8366m = Integer.MAX_VALUE;
                            this.f8365l = 0;
                            i3 = m22248u();
                            if (this.f8365l == 0 && this.f8366m > 28) {
                                this.f8366m = 28;
                                break;
                            }
                            break;
                        case 7:
                            this.f8366m = Integer.MAX_VALUE;
                            this.f8365l = 0;
                            i3 = m22247v();
                            if (this.f8365l == 0 && this.f8366m > 28) {
                                this.f8366m = 28;
                                break;
                            }
                            break;
                        case 8:
                            this.f8366m = Integer.MAX_VALUE;
                            this.f8365l = 0;
                            i3 = m22246w();
                            if (this.f8365l == 0 && this.f8366m > 28) {
                                this.f8366m = 28;
                                break;
                            }
                            break;
                        case 9:
                            this.f8366m = Integer.MAX_VALUE;
                            this.f8365l = 0;
                            i3 = m22245x();
                            if (this.f8365l == 0 && this.f8366m > 28) {
                                this.f8366m = 28;
                                break;
                            }
                            break;
                        case 10:
                            this.f8366m = Integer.MAX_VALUE;
                            this.f8365l = 0;
                            i3 = m22254o();
                            if (this.f8365l == 0 && this.f8366m > 28) {
                                this.f8366m = 28;
                                break;
                            }
                            break;
                        case 11:
                            this.f8366m = Integer.MAX_VALUE;
                            this.f8365l = 0;
                            i3 = m22253p();
                            if (this.f8365l == 0 && this.f8366m > 28) {
                                this.f8366m = 28;
                                break;
                            }
                            break;
                    }
                    if (this.f8366m != Integer.MAX_VALUE) {
                        int i4 = this.f8365l;
                        if (i4 + 1 < i3) {
                            this.f8354a.backup((i3 - i4) - 1);
                        }
                        long[] jArr = f8350q;
                        int i5 = this.f8366m;
                        if ((jArr[i5 >> 6] & (1 << (i5 & 63))) != 0) {
                            Token m22261h = m22261h();
                            m22261h.specialToken = token;
                            int i6 = jjnewLexState[this.f8366m];
                            if (i6 != -1) {
                                this.f8361h = i6;
                            }
                            return m22261h;
                        } else if ((f8351r[i5 >> 6] & (1 << (i5 & 63))) != 0) {
                            if (((1 << (i5 & 63)) & f8352s[i5 >> 6]) != 0) {
                                Token m22261h2 = m22261h();
                                if (token != null) {
                                    m22261h2.specialToken = token;
                                    token.next = m22261h2;
                                }
                                m22269b(m22261h2);
                                token = m22261h2;
                            } else {
                                m22269b(null);
                            }
                            int i7 = jjnewLexState[this.f8366m];
                            if (i7 != -1) {
                                this.f8361h = i7;
                            }
                        } else {
                            this.f8359f += this.f8365l + 1;
                            int i8 = jjnewLexState[i5];
                            if (i8 != -1) {
                                this.f8361h = i8;
                            }
                            this.f8366m = Integer.MAX_VALUE;
                            try {
                                this.f8360g = this.f8354a.readChar();
                                i3 = 0;
                            } catch (IOException unused2) {
                                i3 = 0;
                                int endLine = this.f8354a.getEndLine();
                                int endColumn = this.f8354a.getEndColumn();
                                try {
                                    this.f8354a.readChar();
                                    this.f8354a.backup(1);
                                    i = endLine;
                                    i2 = endColumn;
                                    z = false;
                                } catch (IOException unused3) {
                                    if (i3 <= 1) {
                                        str3 = "";
                                    } else {
                                        str3 = this.f8354a.GetImage();
                                    }
                                    char c2 = this.f8360g;
                                    if (c2 != '\n' && c2 != '\r') {
                                        i2 = endColumn + 1;
                                        i = endLine;
                                        z = true;
                                    } else {
                                        i = endLine + 1;
                                        z = true;
                                        i2 = 0;
                                    }
                                }
                                if (!z) {
                                    this.f8354a.backup(1);
                                    if (i3 > 1) {
                                        str2 = this.f8354a.GetImage();
                                    }
                                    str = str2;
                                } else {
                                    str = str3;
                                }
                                throw new TokenMgrError(z, this.f8361h, i, i2, str, this.f8360g, 0);
                            }
                        }
                    }
                }
            } catch (IOException unused4) {
                this.f8366m = 0;
                Token m22261h3 = m22261h();
                m22261h3.specialToken = token;
                return m22261h3;
            }
        }
    }

    /* renamed from: h */
    public Token m22261h() {
        String str;
        int beginLine;
        int beginColumn;
        int endLine;
        int endColumn;
        if (this.f8365l < 0) {
            StringBuffer stringBuffer = this.f8358e;
            if (stringBuffer == null) {
                str = "";
            } else {
                str = stringBuffer.toString();
            }
            beginLine = this.f8354a.getBeginLine();
            beginColumn = this.f8354a.getBeginColumn();
            endLine = beginLine;
            endColumn = beginColumn;
        } else {
            str = jjstrLiteralImages[this.f8366m];
            if (str == null) {
                str = this.f8354a.GetImage();
            }
            beginLine = this.f8354a.getBeginLine();
            beginColumn = this.f8354a.getBeginColumn();
            endLine = this.f8354a.getEndLine();
            endColumn = this.f8354a.getEndColumn();
        }
        Token newToken = Token.newToken(this.f8366m, str);
        newToken.beginLine = beginLine;
        newToken.endLine = endLine;
        newToken.beginColumn = beginColumn;
        newToken.endColumn = endColumn;
        return newToken;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x062a, code lost:
        if (r8 != 52) goto L377;
     */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0607 A[LOOP:2: B:224:0x039c->B:376:0x0607, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0684 A[LOOP:3: B:378:0x0618->B:403:0x0684, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0660 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0660 A[SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m22260i(int r33, int r34) {
        /*
            Method dump skipped, instructions count: 1852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.parser.LuaParserTokenManager.m22260i(int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0086, code lost:
        if (r7 > 17) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008f, code lost:
        if (r7 > 17) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a1 A[LOOP:1: B:9:0x002f->B:49:0x00a1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00f1 A[EDGE_INSN: B:83:0x00f1->B:71:0x00f1 ?: BREAK  , SYNTHETIC] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m22259j(int r29, int r30) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.parser.LuaParserTokenManager.m22259j(int, int):int");
    }

    /* renamed from: m */
    public final int m22256m() {
        char c = this.f8360g;
        if (c != '#') {
            if (c != '%') {
                if (c != '[') {
                    if (c != 'i') {
                        if (c != 'l') {
                            if (c != 'r') {
                                if (c != 'w') {
                                    if (c != '{') {
                                        if (c != ']') {
                                            if (c != '^') {
                                                if (c != 'a') {
                                                    if (c != 'b') {
                                                        if (c != 'n') {
                                                            if (c != 'o') {
                                                                if (c != 't') {
                                                                    if (c != 'u') {
                                                                        if (c != '}') {
                                                                            if (c != '~') {
                                                                                switch (c) {
                                                                                    case '(':
                                                                                        return m22268b0(0, 75);
                                                                                    case ')':
                                                                                        return m22268b0(0, 76);
                                                                                    case '*':
                                                                                        return m22268b0(0, 84);
                                                                                    case '+':
                                                                                        return m22268b0(0, 82);
                                                                                    case ',':
                                                                                        return m22268b0(0, 72);
                                                                                    case '-':
                                                                                        this.f8366m = 83;
                                                                                        return m22244y(66496L, 0L);
                                                                                    case '.':
                                                                                        this.f8366m = 73;
                                                                                        return m22244y(0L, 16809984L);
                                                                                    case '/':
                                                                                        return m22268b0(0, 85);
                                                                                    default:
                                                                                        switch (c) {
                                                                                            case ':':
                                                                                                this.f8366m = 74;
                                                                                                return m22244y(0L, 2L);
                                                                                            case ';':
                                                                                                return m22268b0(0, 70);
                                                                                            case '<':
                                                                                                this.f8366m = 89;
                                                                                                return m22244y(0L, 67108864L);
                                                                                            case '=':
                                                                                                this.f8366m = 71;
                                                                                                return m22244y(0L, 536870912L);
                                                                                            case '>':
                                                                                                this.f8366m = 91;
                                                                                                return m22244y(0L, 268435456L);
                                                                                            default:
                                                                                                switch (c) {
                                                                                                    case 'd':
                                                                                                        return m22244y(2147483648L, 0L);
                                                                                                    case 'e':
                                                                                                        return m22244y(30064771072L, 0L);
                                                                                                    case 'f':
                                                                                                        return m22244y(240518168576L, 0L);
                                                                                                    case 'g':
                                                                                                        return m22244y(274877906944L, 0L);
                                                                                                    default:
                                                                                                        return m22260i(8, 0);
                                                                                                }
                                                                                        }
                                                                                }
                                                                            }
                                                                            return m22244y(0L, 1073741824L);
                                                                        }
                                                                        return m22268b0(0, 81);
                                                                    }
                                                                    return m22244y(562949953421312L, 0L);
                                                                }
                                                                return m22244y(422212465065984L, 0L);
                                                            }
                                                            return m22244y(17592186044416L, 0L);
                                                        }
                                                        return m22244y(13194139533312L, 0L);
                                                    }
                                                    return m22244y(1073741824L, 0L);
                                                }
                                                return m22244y(536870912L, 0L);
                                            }
                                            return m22268b0(0, 86);
                                        }
                                        return m22268b0(0, 78);
                                    }
                                    return m22268b0(0, 80);
                                }
                                return m22244y(1125899906842624L, 0L);
                            }
                            return m22244y(105553116266496L, 0L);
                        }
                        return m22244y(2199023255552L, 0L);
                    }
                    return m22244y(1649267441664L, 0L);
                }
                this.f8366m = 77;
                return m22244y(30720L, 0L);
            }
            return m22268b0(0, 87);
        }
        return m22268b0(0, 69);
    }

    /* renamed from: o */
    public final int m22254o() {
        if (this.f8360g != ']') {
            return 1;
        }
        return m22243z(67108864L);
    }

    /* renamed from: q */
    public final int m22252q() {
        if (this.f8360g != ']') {
            return 1;
        }
        return m22297A(262144L);
    }

    /* renamed from: r */
    public final int m22251r() {
        if (this.f8360g != ']') {
            return 1;
        }
        return m22296B(524288L);
    }

    /* renamed from: s */
    public final int m22250s() {
        if (this.f8360g != ']') {
            return 1;
        }
        return m22295C(1048576L);
    }

    /* renamed from: t */
    public final int m22249t() {
        if (this.f8360g != ']') {
            return 1;
        }
        return m22294D(2097152L);
    }

    /* renamed from: v */
    public final int m22247v() {
        if (this.f8360g != ']') {
            return 1;
        }
        return m22293E(8388608L);
    }

    /* renamed from: w */
    public final int m22246w() {
        if (this.f8360g != ']') {
            return 1;
        }
        return m22292F(16777216L);
    }

    /* renamed from: x */
    public final int m22245x() {
        if (this.f8360g != ']') {
            return 1;
        }
        return m22291G(33554432L);
    }

    /* renamed from: z */
    public final int m22243z(long j) {
        try {
            char readChar = this.f8354a.readChar();
            this.f8360g = readChar;
            if (readChar != '=') {
                return 2;
            }
            return m22289I(j, 67108864L);
        } catch (IOException unused) {
            return 1;
        }
    }

    /* renamed from: a */
    public final void m22271a() {
        this.f8364k = -2147483647;
        int i = 66;
        while (true) {
            int i2 = i - 1;
            if (i > 0) {
                this.f8355b[i2] = Integer.MIN_VALUE;
                i = i2;
            } else {
                return;
            }
        }
    }

    /* renamed from: g */
    public final void m22262g(int i, int i2) {
        m22264e(i);
        m22264e(i2);
    }

    public void ReInit(SimpleCharStream simpleCharStream, int i) {
        ReInit(simpleCharStream);
        SwitchTo(i);
    }

    public LuaParserTokenManager(SimpleCharStream simpleCharStream, int i) {
        this(simpleCharStream);
        SwitchTo(i);
    }
}
