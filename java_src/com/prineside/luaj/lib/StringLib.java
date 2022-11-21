package com.prineside.luaj.lib;

import com.badlogic.gdx.net.HttpStatus;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.Buffer;
import com.prineside.luaj.LuaClosure;
import com.prineside.luaj.LuaFunction;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.luaj.compiler.DumpState;
import com.prineside.tdi2.utils.REGS;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
@REGS
/* loaded from: classes2.dex */
public class StringLib extends TwoArgFunction {

    /* renamed from: x */
    public static final LuaString f8247x = LuaValue.valueOf("^$*+?.([%-");

    /* renamed from: y */
    public static final byte[] f8248y = new byte[256];

    /* loaded from: classes2.dex */
    public static class FormatDesc {

        /* renamed from: a */
        public boolean f8249a;

        /* renamed from: b */
        public boolean f8250b;

        /* renamed from: c */
        public boolean f8251c;
        public final int conversion;

        /* renamed from: d */
        public boolean f8252d;

        /* renamed from: e */
        public boolean f8253e;

        /* renamed from: f */
        public int f8254f;

        /* renamed from: g */
        public int f8255g;

        /* renamed from: h */
        public StringLib f8256h;
        public final int length;
        public final String src;

        public void format(Buffer buffer, byte b) {
            buffer.append(b);
        }

