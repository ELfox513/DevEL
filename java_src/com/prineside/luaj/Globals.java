package com.prineside.luaj;

import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.prineside.luaj.LoadState;
import com.prineside.luaj.compiler.LuaC;
import com.prineside.luaj.lib.BaseLib;
import com.prineside.luaj.lib.DebugLib;
import com.prineside.luaj.lib.PackageLib;
import com.prineside.luaj.lib.ResourceFinder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.Reader;
@REGS
/* loaded from: classes2.dex */
public final class Globals extends LuaTable {
    public BaseLib baselib;
    public Compiler compiler;
    public DebugLib debuglib;
    public ResourceFinder finder;
    @NAGS
    public int instanceId;
    public Loader loader;
    public PackageLib package_;
    public Undumper undumper;
    @NAGS
    public InputStream STDIN = null;
    @NAGS
    public PrintStream STDOUT = System.out;
    @NAGS
    public PrintStream STDERR = System.err;
    public LuaThread running = new LuaThread(this);
    public Array<LuaValue> specialValues = new Array<>(true, 1, LuaValue.class);

    /* loaded from: classes2.dex */
    public static abstract class AbstractBufferedStream extends InputStream {

        /* renamed from: a */
        public byte[] f7936a;

        /* renamed from: b */
        public int f7937b = 0;

        /* renamed from: d */
        public int f7938d = 0;

        @Override // java.io.InputStream
        public int available() {
            return this.f7938d - this.f7937b;
        }

        /* renamed from: c */
        public abstract int mo22827c();

        @Override // java.io.InputStream
        public int read() {
            if (mo22827c() <= 0) {
                return -1;
            }
            byte[] bArr = this.f7936a;
            int i = this.f7937b;
            this.f7937b = i + 1;
            return bArr[i] & DefaultClassResolver.NAME;
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            long min = Math.min(j, this.f7938d - this.f7937b);
            this.f7937b = (int) (this.f7937b + min);
            return min;
        }

        public AbstractBufferedStream(int i) {
            this.f7936a = new byte[i];
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) {
            return read(bArr, 0, bArr.length);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int mo22827c = mo22827c();
            if (mo22827c <= 0) {
                return -1;
            }
            int min = Math.min(mo22827c, i2);
            System.arraycopy(this.f7936a, this.f7937b, bArr, i, min);
            this.f7937b += min;
            return min;
        }
    }

    /* loaded from: classes2.dex */
    public static class BufferedStream extends AbstractBufferedStream {

        /* renamed from: k */
        public final InputStream f7939k;

        public BufferedStream(InputStream inputStream) {
            this(128, inputStream);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f7939k.close();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i) {
            byte[] bArr;
            int i2 = this.f7937b;
            if (i2 > 0 || i > this.f7936a.length) {
                byte[] bArr2 = this.f7936a;
                if (i > bArr2.length) {
                    bArr = new byte[i];
                } else {
                    bArr = bArr2;
                }
                System.arraycopy(bArr2, i2, bArr, 0, this.f7938d - i2);
                this.f7938d -= this.f7937b;
                this.f7937b = 0;
                this.f7936a = bArr;
            }
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            this.f7937b = 0;
        }

        public BufferedStream(int i, InputStream inputStream) {
            super(i);
            this.f7939k = inputStream;
        }

        @Override // com.prineside.luaj.Globals.AbstractBufferedStream
        /* renamed from: c */
        public int mo22827c() {
            int i = this.f7937b;
            int i2 = this.f7938d;
            if (i < i2) {
                return i2 - i;
            }
            byte[] bArr = this.f7936a;
            if (i2 >= bArr.length) {
                this.f7938d = 0;
                this.f7937b = 0;
            }
            InputStream inputStream = this.f7939k;
            int i3 = this.f7938d;
            int read = inputStream.read(bArr, i3, bArr.length - i3);
            if (read < 0) {
                return -1;
            }
            if (read == 0) {
                int read2 = this.f7939k.read();
                if (read2 < 0) {
                    return -1;
                }
                this.f7936a[this.f7938d] = (byte) read2;
                read = 1;
            }
            this.f7938d += read;
            return read;
        }
    }

    /* loaded from: classes2.dex */
    public interface Compiler {
        Prototype compile(InputStream inputStream, String str);
    }

    /* loaded from: classes2.dex */
    public interface Loader {
        LuaFunction load(Prototype prototype, String str, LuaValue luaValue);
    }

    /* loaded from: classes2.dex */
    public static class StrReader extends Reader {

        /* renamed from: a */
        public final String f7940a;

        /* renamed from: b */
        public int f7941b = 0;

        /* renamed from: d */
        public final int f7942d;

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f7941b = this.f7942d;
        }

        @Override // java.io.Reader
        public int read() {
            int i = this.f7941b;
            if (i < this.f7942d) {
                String str = this.f7940a;
                this.f7941b = i + 1;
                return str.charAt(i);
            }
            return -1;
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) {
            int i3 = 0;
            while (i3 < i2) {
                int i4 = this.f7941b;
                if (i4 >= this.f7942d) {
                    break;
                }
                cArr[i + i3] = this.f7940a.charAt(i4);
                i3++;
                this.f7941b++;
            }
            if (i3 > 0 || i2 == 0) {
                return i3;
            }
            return -1;
        }

