package com.prineside.luaj.lib;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.Globals;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.tdi2.utils.REGS;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes2.dex */
public abstract class IoLib extends TwoArgFunction {

    /* renamed from: A */
    public LuaTable f8209A;

    /* renamed from: B */
    public Globals f8210B;

    /* renamed from: x */
    public File f8211x = null;

    /* renamed from: y */
    public File f8212y = null;

    /* renamed from: z */
    public File f8213z = null;

    /* renamed from: C */
    public static final LuaValue f8204C = LuaValue.valueOf("stdin");

    /* renamed from: D */
    public static final LuaValue f8205D = LuaValue.valueOf("stdout");

    /* renamed from: E */
    public static final LuaValue f8206E = LuaValue.valueOf("stderr");

    /* renamed from: F */
    public static final LuaValue f8207F = LuaValue.valueOf("file");

    /* renamed from: G */
    public static final LuaValue f8208G = LuaValue.valueOf("closed file");
    public static final String[] IO_NAMES = {"close", "flush", "input", "lines", "open", "output", "popen", "read", "tmpfile", "type", "write"};
    public static final String[] FILE_NAMES = {"close", "flush", "lines", "read", "seek", "setvbuf", "write"};

    @REGS
    /* loaded from: classes2.dex */
    public static final class IoLibV extends VarArgFunction {
        public IoLib iolib;

        /* renamed from: x */
        public File f8215x;

        /* renamed from: y */
        public boolean f8216y;

        /* renamed from: z */
        public Varargs f8217z;

        public IoLibV() {
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
        }

        public IoLibV(File file, String str, int i, IoLib ioLib, boolean z, Varargs varargs) {
            this(file, str, i, ioLib);
            this.f8216y = z;
            this.f8217z = varargs.dealias();
        }

        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            try {
                switch (this.f8218u) {
                    case 0:
                        return this.iolib._io_close(varargs.arg1());
                    case 1:
                        return this.iolib._io_flush();
                    case 2:
                        return this.iolib._io_input(varargs.arg1());
                    case 3:
                        return this.iolib._io_lines(varargs);
                    case 4:
                        return this.iolib._io_open(varargs.checkjstring(1), varargs.optjstring(2, "r"));
                    case 5:
                        return this.iolib._io_output(varargs.arg1());
                    case 6:
                        return this.iolib._io_popen(varargs.checkjstring(1), varargs.optjstring(2, "r"));
                    case 7:
                        return this.iolib._io_read(varargs);
                    case 8:
                        return this.iolib._io_tmpfile();
                    case 9:
                        return this.iolib._io_type(varargs.arg1());
                    case 10:
                        return this.iolib._io_write(varargs);
                    case 11:
                        return this.iolib._file_close(varargs.arg1());
                    case 12:
                        return this.iolib._file_flush(varargs.arg1());
                    case 13:
                        return this.iolib._file_lines(varargs);
                    case 14:
                        return this.iolib._file_read(varargs.arg1(), varargs.subargs(2));
                    case 15:
                        return this.iolib._file_seek(varargs.arg1(), varargs.optjstring(2, "cur"), varargs.optint(3, 0));
                    case 16:
                        return this.iolib._file_setvbuf(varargs.arg1(), varargs.checkjstring(2), varargs.optint(3, 8192));
                    case 17:
                        return this.iolib._file_write(varargs.arg1(), varargs.subargs(2));
                    case 18:
                        return this.iolib._io_index(varargs.arg(2));
                    case 19:
                        return this.iolib._lines_iter(this.f8215x, this.f8216y, this.f8217z);
                    default:
                        return LuaValue.NONE;
                }
            } catch (IOException e) {
                if (this.f8218u == 19) {
                    String message = e.getMessage();
                    if (message == null) {
                        message = e.toString();
                    }
                    LuaValue.error(message);
                }
                return IoLib.m22470u(e);
            }
        }