        public final void pad(Buffer buffer, char c, int i) {
            byte b = (byte) c;
            while (true) {
                int i2 = i - 1;
                if (i <= 0) {
                    return;
                }
                buffer.append(b);
                i = i2;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void format(com.prineside.luaj.Buffer r9, long r10) {
            /*
                r8 = this;
                r0 = 0
                int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r2 != 0) goto Ld
                int r2 = r8.f8255g
                if (r2 != 0) goto Ld
                java.lang.String r2 = ""
                goto L2f
            Ld:
                int r2 = r8.conversion
                r3 = 88
                if (r2 == r3) goto L21
                r4 = 111(0x6f, float:1.56E-43)
                if (r2 == r4) goto L1e
                r4 = 120(0x78, float:1.68E-43)
                if (r2 == r4) goto L21
                r2 = 10
                goto L23
            L1e:
                r2 = 8
                goto L23
            L21:
                r2 = 16
            L23:
                java.lang.String r2 = java.lang.Long.toString(r10, r2)
                int r4 = r8.conversion
                if (r4 != r3) goto L2f
                java.lang.String r2 = r2.toUpperCase()
            L2f:
                int r3 = r2.length()
                int r4 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r4 >= 0) goto L3d
                int r4 = r3 + (-1)
                r7 = r4
                r4 = r3
                r3 = r7
                goto L4a
            L3d:
                boolean r4 = r8.f8251c
                if (r4 != 0) goto L48
                boolean r4 = r8.f8252d
                if (r4 == 0) goto L46
                goto L48
            L46:
                r4 = r3
                goto L4a
            L48:
                int r4 = r3 + 1
            L4a:
                int r5 = r8.f8255g
                r6 = 0
                if (r5 <= r3) goto L51
                int r5 = r5 - r3
                goto L60
            L51:
                r3 = -1
                if (r5 != r3) goto L5f
                boolean r3 = r8.f8250b
                if (r3 == 0) goto L5f
                int r3 = r8.f8254f
                if (r3 <= r4) goto L5f
                int r5 = r3 - r4
                goto L60
            L5f:
                r5 = 0
            L60:
                int r4 = r4 + r5
                int r3 = r8.f8254f
                if (r3 <= r4) goto L67
                int r6 = r3 - r4
            L67:
                boolean r3 = r8.f8249a
                r4 = 32
                if (r3 != 0) goto L70
                r8.pad(r9, r4, r6)
            L70:
                int r3 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r3 >= 0) goto L81
                if (r5 <= 0) goto L92
                r10 = 45
                r9.append(r10)
                r10 = 1
                java.lang.String r2 = r2.substring(r10)
                goto L92
            L81:
                boolean r10 = r8.f8251c
                if (r10 == 0) goto L8b
                r10 = 43
                r9.append(r10)
                goto L92
            L8b:
                boolean r10 = r8.f8252d
                if (r10 == 0) goto L92
                r9.append(r4)
            L92:
                if (r5 <= 0) goto L99
                r10 = 48
                r8.pad(r9, r10, r5)
            L99:
                r9.append(r2)
                boolean r10 = r8.f8249a
                if (r10 == 0) goto La3
                r8.pad(r9, r4, r6)
            La3:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.lib.StringLib.FormatDesc.format(com.prineside.luaj.Buffer, long):void");
        }

        public FormatDesc(Varargs varargs, LuaString luaString, int i, StringLib stringLib) {
            this.f8256h = stringLib;
            int length = luaString.length();
            int i2 = 0;
            int i3 = i;
            boolean z = true;
            int i4 = 0;
            while (z) {
                if (i3 < length) {
                    i4 = luaString.luaByte(i3);
                    i3++;
                } else {
                    i4 = 0;
                }
                if (i4 != 32) {
                    if (i4 != 35) {
                        if (i4 != 43) {
                            if (i4 != 45) {
                                if (i4 != 48) {
                                    z = false;
                                } else {
                                    this.f8250b = true;
                                }
                            } else {
                                this.f8249a = true;
                            }
                        } else {
                            this.f8251c = true;
                        }
                    } else {
                        this.f8253e = true;
                    }
                } else {
                    this.f8252d = true;
                }
            }
            if (i3 - i > 5) {
                LuaValue.error("invalid format (repeated flags)");
            }
            this.f8254f = -1;
            if (Character.isDigit((char) i4)) {
                this.f8254f = i4 - 48;
                if (i3 < length) {
                    i4 = luaString.luaByte(i3);
                    i3++;
                } else {
                    i4 = 0;
                }
                if (Character.isDigit((char) i4)) {
                    this.f8254f = (this.f8254f * 10) + (i4 - 48);
                    if (i3 < length) {
                        i4 = luaString.luaByte(i3);
                        i3++;
                    } else {
                        i4 = 0;
                    }
                }
            }
            this.f8255g = -1;
            if (i4 == 46) {
                if (i3 < length) {
                    i4 = luaString.luaByte(i3);
                    i3++;
                } else {
                    i4 = 0;
                }
                if (Character.isDigit((char) i4)) {
                    this.f8255g = i4 - 48;
                    if (i3 < length) {
                        i4 = luaString.luaByte(i3);
                        i3++;
                    } else {
                        i4 = 0;
                    }
                    if (Character.isDigit((char) i4)) {
                        this.f8255g = (this.f8255g * 10) + (i4 - 48);
                        if (i3 < length) {
                            i2 = luaString.luaByte(i3);
                            i3++;
                        }
                        i4 = i2;
                    }
                }
            }
            if (Character.isDigit((char) i4)) {
                LuaValue.error("invalid format (width or precision too long)");
            }
            this.f8250b &= !this.f8249a;
            this.conversion = i4;
            this.length = i3 - i;
            this.src = luaString.substring(i - 1, i3).tojstring();
        }

        public void format(Buffer buffer, double d) {
            buffer.append(this.f8256h.mo22390t(this.src, d));
        }

        public void format(Buffer buffer, LuaString luaString) {
            int indexOf = luaString.indexOf((byte) 0, 0);
            if (indexOf != -1) {
                luaString = luaString.substring(0, indexOf);
            }
            buffer.append(luaString);
        }
    }

    /* loaded from: classes2.dex */
    public static class GMatchAux extends VarArgFunction {

        /* renamed from: x */
        public final int f8258x;

        /* renamed from: y */
        public final MatchState f8259y;

        /* renamed from: z */
        public int f8260z = 0;

        /* renamed from: A */
        public int f8257A = -1;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            while (this.f8260z <= this.f8258x) {
                this.f8259y.m22431o();
                int m22440f = this.f8259y.m22440f(this.f8260z, 0);
                if (m22440f >= 0 && m22440f != this.f8257A) {
                    int i = this.f8260z;
                    this.f8260z = m22440f;
                    this.f8257A = m22440f;
                    return this.f8259y.m22433m(true, i, m22440f);
                }
                this.f8260z++;
            }
            return LuaValue.NIL;
        }

        public GMatchAux(Varargs varargs, LuaString luaString, LuaString luaString2) {
            this.f8258x = luaString.length();
            this.f8259y = new MatchState(varargs, luaString, luaString2);
        }
    }

    /* loaded from: classes2.dex */
    public static class MatchState {

        /* renamed from: b */
        public final LuaString f8262b;

        /* renamed from: c */
        public final LuaString f8263c;

        /* renamed from: d */
        public final Varargs f8264d;

        /* renamed from: e */
        public int f8265e = 0;

        /* renamed from: f */
        public int[] f8266f = new int[32];

        /* renamed from: g */
        public int[] f8267g = new int[32];

        /* renamed from: a */
        public int f8261a = HttpStatus.SC_OK;

        /* JADX WARN: Code restructure failed: missing block: B:28:0x003d, code lost:
            if ((r1 & Byte.MIN_VALUE) != 0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x003f, code lost:
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0041, code lost:
            r5 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0045, code lost:
            if ((r1 & 9) != 0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x004a, code lost:
            if ((r1 & 8) != 0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x004f, code lost:
            if ((r1 & 64) != 0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0052, code lost:
            if (r5 == 0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0057, code lost:
            if ((r1 & 4) != 0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x005c, code lost:
            if ((r1 & 32) != 0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0061, code lost:
            if ((r1 & 16) != 0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0066, code lost:
            if ((r1 & 2) != 0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x006b, code lost:
            if ((r1 & 25) != 0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0070, code lost:
            if ((r1 & 1) != 0) goto L29;
         */
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean m22438h(int r5, int r6) {
            /*
                char r0 = (char) r6
                char r0 = java.lang.Character.toLowerCase(r0)
                byte[] r1 = com.prineside.luaj.lib.StringLib.f8248y
                r1 = r1[r5]
                r2 = 97
                r3 = 0
                r4 = 1
                if (r0 == r2) goto L6e
                r2 = 103(0x67, float:1.44E-43)
                if (r0 == r2) goto L69
                r2 = 108(0x6c, float:1.51E-43)
                if (r0 == r2) goto L64
                r2 = 112(0x70, float:1.57E-43)
                if (r0 == r2) goto L5f
                r2 = 115(0x73, float:1.61E-43)
                if (r0 == r2) goto L5a
                r2 = 117(0x75, float:1.64E-43)
                if (r0 == r2) goto L55
                r2 = 122(0x7a, float:1.71E-43)
                if (r0 == r2) goto L52
                r2 = 99
                if (r0 == r2) goto L4d
                r2 = 100
                if (r0 == r2) goto L48
                r2 = 119(0x77, float:1.67E-43)
                if (r0 == r2) goto L43
                r2 = 120(0x78, float:1.68E-43)
                if (r0 == r2) goto L3b
                if (r6 != r5) goto L3a
                r3 = 1
            L3a:
                return r3
            L3b:
                r5 = r1 & (-128(0xffffffffffffff80, float:NaN))
                if (r5 == 0) goto L41
            L3f:
                r5 = 1
                goto L73
            L41:
                r5 = 0
                goto L73
            L43:
                r5 = r1 & 9
                if (r5 == 0) goto L41
                goto L3f
            L48:
                r5 = r1 & 8
                if (r5 == 0) goto L41
                goto L3f
            L4d:
                r5 = r1 & 64
                if (r5 == 0) goto L41
                goto L3f
            L52:
                if (r5 != 0) goto L41
                goto L3f
            L55:
                r5 = r1 & 4
                if (r5 == 0) goto L41
                goto L3f
            L5a:
                r5 = r1 & 32
                if (r5 == 0) goto L41
                goto L3f
            L5f:
                r5 = r1 & 16
                if (r5 == 0) goto L41
                goto L3f
            L64:
                r5 = r1 & 2
                if (r5 == 0) goto L41
                goto L3f
            L69:
                r5 = r1 & 25
                if (r5 == 0) goto L41
                goto L3f
            L6e:
                r5 = r1 & 1
                if (r5 == 0) goto L41
                goto L3f
            L73:
                if (r0 != r6) goto L77
                r3 = r5
                goto L7a
            L77:
                if (r5 != 0) goto L7a
                r3 = 1
            L7a:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.lib.StringLib.MatchState.m22438h(int, int):boolean");
        }

        /* renamed from: k */
        public int m22435k(int i, int i2, int i3) {
            int i4 = 0;
            while (true) {
                int i5 = i + i4;
                if (i5 >= this.f8262b.length() || !m22430p(this.f8262b.luaByte(i5), i2, i3)) {
                    break;
                }
                i4++;
            }
            while (i4 >= 0) {
                int m22440f = m22440f(i + i4, i3 + 1);
                if (m22440f != -1) {
                    return m22440f;
                }
                i4--;
            }
            return -1;
        }

        /* renamed from: o */
        public void m22431o() {
            this.f8265e = 0;
            this.f8261a = HttpStatus.SC_OK;
        }

        /* renamed from: b */
        public final int m22444b() {
            for (int i = this.f8265e - 1; i >= 0; i--) {
                if (this.f8267g[i] == -1) {
                    return i;
                }
            }
            LuaValue.error("invalid pattern capture");
            return 0;
        }

        /* renamed from: c */
        public final int m22443c(int i) {
            int i2 = i - 49;
            if (i2 < 0 || i2 >= this.f8265e || this.f8267g[i2] == -1) {
                LuaValue.error("invalid capture index %" + (i2 + 1));
            }
            return i2;
        }

        /* renamed from: d */
        public int m22442d(int i) {
            int i2 = i + 1;
            int luaByte = this.f8263c.luaByte(i);
            if (luaByte != 37) {
                if (luaByte != 91) {
                    return i2;
                }
                if (i2 != this.f8263c.length() && this.f8263c.luaByte(i2) == 94) {
                    i2++;
                }
                while (true) {
                    if (i2 == this.f8263c.length()) {
                        LuaValue.error("malformed pattern (missing ']')");
                    }
                    int i3 = i2 + 1;
                    if (this.f8263c.luaByte(i2) == 37 && i3 < this.f8263c.length()) {
                        i3++;
                    }
                    i2 = i3;
                    if (i2 != this.f8263c.length() && this.f8263c.luaByte(i2) == 93) {
                        return i2 + 1;
                    }
                }
            } else {
                if (i2 == this.f8263c.length()) {
                    LuaValue.error("malformed pattern (ends with '%')");
                }
                return i2 + 1;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x008e, code lost:
            return r4;
         */
        /* JADX WARN: Removed duplicated region for block: B:107:0x0168 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0124 A[Catch: all -> 0x016e, TryCatch #0 {all -> 0x016e, blocks: (B:6:0x000e, B:10:0x001c, B:68:0x0101, B:70:0x010d, B:74:0x011c, B:76:0x0124, B:87:0x013e, B:90:0x0145, B:95:0x0159, B:97:0x0161, B:98:0x0168, B:18:0x0036, B:19:0x003c, B:21:0x0045, B:23:0x004d, B:24:0x0054, B:25:0x0059, B:27:0x0063, B:28:0x0068, B:32:0x0076, B:34:0x0083, B:39:0x0091, B:40:0x0096, B:42:0x00a0, B:45:0x00af, B:49:0x00bf, B:53:0x00ce, B:55:0x00d6, B:52:0x00c8, B:48:0x00b7, B:44:0x00aa, B:58:0x00dd, B:61:0x00e6, B:62:0x00ea, B:64:0x00f4), top: B:104:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x012e  */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m22440f(int r7, int r8) {
            /*
                Method dump skipped, instructions count: 375
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.lib.StringLib.MatchState.m22440f(int, int):int");
        }

        /* renamed from: i */
        public int m22437i(int i, int i2) {
            int luaByte;
            int length = this.f8263c.length();
            if (i2 == length || i2 + 1 == length) {
                LuaValue.error("malformed pattern (missing arguments to '%b')");
            }
            int length2 = this.f8262b.length();
            if (i >= length2 || this.f8262b.luaByte(i) != (luaByte = this.f8263c.luaByte(i2))) {
                return -1;
            }
            int luaByte2 = this.f8263c.luaByte(i2 + 1);
            int i3 = 1;
            while (true) {
                i++;
                if (i >= length2) {
                    return -1;
                }
                if (this.f8262b.luaByte(i) == luaByte2) {
                    i3--;
                    if (i3 == 0) {
                        return i + 1;
                    }
                } else if (this.f8262b.luaByte(i) == luaByte) {
                    i3++;
                }
            }
        }

        /* renamed from: j */
        public boolean m22436j(int i, int i2, int i3) {
            boolean z;
            int i4;
            int i5 = i2 + 1;
            if (this.f8263c.luaByte(i5) == 94) {
                i2 = i5;
                z = false;
            } else {
                z = true;
            }
            while (true) {
                i2++;
                if (i2 < i3) {
                    if (this.f8263c.luaByte(i2) == 37) {
                        i2++;
                        if (m22438h(i, this.f8263c.luaByte(i2))) {
                            return z;
                        }
                    } else if (this.f8263c.luaByte(i2 + 1) == 45 && (i4 = i2 + 2) < i3) {
                        if (this.f8263c.luaByte(i4 - 2) <= i && i <= this.f8263c.luaByte(i4)) {
                            return z;
                        }
                        i2 = i4;
                    } else if (this.f8263c.luaByte(i2) == i) {
                        return z;
                    }
                } else {
                    return !z;
                }
            }
        }

        /* renamed from: l */
        public int m22434l(int i, int i2, int i3) {
            while (true) {
                int m22440f = m22440f(i, i3 + 1);
                if (m22440f != -1) {
                    return m22440f;
                }
                if (i >= this.f8262b.length() || !m22430p(this.f8262b.luaByte(i), i2, i3)) {
                    break;
                }
                i++;
            }
            return -1;
        }

        /* renamed from: m */
        public Varargs m22433m(boolean z, int i, int i2) {
            int i3 = this.f8265e;
            if (i3 == 0 && z) {
                i3 = 1;
            }
            if (i3 != 0) {
                if (i3 != 1) {
                    LuaValue[] luaValueArr = new LuaValue[i3];
                    for (int i4 = 0; i4 < i3; i4++) {
                        luaValueArr[i4] = m22432n(i4, i, i2);
                    }
                    return LuaValue.varargsOf(luaValueArr);
                }
                return m22432n(0, i, i2);
            }
            return LuaValue.NONE;
        }

        /* renamed from: n */
        public final LuaValue m22432n(int i, int i2, int i3) {
            if (i >= this.f8265e) {
                if (i == 0) {
                    return this.f8262b.substring(i2, i3);
                }
                return LuaValue.error("invalid capture index %" + (i + 1));
            }
            int i4 = this.f8267g[i];
            if (i4 == -1) {
                return LuaValue.error("unfinished capture");
            }
            if (i4 == -2) {
                return LuaValue.valueOf(this.f8266f[i] + 1);
            }
            int i5 = this.f8266f[i];
            return this.f8262b.substring(i5, i4 + i5);
        }

        /* renamed from: p */
        public boolean m22430p(int i, int i2, int i3) {
            int luaByte = this.f8263c.luaByte(i2);
            if (luaByte != 37) {
                if (luaByte == 46) {
                    return true;
                }
                if (luaByte != 91) {
                    if (this.f8263c.luaByte(i2) == i) {
                        return true;
                    }
                    return false;
                }
                return m22436j(i, i2, i3 - 1);
            }
            return m22438h(i, this.f8263c.luaByte(i2 + 1));
        }

        /* renamed from: q */
        public int m22429q(int i, int i2, int i3) {
            int i4 = this.f8265e;
            if (i4 >= 32) {
                LuaValue.error("too many captures");
            }
            this.f8266f[i4] = i;
            this.f8267g[i4] = i3;
            this.f8265e = i4 + 1;
            int m22440f = m22440f(i, i2);
            if (m22440f == -1) {
                this.f8265e--;
            }
            return m22440f;
        }

        public MatchState(Varargs varargs, LuaString luaString, LuaString luaString2) {
            this.f8262b = luaString;
            this.f8263c = luaString2;
            this.f8264d = varargs;
        }

        /* renamed from: a */
        public final void m22445a(Buffer buffer, LuaString luaString, int i, int i2) {
            int i3;
            String str;
            int length = luaString.length();
            int i4 = 0;
            while (i4 < length) {
                byte luaByte = (byte) luaString.luaByte(i4);
                if (luaByte != 37) {
                    buffer.append(luaByte);
                } else {
                    i4++;
                    if (i4 < length) {
                        i3 = luaString.luaByte(i4);
                    } else {
                        i3 = 0;
                    }
                    byte b = (byte) i3;
                    char c = (char) b;
                    if (!Character.isDigit(c)) {
                        if (b != 37) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("invalid use of '%' in replacement string: after '%' must be '0'-'9' or '%', but found ");
                            if (i4 < length) {
                                str = "symbol '" + c + "' with code " + ((int) b) + " at pos " + (i4 + 1);
                            } else {
                                str = "end of string";
                            }
                            sb.append(str);
                            LuaValue.error(sb.toString());
                        }
                        buffer.append(b);
                    } else if (b == 48) {
                        buffer.append(this.f8262b.substring(i, i2));
                    } else {
                        buffer.append(m22432n(b - 49, i, i2).strvalue());
                    }
                }
                i4++;
            }
        }

        public void add_value(Buffer buffer, int i, int i2, LuaValue luaValue) {
            LuaString luaString;
            int type = luaValue.type();
            if (type != 3 && type != 4) {
                if (type != 5) {
                    if (type != 6) {
                        LuaValue.error("bad argument: string/function/table expected");
                        return;
                    }
                    luaString = luaValue.invoke(m22433m(true, i, i2)).arg1();
                } else {
                    luaString = luaValue.get(m22432n(0, i, i2));
                }
                if (!luaString.toboolean()) {
                    luaString = this.f8262b.substring(i, i2);
                } else if (!luaString.isstring()) {
                    LuaValue.error("invalid replacement value (a " + luaString.typename() + ")");
                }
                buffer.append(luaString.strvalue());
                return;
            }
            m22445a(buffer, luaValue.strvalue(), i, i2);
        }

        /* renamed from: e */
        public int m22441e(int i, int i2) {
            int m22444b = m22444b();
            this.f8267g[m22444b] = i - this.f8266f[m22444b];
            int m22440f = m22440f(i, i2);
            if (m22440f == -1) {
                this.f8267g[m22444b] = -1;
            }
            return m22440f;
        }

        /* renamed from: g */
        public int m22439g(int i, int i2) {
            int m22443c = m22443c(i2);
            int i3 = this.f8267g[m22443c];
            if (this.f8262b.length() - i >= i3) {
                LuaString luaString = this.f8262b;
                if (LuaString.equals(luaString, this.f8266f[m22443c], luaString, i, i3)) {
                    return i + i3;
                }
                return -1;
            }
            return -1;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class _byte extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            int i = checkstring.m_length;
            int m22447u = StringLib.m22447u(varargs.optint(2, 1), i);
            int m22447u2 = StringLib.m22447u(varargs.optint(3, m22447u), i);
            if (m22447u <= 0) {
                m22447u = 1;
            }
            if (m22447u2 <= i) {
                i = m22447u2;
            }
            if (m22447u > i) {
                return LuaValue.NONE;
            }
            int i2 = (i - m22447u) + 1;
            if (m22447u + i2 <= i) {
                LuaValue.error("string slice too long");
            }
            LuaValue[] luaValueArr = new LuaValue[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                luaValueArr[i3] = LuaValue.valueOf(checkstring.luaByte((m22447u + i3) - 1));
            }
            return LuaValue.varargsOf(luaValueArr);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class dump extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaFunction checkfunction = varargs.checkfunction(1);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                DumpState.dump(((LuaClosure) checkfunction).f7965p, byteArrayOutputStream, varargs.optboolean(2, true));
                return LuaString.valueUsing(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                return LuaValue.error(e.getMessage());
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class find extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            return StringLib.m22446v(varargs, true);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class format extends VarArgFunction {

        /* renamed from: x */
        public StringLib f8268x;

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            int i = 1;
            LuaString checkstring = varargs.checkstring(1);
            int length = checkstring.length();
            Buffer buffer = new Buffer(length);
            int i2 = 0;
            while (i2 < length) {
                int i3 = i2 + 1;
                int luaByte = checkstring.luaByte(i2);
                if (luaByte != 10) {
                    if (luaByte != 37) {
                        buffer.append((byte) luaByte);
                    } else if (i3 < length) {
                        if (checkstring.luaByte(i3) == 37) {
                            i2 = i3 + 1;
                            buffer.append((byte) 37);
                        } else {
                            i++;
                            FormatDesc formatDesc = new FormatDesc(varargs, checkstring, i3, this.f8268x);
                            i3 += formatDesc.length;
                            int i4 = formatDesc.conversion;
                            if (i4 != 69 && i4 != 71) {
                                if (i4 != 88) {
                                    if (i4 != 105) {
                                        if (i4 != 111) {
                                            if (i4 != 113) {
                                                if (i4 != 115) {
                                                    if (i4 != 117 && i4 != 120) {
                                                        switch (i4) {
                                                            case 99:
                                                                formatDesc.format(buffer, (byte) varargs.checkint(i));
                                                                break;
                                                            case 100:
                                                                break;
                                                            case 101:
                                                            case 102:
                                                            case 103:
                                                                break;
                                                            default:
                                                                LuaValue.error("invalid option '%" + ((char) formatDesc.conversion) + "' to 'format'");
                                                                break;
                                                        }
                                                    }
                                                } else {
                                                    LuaString checkstring2 = varargs.checkstring(i);
                                                    if (formatDesc.f8255g == -1 && checkstring2.length() >= 100) {
                                                        buffer.append(checkstring2);
                                                    } else {
                                                        formatDesc.format(buffer, checkstring2);
                                                    }
                                                }
                                            } else {
                                                StringLib.m22448s(buffer, varargs.checkstring(i));
                                            }
                                        }
                                    }
                                    formatDesc.format(buffer, varargs.checklong(i));
                                }
                                formatDesc.format(buffer, varargs.checklong(i));
                            }
                            formatDesc.format(buffer, varargs.checkdouble(i));
                        }
                    }
                } else {
                    buffer.append("\n");
                }
                i2 = i3;
            }
            return buffer.tostring();
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8268x = (StringLib) kryo.readObject(input, StringLib.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f8268x);
        }

        public format() {
        }

        public format(StringLib stringLib) {
            this.f8268x = stringLib;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class gmatch extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            return new GMatchAux(varargs, varargs.checkstring(1), varargs.checkstring(2));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class gsub extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            int i = 1;
            LuaString checkstring = varargs.checkstring(1);
            int length = checkstring.length();
            LuaString checkstring2 = varargs.checkstring(2);
            LuaValue arg = varargs.arg(3);
            int optint = varargs.optint(4, length + 1);
            int i2 = 0;
            i = (checkstring2.length() <= 0 || checkstring2.charAt(0) != 94) ? 0 : 0;
            Buffer buffer = new Buffer(length);
            MatchState matchState = new MatchState(varargs, checkstring, checkstring2);
            int i3 = 0;
            int i4 = -1;
            while (i2 < optint) {
                matchState.m22431o();
                int m22440f = matchState.m22440f(i3, i);
                if (m22440f != -1 && m22440f != i4) {
                    i2++;
                    matchState.add_value(buffer, i3, m22440f, arg);
                    i3 = m22440f;
                    i4 = i3;
                    continue;
                } else if (i3 >= length) {
                    break;
                } else {
                    buffer.append((byte) checkstring.luaByte(i3));
                    i3++;
                    continue;
                }
                if (i != 0) {
                    break;
                }
            }
            buffer.append(checkstring.substring(i3, length));
            return LuaValue.varargsOf(buffer.tostring(), LuaValue.valueOf(i2));
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class len extends OneArgFunction {
        @Override // com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return luaValue.checkstring().len();
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class lower extends OneArgFunction {
        @Override // com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.checkjstring().toLowerCase());
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class match extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            return StringLib.m22446v(varargs, false);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class rep extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            int length = checkstring.length() * varargs.checkint(2);
            byte[] bArr = new byte[length];
            int length2 = checkstring.length();
            for (int i = 0; i < length; i += length2) {
                checkstring.copyInto(0, bArr, i, length2);
            }
            return LuaString.valueUsing(bArr);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class sub extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString checkstring = varargs.checkstring(1);
            int length = checkstring.length();
            int m22447u = StringLib.m22447u(varargs.checkint(2), length);
            int m22447u2 = StringLib.m22447u(varargs.optint(3, -1), length);
            if (m22447u < 1) {
                m22447u = 1;
            }
            if (m22447u2 <= length) {
                length = m22447u2;
            }
            if (m22447u <= length) {
                return checkstring.substring(m22447u - 1, length);
            }
            return LuaValue.EMPTYSTRING;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class upper extends OneArgFunction {
        @Override // com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.checkjstring().toUpperCase());
        }
    }

    /* renamed from: u */
    public static int m22447u(int i, int i2) {
        return i >= 0 ? i : i2 + i + 1;
    }

    /* renamed from: v */
    public static Varargs m22446v(Varargs varargs, boolean z) {
        boolean z2;
        boolean z3;
        int i;
        LuaString checkstring = varargs.checkstring(1);
        LuaString checkstring2 = varargs.checkstring(2);
        int optint = varargs.optint(3, 1);
        if (optint > 0) {
            optint = Math.min(optint - 1, checkstring.length());
        } else if (optint < 0) {
            optint = Math.max(0, checkstring.length() + optint);
        }
        if (z && (varargs.arg(4).toboolean() || checkstring2.indexOfAny(f8247x) == -1)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            int indexOf = checkstring.indexOf(checkstring2, optint);
            if (indexOf != -1) {
                return LuaValue.varargsOf(LuaValue.valueOf(indexOf + 1), LuaValue.valueOf(indexOf + checkstring2.length()));
            }
        } else {
            MatchState matchState = new MatchState(varargs, checkstring, checkstring2);
            if (checkstring2.length() > 0 && checkstring2.luaByte(0) == 94) {
                z3 = true;
                i = 1;
            } else {
                z3 = false;
                i = 0;
            }
            while (true) {
                matchState.m22431o();
                int m22440f = matchState.m22440f(optint, i);
                if (m22440f != -1) {
                    if (z) {
                        return LuaValue.varargsOf(LuaValue.valueOf(optint + 1), LuaValue.valueOf(m22440f), matchState.m22433m(false, optint, m22440f));
                    }
                    return matchState.m22433m(true, optint, m22440f);
                }
                int i2 = optint + 1;
                if (optint >= checkstring.length() || z3) {
                    break;
                }
                optint = i2;
            }
        }
        return LuaValue.NIL;
    }

    /* renamed from: t */
    public String mo22390t(String str, double d) {
        return String.valueOf(d);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class _char extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            int narg = varargs.narg();
            byte[] bArr = new byte[narg];
            int i = 1;
            int i2 = 0;
            while (i2 < narg) {
                int checkint = varargs.checkint(i);
                if (checkint < 0 || checkint >= 256) {
                    LuaValue.argerror(i, "invalid value for string.char [0; 255]: " + checkint);
                }
                bArr[i2] = (byte) checkint;
                i2++;
                i++;
            }
            return LuaString.valueUsing(bArr);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class reverse extends OneArgFunction {
        @Override // com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            LuaString checkstring = luaValue.checkstring();
            int length = checkstring.length();
            byte[] bArr = new byte[length];
            int i = length - 1;
            int i2 = 0;
            while (i2 < length) {
                bArr[i] = (byte) checkstring.luaByte(i2);
                i2++;
                i--;
            }
            return LuaString.valueUsing(bArr);
        }
    }

    static {
        int i;
        int i2;
        int i3;
        int i4;
        for (int i5 = 0; i5 < 128; i5++) {
            char c = (char) i5;
            byte[] bArr = f8248y;
            if (Character.isDigit(c)) {
                i = 8;
            } else {
                i = 0;
            }
            if (Character.isLowerCase(c)) {
                i2 = 2;
            } else {
                i2 = 0;
            }
            int i6 = i | i2;
            if (Character.isUpperCase(c)) {
                i3 = 4;
            } else {
                i3 = 0;
            }
            int i7 = i6 | i3;
            if (c >= ' ' && c != 127) {
                i4 = 0;
            } else {
                i4 = 64;
            }
            byte b = (byte) (i4 | i7);
            bArr[i5] = b;
            if ((c >= 'a' && c <= 'f') || ((c >= 'A' && c <= 'F') || (c >= '0' && c <= '9'))) {
                bArr[i5] = (byte) (b | Byte.MIN_VALUE);
            }
            if ((c >= '!' && c <= '/') || ((c >= ':' && c <= '@') || ((c >= '[' && c <= '`') || (c >= '{' && c <= '~')))) {
                bArr[i5] = (byte) (bArr[i5] | 16);
            }
            byte b2 = bArr[i5];
            if ((b2 & 6) != 0) {
                bArr[i5] = (byte) (b2 | 1);
            }
        }
        byte[] bArr2 = f8248y;
        bArr2[32] = 32;
        bArr2[13] = (byte) (bArr2[13] | 32);
        bArr2[10] = (byte) (bArr2[10] | 32);
        bArr2[9] = (byte) (bArr2[9] | 32);
        bArr2[11] = (byte) (bArr2[11] | 32);
        bArr2[12] = (byte) (bArr2[12] | 32);
    }

    /* renamed from: s */
    public static void m22448s(Buffer buffer, LuaString luaString) {
        buffer.append((byte) 34);
        int length = luaString.length();
        for (int i = 0; i < length; i++) {
            int luaByte = luaString.luaByte(i);
            if (luaByte != 10 && luaByte != 34 && luaByte != 92) {
                if (luaByte > 31 && luaByte != 127) {
                    buffer.append((byte) luaByte);
                } else {
                    buffer.append((byte) 92);
                    int i2 = i + 1;
                    if (i2 != length && luaString.luaByte(i2) >= 48 && luaString.luaByte(i2) <= 57) {
                        buffer.append((byte) 48);
                        buffer.append((byte) ((char) ((luaByte / 10) + 48)));
                        buffer.append((byte) ((char) ((luaByte % 10) + 48)));
                    } else {
                        buffer.append(Integer.toString(luaByte));
                    }
                }
            } else {
                buffer.append((byte) 92);
                buffer.append((byte) luaByte);
            }
        }
        buffer.append((byte) 34);
    }

    @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        luaTable.set("byte", new _byte());
        luaTable.set("char", new _char());
        luaTable.set("dump", new dump());
        luaTable.set("find", new find());
        luaTable.set("format", new format());
        luaTable.set("gmatch", new gmatch());
        luaTable.set("gsub", new gsub());
        luaTable.set("len", new len());
        luaTable.set("lower", new lower());
        luaTable.set("match", new match());
        luaTable.set("rep", new rep());
        luaTable.set("reverse", new reverse());
        luaTable.set("sub", new sub());
        luaTable.set("upper", new upper());
        luaValue2.set("string", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get("loaded").set("string", luaTable);
        }
        if (LuaString.s_metatable == null) {
            LuaString.s_metatable = LuaValue.tableOf(new LuaValue[]{LuaValue.INDEX, luaTable});
        }
        return luaTable;
    }
}