        public StrReader(String str) {
            this.f7940a = str;
            this.f7942d = str.length();
        }
    }

    /* loaded from: classes2.dex */
    public static class UTF8Stream extends AbstractBufferedStream {

        /* renamed from: k */
        public final char[] f7943k;

        /* renamed from: p */
        public final Reader f7944p;

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f7944p.close();
        }

        public UTF8Stream(Reader reader) {
            super(96);
            this.f7943k = new char[32];
            this.f7944p = reader;
        }

        @Override // com.prineside.luaj.Globals.AbstractBufferedStream
        /* renamed from: c */
        public int mo22827c() {
            int i = this.f7937b;
            int i2 = this.f7938d;
            if (i < i2) {
                return i2 - i;
            }
            int read = this.f7944p.read(this.f7943k);
            if (read < 0) {
                return -1;
            }
            if (read == 0) {
                int read2 = this.f7944p.read();
                if (read2 < 0) {
                    return -1;
                }
                this.f7943k[0] = (char) read2;
                read = 1;
            }
            char[] cArr = this.f7943k;
            byte[] bArr = this.f7936a;
            this.f7937b = 0;
            int encodeToUtf8 = LuaString.encodeToUtf8(cArr, read, bArr, 0);
            this.f7938d = encodeToUtf8;
            return encodeToUtf8;
        }
    }

    /* loaded from: classes2.dex */
    public interface Undumper {
        Prototype undump(InputStream inputStream, String str);
    }

    public Globals() {
    }

    @Override // com.prineside.luaj.LuaValue
    public Globals checkglobals() {
        return this;
    }

    public Prototype compilePrototype(Reader reader, String str) {
        return compilePrototype(new UTF8Stream(reader), str);
    }

    public LuaValue getSpecialValue(int i) {
        return this.specialValues.items[i];
    }

    public LuaValue load(String str, String str2) {
        return load(new StrReader(str), str2);
    }

    public int addSpecialValue(LuaValue luaValue) {
        Array<LuaValue> array = this.specialValues;
        int i = array.size;
        array.add(luaValue);
        return i;
    }

    public Prototype compilePrototype(InputStream inputStream, String str) {
        if (this.compiler == null) {
            LuaValue.error("No compiler.");
        }
        return this.compiler.compile(inputStream, str);
    }

    public LuaValue load(String str) {
        return load(new StrReader(str), str);
    }

    public Prototype loadPrototype(InputStream inputStream, String str, String str2) {
        if (str2.indexOf(98) >= 0) {
            if (this.undumper == null) {
                LuaValue.error("No undumper.");
            }
            if (!inputStream.markSupported()) {
                inputStream = new BufferedStream(inputStream);
            }
            inputStream.mark(4);
            Prototype undump = this.undumper.undump(inputStream, str);
            if (undump != null) {
                return undump;
            }
            inputStream.reset();
        }
        if (str2.indexOf(116) >= 0) {
            return compilePrototype(inputStream, str);
        }
        LuaValue.error("Failed to load prototype " + str + " using mode '" + str2 + "'");
        return null;
    }

    public LuaValue loadfile(String str) {
        try {
            InputStream findResource = this.finder.findResource(str);
            return load(findResource, "@" + str, "bt", this);
        } catch (Exception e) {
            return LuaValue.error("load " + str + ": " + e);
        }
    }

    public Varargs yield(Varargs varargs) {
        LuaThread luaThread = this.running;
        if (luaThread != null && !luaThread.isMainThread()) {
            return this.running.state.lua_yield(varargs);
        }
        throw new LuaError("cannot yield main thread");
    }

    public LuaValue load(String str, String str2, LuaTable luaTable) {
        return load(new StrReader(str), str2, luaTable);
    }

    @Override // com.prineside.luaj.LuaTable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        int readInt = input.readInt() + CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
        this.instanceId = readInt;
        Game.f8589i.scriptManager.registerInstance(readInt, this);
        this.finder = (ResourceFinder) kryo.readClassAndObject(input);
        this.running = (LuaThread) kryo.readClassAndObject(input);
        this.baselib = (BaseLib) kryo.readClassAndObject(input);
        this.package_ = (PackageLib) kryo.readClassAndObject(input);
        this.debuglib = (DebugLib) kryo.readClassAndObject(input);
        this.specialValues = (Array) kryo.readClassAndObject(input);
        LuaC luaC = new LuaC();
        this.loader = luaC;
        this.compiler = luaC;
        this.undumper = new LoadState.GlobalsUndumper();
    }

    @Override // com.prineside.luaj.LuaTable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeInt(this.instanceId);
        kryo.writeClassAndObject(output, this.finder);
        kryo.writeClassAndObject(output, this.running);
        kryo.writeClassAndObject(output, this.baselib);
        kryo.writeClassAndObject(output, this.package_);
        kryo.writeClassAndObject(output, this.debuglib);
        kryo.writeClassAndObject(output, this.specialValues);
    }

    public LuaValue load(Reader reader, String str) {
        return load(new UTF8Stream(reader), str, "t", this);
    }

    public LuaValue load(Reader reader, String str, LuaTable luaTable) {
        return load(new UTF8Stream(reader), str, "t", luaTable);
    }

    public LuaValue load(InputStream inputStream, String str, String str2, LuaValue luaValue) {
        try {
            return this.loader.load(loadPrototype(inputStream, str, str2), str, luaValue);
        } catch (LuaError e) {
            throw e;
        } catch (Exception e2) {
            return LuaValue.error("load " + str + ": " + e2);
        }
    }

    public Globals(int i) {
        this.instanceId = i;
        Game.f8589i.scriptManager.registerInstance(i, this);
    }
}