        public IoLibV(File file, String str, int i, IoLib ioLib) {
            this.f8215x = file;
            this.f8219w = str;
            this.f8218u = i;
            this.iolib = ioLib;
        }
    }

    /* renamed from: G */
    public static File m22477G(LuaValue luaValue) {
        if (luaValue instanceof File) {
            return (File) luaValue;
        }
        return null;
    }

    /* renamed from: K */
    public static Varargs m22473K() {
        return LuaValue.TRUE;
    }

    public static LuaValue freadline(File file, boolean z) {
        return freaduntil(file, true, z);
    }

    /* renamed from: v */
    public static Varargs m22469v(String str) {
        return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(str));
    }

    /* renamed from: E */
    public abstract File mo22414E(String str, boolean z, boolean z2, boolean z3, boolean z4);

    /* renamed from: F */
    public abstract File mo22413F(String str, String str2);

    /* renamed from: H */
    public final File m22476H() {
        File file = this.f8212y;
        if (file != null) {
            return file;
        }
        File m22481A = m22481A(1, "-", "w");
        this.f8212y = m22481A;
        return m22481A;
    }

    /* renamed from: L */
    public abstract File mo22412L();

    /* renamed from: M */
    public abstract File mo22411M();

    /* renamed from: N */
    public abstract File mo22410N();

    /* renamed from: O */
    public abstract File mo22409O();

    public Varargs _file_close(LuaValue luaValue) {
        return m22465z(m22472s(luaValue));
    }

    public Varargs _file_lines(Varargs varargs) {
        return m22478D(m22472s(varargs.arg1()), false, varargs.subargs(2));
    }

    public Varargs _file_read(LuaValue luaValue, Varargs varargs) {
        return m22480B(m22472s(luaValue), varargs);
    }

    public Varargs _file_write(LuaValue luaValue, Varargs varargs) {
        return m22479C(m22472s(luaValue), varargs);
    }

    public Varargs _io_lines(Varargs varargs) {
        File m22481A;
        String optjstring = varargs.optjstring(1, null);
        if (optjstring == null) {
            m22481A = m22466y();
        } else {
            m22481A = m22481A(3, optjstring, "r");
        }
        m22471t(m22481A);
        return m22478D(m22481A, optjstring != null, varargs.subargs(2));
    }

    public Varargs _io_open(String str, String str2) {
        return m22475I(3, str, str2);
    }

    public Varargs _io_tmpfile() {
        return mo22412L();
    }

    /* renamed from: w */
    public final File m22468w() {
        File file = this.f8213z;
        if (file != null) {
            return file;
        }
        File m22481A = m22481A(2, "-", "w");
        this.f8213z = m22481A;
        return m22481A;
    }

    /* renamed from: y */
    public final File m22466y() {
        File file = this.f8211x;
        if (file != null) {
            return file;
        }
        File m22481A = m22481A(0, "-", "r");
        this.f8211x = m22481A;
        return m22481A;
    }

    /* loaded from: classes2.dex */
    public abstract class File extends LuaValue {
        public File() {
        }

        public abstract void close();

        public boolean eof() {
            try {
                return peek() < 0;
            } catch (EOFException unused) {
                return true;
            }
        }

        public abstract void flush();

        @Override // com.prineside.luaj.LuaValue
        public LuaValue get(LuaValue luaValue) {
            return IoLib.this.f8209A.get(luaValue);
        }

        public abstract boolean isclosed();

        public abstract boolean isstdfile();

        public abstract int peek();

        public abstract int read();

        public abstract int read(byte[] bArr, int i, int i2);

        public abstract int remaining();

        public abstract int seek(String str, int i);

        public abstract void setvbuf(String str, int i);

        @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
        public String tojstring() {
            return "file: " + Integer.toHexString(hashCode());
        }

        @Override // com.prineside.luaj.LuaValue
        public int type() {
            return 7;
        }

        @Override // com.prineside.luaj.LuaValue
        public String typename() {
            return "userdata";
        }

        public abstract void write(LuaString luaString);

        public void finalize() {
            if (!isclosed()) {
                try {
                    close();
                } catch (IOException unused) {
                }
            }
        }
    }

    public static LuaValue freadbytes(File file, int i) {
        if (i == 0) {
            if (file.eof()) {
                return LuaValue.NIL;
            }
            return LuaValue.EMPTYSTRING;
        }
        byte[] bArr = new byte[i];
        int read = file.read(bArr, 0, i);
        if (read < 0) {
            return LuaValue.NIL;
        }
        return LuaString.valueUsing(bArr, 0, read);
    }

    public static LuaValue freadnumber(File file) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m22467x(file, " \t\r\n", null);
        m22467x(file, "-+", byteArrayOutputStream);
        m22467x(file, "0123456789", byteArrayOutputStream);
        m22467x(file, ".", byteArrayOutputStream);
        m22467x(file, "0123456789", byteArrayOutputStream);
        String byteArrayOutputStream2 = byteArrayOutputStream.toString();
        if (byteArrayOutputStream2.length() > 0) {
            return LuaValue.valueOf(Double.parseDouble(byteArrayOutputStream2));
        }
        return LuaValue.NIL;
    }

    public static LuaValue freaduntil(File file, boolean z, boolean z2) {
        int i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            if (!z) {
                while (true) {
                    i = file.read();
                    if (i < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(i);
                }
            } else {
                while (true) {
                    i = file.read();
                    if (i < 0) {
                        break;
                    } else if (i != 10) {
                        if (i != 13) {
                            byteArrayOutputStream.write(i);
                        } else if (z2) {
                            byteArrayOutputStream.write(i);
                        }
                    } else if (z2) {
                        byteArrayOutputStream.write(i);
                    }
                }
            }
        } catch (EOFException unused) {
            i = -1;
        }
        if (i < 0 && byteArrayOutputStream.size() == 0) {
            return LuaValue.NIL;
        }
        return LuaString.valueUsing(byteArrayOutputStream.toByteArray());
    }

    /* renamed from: D */
    public final Varargs m22478D(File file, boolean z, Varargs varargs) {
        try {
            return new IoLibV(file, "lnext", 19, this, z, varargs);
        } catch (Exception e) {
            return LuaValue.error("lines: " + e);
        }
    }

    public Varargs _file_seek(LuaValue luaValue, String str, int i) {
        if (!"set".equals(str) && !"end".equals(str) && !"cur".equals(str)) {
            LuaValue.argerror(1, "invalid value: '" + str + "'; must be one of 'set', 'cur' or 'end'");
        }
        return LuaValue.valueOf(m22472s(luaValue).seek(str, i));
    }

    public Varargs _file_setvbuf(LuaValue luaValue, String str, int i) {
        if (!"no".equals(str) && !"full".equals(str) && !"line".equals(str)) {
            LuaValue.argerror(1, "invalid value: '" + str + "'; must be one of 'no', 'full' or 'line'");
        }
        m22472s(luaValue).setvbuf(str, i);
        return LuaValue.TRUE;
    }

    public Varargs _io_index(LuaValue luaValue) {
        if (luaValue.equals(f8205D)) {
            return m22476H();
        }
        if (luaValue.equals(f8204C)) {
            return m22466y();
        }
        if (luaValue.equals(f8206E)) {
            return m22468w();
        }
        return LuaValue.NIL;
    }

    public Varargs _io_popen(String str, String str2) {
        if (!"r".equals(str2) && !"w".equals(str2)) {
            LuaValue.argerror(2, "invalid value: '" + str2 + "'; must be one of 'r' or 'w'");
        }
        return mo22413F(str, str2);
    }

    @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        this.f8210B = luaValue2.checkglobals();
        LuaTable luaTable = new LuaTable();
        m22463r(luaTable, IoLibV.class, IO_NAMES);
        LuaTable luaTable2 = new LuaTable();
        this.f8209A = luaTable2;
        m22464q(luaTable2, IoLibV.class, FILE_NAMES, 11);
        LuaTable luaTable3 = new LuaTable();
        m22464q(luaTable3, IoLibV.class, new String[]{"__index"}, 18);
        luaTable.setmetatable(luaTable3);
        m22474J(luaTable);
        m22474J(this.f8209A);
        m22474J(luaTable3);
        luaValue2.set("io", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get("loaded").set("io", luaTable);
        }
        return luaTable;
    }

    /* renamed from: C */
    public static Varargs m22479C(File file, Varargs varargs) {
        int narg = varargs.narg();
        for (int i = 1; i <= narg; i++) {
            file.write(varargs.checkstring(i));
        }
        return file;
    }

    public static LuaValue freadall(File file) {
        int remaining = file.remaining();
        if (remaining >= 0) {
            if (remaining == 0) {
                return LuaValue.EMPTYSTRING;
            }
            return freadbytes(file, remaining);
        }
        return freaduntil(file, false, false);
    }

    /* renamed from: s */
    public static File m22472s(LuaValue luaValue) {
        File m22477G = m22477G(luaValue);
        if (m22477G == null) {
            LuaValue.argerror(1, "file");
        }
        m22471t(m22477G);
        return m22477G;
    }

    /* renamed from: t */
    public static File m22471t(File file) {
        if (file.isclosed()) {
            LuaValue.error("attempt to use a closed file");
        }
        return file;
    }

    /* renamed from: u */
    public static Varargs m22470u(Exception exc) {
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder();
        sb.append("io error: ");
        if (message == null) {
            message = exc.toString();
        }
        sb.append(message);
        return m22469v(sb.toString());
    }

    /* renamed from: x */
    public static void m22467x(File file, String str, ByteArrayOutputStream byteArrayOutputStream) {
        while (true) {
            int peek = file.peek();
            if (str.indexOf(peek) < 0) {
                return;
            }
            file.read();
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.write(peek);
            }
        }
    }

    /* renamed from: z */
    public static Varargs m22465z(File file) {
        if (file.isstdfile()) {
            return m22469v("cannot close standard file");
        }
        file.close();
        return m22473K();
    }

    /* renamed from: A */
    public final File m22481A(int i, String str, String str2) {
        try {
            return m22475I(i, str, str2);
        } catch (Exception e) {
            LuaValue.error("io error: " + e.getMessage());
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0065, code lost:
        return com.prineside.luaj.LuaValue.argerror(r4, "(invalid format)");
     */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.prineside.luaj.Varargs m22480B(com.prineside.luaj.lib.IoLib.File r10, com.prineside.luaj.Varargs r11) {
        /*
            r9 = this;
            int r0 = r11.narg()
            r1 = 0
            if (r0 != 0) goto Lc
            com.prineside.luaj.LuaValue r10 = freadline(r10, r1)
            return r10
        Lc:
            com.prineside.luaj.LuaValue[] r2 = new com.prineside.luaj.LuaValue[r0]
            r3 = 0
        Lf:
            if (r3 >= r0) goto L7a
            int r4 = r3 + 1
            com.prineside.luaj.LuaValue r5 = r11.arg(r4)
            int r6 = r5.type()
            r7 = 3
            if (r6 == r7) goto L66
            r7 = 4
            if (r6 == r7) goto L22
            goto L5f
        L22:
            com.prineside.luaj.LuaString r5 = r5.checkstring()
            int r6 = r5.m_length
            r7 = 2
            if (r6 < r7) goto L5f
            byte[] r6 = r5.m_bytes
            int r5 = r5.m_offset
            r7 = r6[r5]
            r8 = 42
            if (r7 != r8) goto L5f
            int r5 = r5 + 1
            r5 = r6[r5]
            r6 = 76
            if (r5 == r6) goto L59
            r6 = 97
            if (r5 == r6) goto L54
            r6 = 108(0x6c, float:1.51E-43)
            if (r5 == r6) goto L4f
            r6 = 110(0x6e, float:1.54E-43)
            if (r5 == r6) goto L4a
            goto L5f
        L4a:
            com.prineside.luaj.LuaValue r5 = freadnumber(r10)
            goto L6e
        L4f:
            com.prineside.luaj.LuaValue r5 = freadline(r10, r1)
            goto L6e
        L54:
            com.prineside.luaj.LuaValue r5 = freadall(r10)
            goto L6e
        L59:
            r5 = 1
            com.prineside.luaj.LuaValue r5 = freadline(r10, r5)
            goto L6e
        L5f:
            java.lang.String r10 = "(invalid format)"
            com.prineside.luaj.LuaValue r10 = com.prineside.luaj.LuaValue.argerror(r4, r10)
            return r10
        L66:
            int r5 = r5.toint()
            com.prineside.luaj.LuaValue r5 = freadbytes(r10, r5)
        L6e:
            r2[r3] = r5
            boolean r3 = r5.isnil()
            if (r3 == 0) goto L78
            r3 = r4
            goto L7a
        L78:
            r3 = r4
            goto Lf
        L7a:
            if (r3 != 0) goto L7f
            com.prineside.luaj.LuaValue r10 = com.prineside.luaj.LuaValue.NIL
            goto L83
        L7f:
            com.prineside.luaj.Varargs r10 = com.prineside.luaj.LuaValue.varargsOf(r2, r1, r3)
        L83:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.lib.IoLib.m22480B(com.prineside.luaj.lib.IoLib$File, com.prineside.luaj.Varargs):com.prineside.luaj.Varargs");
    }

    /* renamed from: I */
    public final File m22475I(int i, String str, String str2) {
        boolean z;
        int length = str2.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str2.charAt(i2);
            if ((i2 != 0 || "rwa".indexOf(charAt) < 0) && ((i2 != 1 || charAt != '+') && (i2 < 1 || charAt != 'b'))) {
                length = -1;
                break;
            }
        }
        if (length <= 0) {
            LuaValue.argerror(2, "invalid mode: '" + str2 + "'");
        }
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    boolean startsWith = str2.startsWith("r");
                    boolean startsWith2 = str2.startsWith("a");
                    if (str2.indexOf(43) > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    return mo22414E(str, startsWith, startsWith2, z, str2.endsWith("b"));
                }
                return mo22411M();
            }
            return mo22409O();
        }
        return mo22410N();
    }

    /* renamed from: J */
    public final void m22474J(LuaTable luaTable) {
        for (LuaValue luaValue : luaTable.keys()) {
            ((IoLibV) luaTable.get(luaValue)).iolib = this;
        }
    }

    public Varargs _file_flush(LuaValue luaValue) {
        m22472s(luaValue).flush();
        return LuaValue.TRUE;
    }

    public Varargs _io_close(LuaValue luaValue) {
        File m22472s;
        if (luaValue.isnil()) {
            m22472s = m22476H();
        } else {
            m22472s = m22472s(luaValue);
        }
        m22471t(m22472s);
        return m22465z(m22472s);
    }

    public Varargs _io_flush() {
        m22471t(m22476H());
        this.f8212y.flush();
        return LuaValue.TRUE;
    }

    public Varargs _io_input(LuaValue luaValue) {
        File m22472s;
        if (luaValue.isnil()) {
            m22472s = m22466y();
        } else if (luaValue.isstring()) {
            m22472s = m22481A(3, luaValue.checkjstring(), "r");
        } else {
            m22472s = m22472s(luaValue);
        }
        this.f8211x = m22472s;
        return m22472s;
    }

    public Varargs _io_output(LuaValue luaValue) {
        File m22472s;
        if (luaValue.isnil()) {
            m22472s = m22476H();
        } else if (luaValue.isstring()) {
            m22472s = m22481A(3, luaValue.checkjstring(), "w");
        } else {
            m22472s = m22472s(luaValue);
        }
        this.f8212y = m22472s;
        return m22472s;
    }

    public Varargs _io_read(Varargs varargs) {
        m22471t(m22466y());
        return m22480B(this.f8211x, varargs);
    }

    public Varargs _io_type(LuaValue luaValue) {
        File m22477G = m22477G(luaValue);
        if (m22477G != null) {
            if (m22477G.isclosed()) {
                return f8208G;
            }
            return f8207F;
        }
        return LuaValue.NIL;
    }

    public Varargs _io_write(Varargs varargs) {
        m22471t(m22476H());
        return m22479C(this.f8212y, varargs);
    }

    public Varargs _lines_iter(LuaValue luaValue, boolean z, Varargs varargs) {
        File m22477G = m22477G(luaValue);
        if (m22477G == null) {
            LuaValue.argerror(1, "not a file: " + luaValue);
        }
        if (m22477G.isclosed()) {
            LuaValue.error("file is already closed");
        }
        Varargs m22480B = m22480B(m22477G, varargs);
        if (z && m22480B.isnil(1) && m22477G.eof()) {
            m22477G.close();
        }
        return m22480B;
    }
}
