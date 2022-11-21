package com.prineside.luaj;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.prineside.luaj.Globals;
import java.io.DataInputStream;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class LoadState {
    public static final int LUAC_FORMAT = 0;
    public static final int LUAC_HEADERSIZE = 12;
    public static final int LUAC_VERSION = 82;
    public static final int LUA_TBOOLEAN = 1;
    public static final int LUA_TFUNCTION = 6;
    public static final int LUA_TINT = -2;
    public static final int LUA_TLIGHTUSERDATA = 2;
    public static final int LUA_TNIL = 0;
    public static final int LUA_TNONE = -1;
    public static final int LUA_TNUMBER = 3;
    public static final int LUA_TSTRING = 4;
    public static final int LUA_TTABLE = 5;
    public static final int LUA_TTHREAD = 8;
    public static final int LUA_TUSERDATA = 7;
    public static final int LUA_TVALUE = 9;
    public static final int NUMBER_FORMAT_FLOATS_OR_DOUBLES = 0;
    public static final int NUMBER_FORMAT_INTS_ONLY = 1;
    public static final int NUMBER_FORMAT_NUM_PATCH_INT32 = 4;
    public static final String SOURCE_BINARY_STRING = "binary string";

    /* renamed from: a */
    public int f7950a;

    /* renamed from: b */
    public int f7951b;

    /* renamed from: c */
    public boolean f7952c;

    /* renamed from: d */
    public int f7953d;

    /* renamed from: e */
    public int f7954e;

    /* renamed from: f */
    public int f7955f;

    /* renamed from: g */
    public int f7956g;

    /* renamed from: h */
    public int f7957h;

    /* renamed from: i */
    public String f7958i;

    /* renamed from: is */
    public final DataInputStream f7959is;

    /* renamed from: j */
    public byte[] f7960j = new byte[512];
    public static final Globals.Undumper instance = new GlobalsUndumper();
    public static String encoding = null;
    public static final byte[] LUA_SIGNATURE = {27, 76, 117, 97};
    public static final byte[] LUAC_TAIL = {25, -109, 13, 10, 26, 10};

    /* renamed from: k */
    public static final LuaValue[] f7945k = new LuaValue[0];

    /* renamed from: l */
    public static final Prototype[] f7946l = new Prototype[0];

    /* renamed from: m */
    public static final LocVars[] f7947m = new LocVars[0];

    /* renamed from: n */
    public static final Upvaldesc[] f7948n = new Upvaldesc[0];

    /* renamed from: o */
    public static final int[] f7949o = new int[0];

    /* loaded from: classes2.dex */
    public static final class GlobalsUndumper implements Globals.Undumper {
        @Override // com.prineside.luaj.Globals.Undumper
        public Prototype undump(InputStream inputStream, String str) {
            return LoadState.undump(inputStream, str);
        }
    }

    public static void install(Globals globals) {
        globals.undumper = instance;
    }

    public static String getSourceName(String str) {
        if (!str.startsWith("@") && !str.startsWith("=")) {
            if (str.startsWith("\u001b")) {
                return SOURCE_BINARY_STRING;
            }
            return str;
        }
        return str.substring(1);
    }

    /* renamed from: c */
    public int m22824c() {
        this.f7959is.readFully(this.f7960j, 0, 4);
        if (this.f7952c) {
            byte[] bArr = this.f7960j;
            return (bArr[0] & DefaultClassResolver.NAME) | (bArr[3] << 24) | ((bArr[2] & DefaultClassResolver.NAME) << 16) | ((bArr[1] & DefaultClassResolver.NAME) << 8);
        }
        byte[] bArr2 = this.f7960j;
        return (bArr2[3] & DefaultClassResolver.NAME) | (bArr2[0] << 24) | ((bArr2[1] & DefaultClassResolver.NAME) << 16) | ((bArr2[2] & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: d */
    public long m22823d() {
        int m22824c;
        int m22824c2;
        if (this.f7952c) {
            m22824c2 = m22824c();
            m22824c = m22824c();
        } else {
            m22824c = m22824c();
            m22824c2 = m22824c();
        }
        return (m22824c << 32) | (m22824c2 & 4294967295L);
    }

    /* renamed from: f */
    public LuaValue m22821f() {
        if (this.f7957h == 1) {
            return LuaInteger.valueOf(m22824c());
        }
        return longBitsToLuaNumber(m22823d());
    }

    /* renamed from: g */
    public LuaString m22820g() {
        int m22824c;
        if (this.f7954e == 8) {
            m22824c = (int) m22823d();
        } else {
            m22824c = m22824c();
        }
        if (m22824c == 0) {
            return null;
        }
        byte[] bArr = new byte[m22824c];
        this.f7959is.readFully(bArr, 0, m22824c);
        return LuaString.valueUsing(bArr, 0, m22824c - 1);
    }

    public Prototype loadFunction(LuaString luaString) {
        Prototype prototype = new Prototype();
        prototype.linedefined = m22824c();
        prototype.lastlinedefined = m22824c();
        prototype.numparams = this.f7959is.readUnsignedByte();
        prototype.is_vararg = this.f7959is.readUnsignedByte();
        prototype.maxstacksize = this.f7959is.readUnsignedByte();
        prototype.code = m22822e();
        m22826a(prototype);
        m22819h(prototype);
        m22825b(prototype);
        return prototype;
    }

    public void loadHeader() {
        boolean z;
        this.f7950a = this.f7959is.readByte();
        this.f7951b = this.f7959is.readByte();
        int i = 0;
        if (this.f7959is.readByte() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.f7952c = z;
        this.f7953d = this.f7959is.readByte();
        this.f7954e = this.f7959is.readByte();
        this.f7955f = this.f7959is.readByte();
        this.f7956g = this.f7959is.readByte();
        this.f7957h = this.f7959is.readByte();
        while (true) {
            byte[] bArr = LUAC_TAIL;
            if (i < bArr.length) {
                if (this.f7959is.readByte() == bArr[i]) {
                    i++;
                } else {
                    throw new LuaError("Unexpeted byte in luac tail of header, index=" + i);
                }
            } else {
                return;
            }
        }
    }

    public LoadState(InputStream inputStream, String str) {
        this.f7958i = str;
        this.f7959is = new DataInputStream(inputStream);
    }

    public static Prototype undump(InputStream inputStream, String str) {
        int read = inputStream.read();
        byte[] bArr = LUA_SIGNATURE;
        if (read == bArr[0] && inputStream.read() == bArr[1] && inputStream.read() == bArr[2] && inputStream.read() == bArr[3]) {
            String sourceName = getSourceName(str);
            LoadState loadState = new LoadState(inputStream, sourceName);
            loadState.loadHeader();
            int i = loadState.f7957h;
            if (i != 0 && i != 1 && i != 4) {
                throw new LuaError("unsupported int size");
            }
            return loadState.loadFunction(LuaString.valueOf(sourceName));
        }
        return null;
    }

    /* renamed from: a */
    public void m22826a(Prototype prototype) {
        LuaValue[] luaValueArr;
        Prototype[] prototypeArr;
        LuaBoolean luaBoolean;
        int m22824c = m22824c();
        if (m22824c > 0) {
            luaValueArr = new LuaValue[m22824c];
        } else {
            luaValueArr = f7945k;
        }
        for (int i = 0; i < m22824c; i++) {
            byte readByte = this.f7959is.readByte();
            if (readByte != -2) {
                if (readByte != 0) {
                    if (readByte != 1) {
                        if (readByte != 3) {
                            if (readByte == 4) {
                                luaValueArr[i] = m22820g();
                            } else {
                                throw new IllegalStateException("bad constant");
                            }
                        } else {
                            luaValueArr[i] = m22821f();
                        }
                    } else {
                        if (this.f7959is.readUnsignedByte() != 0) {
                            luaBoolean = LuaValue.TRUE;
                        } else {
                            luaBoolean = LuaValue.FALSE;
                        }
                        luaValueArr[i] = luaBoolean;
                    }
                } else {
                    luaValueArr[i] = LuaValue.NIL;
                }
            } else {
                luaValueArr[i] = LuaInteger.valueOf(m22824c());
            }
        }
        prototype.f8017k = luaValueArr;
        int m22824c2 = m22824c();
        if (m22824c2 > 0) {
            prototypeArr = new Prototype[m22824c2];
        } else {
            prototypeArr = f7946l;
        }
        for (int i2 = 0; i2 < m22824c2; i2++) {
            prototypeArr[i2] = loadFunction(prototype.source);
        }
        prototype.f8018p = prototypeArr;
    }

    /* renamed from: b */
    public void m22825b(Prototype prototype) {
        LocVars[] locVarsArr;
        prototype.source = m22820g();
        prototype.lineinfo = m22822e();
        int m22824c = m22824c();
        if (m22824c > 0) {
            locVarsArr = new LocVars[m22824c];
        } else {
            locVarsArr = f7947m;
        }
        prototype.locvars = locVarsArr;
        for (int i = 0; i < m22824c; i++) {
            prototype.locvars[i] = new LocVars(m22820g(), m22824c(), m22824c());
        }
        int m22824c2 = m22824c();
        for (int i2 = 0; i2 < m22824c2; i2++) {
            prototype.upvalues[i2].name = m22820g();
        }
    }

    /* renamed from: e */
    public int[] m22822e() {
        int i;
        byte b;
        int m22824c = m22824c();
        if (m22824c == 0) {
            return f7949o;
        }
        int i2 = m22824c << 2;
        if (this.f7960j.length < i2) {
            this.f7960j = new byte[i2];
        }
        int i3 = 0;
        this.f7959is.readFully(this.f7960j, 0, i2);
        int[] iArr = new int[m22824c];
        int i4 = 0;
        while (i3 < m22824c) {
            if (this.f7952c) {
                byte[] bArr = this.f7960j;
                i = (bArr[i4 + 3] << 24) | ((bArr[i4 + 2] & DefaultClassResolver.NAME) << 16) | ((bArr[i4 + 1] & DefaultClassResolver.NAME) << 8);
                b = bArr[i4 + 0];
            } else {
                byte[] bArr2 = this.f7960j;
                i = (bArr2[i4 + 0] << 24) | ((bArr2[i4 + 1] & DefaultClassResolver.NAME) << 16) | ((bArr2[i4 + 2] & DefaultClassResolver.NAME) << 8);
                b = bArr2[i4 + 3];
            }
            iArr[i3] = (b & DefaultClassResolver.NAME) | i;
            i3++;
            i4 += 4;
        }
        return iArr;
    }

    /* renamed from: h */
    public void m22819h(Prototype prototype) {
        Upvaldesc[] upvaldescArr;
        boolean z;
        int m22824c = m22824c();
        if (m22824c > 0) {
            upvaldescArr = new Upvaldesc[m22824c];
        } else {
            upvaldescArr = f7948n;
        }
        prototype.upvalues = upvaldescArr;
        for (int i = 0; i < m22824c; i++) {
            if (this.f7959is.readByte() != 0) {
                z = true;
            } else {
                z = false;
            }
            prototype.upvalues[i] = new Upvaldesc(null, z, this.f7959is.readByte() & DefaultClassResolver.NAME);
        }
    }

    public static LuaValue longBitsToLuaNumber(long j) {
        if ((Long.MAX_VALUE & j) == 0) {
            return LuaValue.ZERO;
        }
        int i = ((int) ((j >> 52) & 2047)) - 1023;
        if (i >= 0 && i < 31) {
            long j2 = 4503599627370495L & j;
            int i2 = 52 - i;
            if ((j2 & ((1 << i2) - 1)) == 0) {
                int i3 = ((int) (j2 >> i2)) | (1 << i);
                if ((j >> 63) != 0) {
                    i3 = -i3;
                }
                return LuaInteger.valueOf(i3);
            }
        }
        return LuaValue.valueOf(Double.longBitsToDouble(j));
    }
}
