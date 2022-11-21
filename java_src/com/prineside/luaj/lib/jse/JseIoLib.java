package com.prineside.luaj.lib.jse;

import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaString;
import com.prineside.luaj.lib.IoLib;
import com.prineside.luaj.lib.OsLib;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
/* loaded from: classes2.dex */
public class JseIoLib extends IoLib {

    /* loaded from: classes2.dex */
    public final class FileImpl extends IoLib.File {

        /* renamed from: A */
        public boolean f8299A;

        /* renamed from: w */
        public final RandomAccessFile f8301w;

        /* renamed from: x */
        public final InputStream f8302x;

        /* renamed from: y */
        public final OutputStream f8303y;

        /* renamed from: z */
        public boolean f8304z;

        @Override // com.prineside.luaj.lib.IoLib.File
        public void close() {
            this.f8304z = true;
            RandomAccessFile randomAccessFile = this.f8301w;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public boolean isclosed() {
            return this.f8304z;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public boolean isstdfile() {
            return this.f8301w == null;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int read() {
            InputStream inputStream = this.f8302x;
            if (inputStream != null) {
                return inputStream.read();
            }
            RandomAccessFile randomAccessFile = this.f8301w;
            if (randomAccessFile != null) {
                return randomAccessFile.read();
            }
            JseIoLib.m22400X();
            return 0;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int remaining() {
            RandomAccessFile randomAccessFile = this.f8301w;
            if (randomAccessFile != null) {
                return (int) (randomAccessFile.length() - this.f8301w.getFilePointer());
            }
            return -1;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public void setvbuf(String str, int i) {
            this.f8299A = "no".equals(str);
        }

        @Override // com.prineside.luaj.lib.IoLib.File, com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
        public String tojstring() {
            StringBuilder sb = new StringBuilder();
            sb.append("file (");
            sb.append(this.f8304z ? "closed" : String.valueOf(hashCode()));
            sb.append(")");
            return sb.toString();
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public void flush() {
            OutputStream outputStream = this.f8303y;
            if (outputStream != null) {
                outputStream.flush();
            }
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int peek() {
            InputStream inputStream = this.f8302x;
            if (inputStream != null) {
                inputStream.mark(1);
                int read = this.f8302x.read();
                this.f8302x.reset();
                return read;
            }
            RandomAccessFile randomAccessFile = this.f8301w;
            if (randomAccessFile != null) {
                long filePointer = randomAccessFile.getFilePointer();
                int read2 = this.f8301w.read();
                this.f8301w.seek(filePointer);
                return read2;
            }
            JseIoLib.m22400X();
            return 0;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int seek(String str, int i) {
            if (this.f8301w != null) {
                if ("set".equals(str)) {
                    this.f8301w.seek(i);
                } else if ("end".equals(str)) {
                    RandomAccessFile randomAccessFile = this.f8301w;
                    randomAccessFile.seek(randomAccessFile.length() + i);
                } else {
                    RandomAccessFile randomAccessFile2 = this.f8301w;
                    randomAccessFile2.seek(randomAccessFile2.getFilePointer() + i);
                }
                return (int) this.f8301w.getFilePointer();
            }
            JseIoLib.m22400X();
            return 0;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public void write(LuaString luaString) {
            OutputStream outputStream = this.f8303y;
            if (outputStream != null) {
                outputStream.write(luaString.m_bytes, luaString.m_offset, luaString.m_length);
            } else {
                RandomAccessFile randomAccessFile = this.f8301w;
                if (randomAccessFile != null) {
                    randomAccessFile.write(luaString.m_bytes, luaString.m_offset, luaString.m_length);
                } else {
                    JseIoLib.m22400X();
                }
            }
            if (this.f8299A) {
                flush();
            }
        }

        public FileImpl(RandomAccessFile randomAccessFile, InputStream inputStream, OutputStream outputStream) {
            super();
            this.f8304z = false;
            this.f8299A = false;
            this.f8301w = randomAccessFile;
            if (inputStream == null) {
                inputStream = null;
            } else if (!inputStream.markSupported()) {
                inputStream = new BufferedInputStream(inputStream);
            }
            this.f8302x = inputStream;
            this.f8303y = outputStream;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int read(byte[] bArr, int i, int i2) {
            RandomAccessFile randomAccessFile = this.f8301w;
            if (randomAccessFile != null) {
                return randomAccessFile.read(bArr, i, i2);
            }
            InputStream inputStream = this.f8302x;
            if (inputStream != null) {
                return inputStream.read(bArr, i, i2);
            }
            JseIoLib.m22400X();
            return i2;
        }

        public FileImpl(JseIoLib jseIoLib, RandomAccessFile randomAccessFile) {
            this(randomAccessFile, null, null);
        }

        public FileImpl(JseIoLib jseIoLib, InputStream inputStream) {
            this(null, inputStream, null);
        }

        public FileImpl(JseIoLib jseIoLib, OutputStream outputStream) {
            this(null, null, outputStream);
        }
    }

    /* loaded from: classes2.dex */
    public final class StdinFile extends IoLib.File {
        @Override // com.prineside.luaj.lib.IoLib.File
        public void close() {
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public void flush() {
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public boolean isclosed() {
            return false;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public boolean isstdfile() {
            return true;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int read() {
            return JseIoLib.this.f8210B.STDIN.read();
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int remaining() {
            return -1;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int seek(String str, int i) {
            return 0;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public void setvbuf(String str, int i) {
        }

        @Override // com.prineside.luaj.lib.IoLib.File, com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
        public String tojstring() {
            return "file (" + hashCode() + ")";
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public void write(LuaString luaString) {
        }

        public StdinFile() {
            super();
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int peek() {
            JseIoLib.this.f8210B.STDIN.mark(1);
            int read = JseIoLib.this.f8210B.STDIN.read();
            JseIoLib.this.f8210B.STDIN.reset();
            return read;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int read(byte[] bArr, int i, int i2) {
            return JseIoLib.this.f8210B.STDIN.read(bArr, i, i2);
        }
    }

    /* loaded from: classes2.dex */
    public final class StdoutFile extends IoLib.File {

        /* renamed from: w */
        public final int f8306w;

        @Override // com.prineside.luaj.lib.IoLib.File
        public void close() {
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public void flush() {
            m22399q().flush();
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public boolean isclosed() {
            return false;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public boolean isstdfile() {
            return true;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int peek() {
            return 0;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int read() {
            return 0;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int read(byte[] bArr, int i, int i2) {
            return 0;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int remaining() {
            return 0;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public int seek(String str, int i) {
            return 0;
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public void setvbuf(String str, int i) {
        }

        @Override // com.prineside.luaj.lib.IoLib.File, com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
        public String tojstring() {
            return "file (" + hashCode() + ")";
        }

        @Override // com.prineside.luaj.lib.IoLib.File
        public void write(LuaString luaString) {
            m22399q().write(luaString.m_bytes, luaString.m_offset, luaString.m_length);
        }

        public StdoutFile(int i) {
            super();
            this.f8306w = i;
        }

        /* renamed from: q */
        public final PrintStream m22399q() {
            if (this.f8306w == 2) {
                return JseIoLib.this.f8210B.STDERR;
            }
            return JseIoLib.this.f8210B.STDOUT;
        }
    }

    /* renamed from: X */
    public static void m22400X() {
        throw new LuaError("not implemented");
    }

    @Override // com.prineside.luaj.lib.IoLib
    /* renamed from: M */
    public IoLib.File mo22411M() {
        return new StdoutFile(2);
    }

    @Override // com.prineside.luaj.lib.IoLib
    /* renamed from: N */
    public IoLib.File mo22410N() {
        return new StdinFile();
    }

    @Override // com.prineside.luaj.lib.IoLib
    /* renamed from: O */
    public IoLib.File mo22409O() {
        return new StdoutFile(1);
    }

    @Override // com.prineside.luaj.lib.IoLib
    /* renamed from: E */
    public IoLib.File mo22414E(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        String str2;
        if (z) {
            str2 = "r";
        } else {
            str2 = "rw";
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, str2);
        if (z2) {
            randomAccessFile.seek(randomAccessFile.length());
        } else if (!z) {
            randomAccessFile.setLength(0L);
        }
        return new FileImpl(randomAccessFile);
    }

    @Override // com.prineside.luaj.lib.IoLib
    /* renamed from: L */
    public IoLib.File mo22412L() {
        File createTempFile = File.createTempFile(OsLib.TMP_PREFIX, "bin");
        createTempFile.deleteOnExit();
        return new FileImpl(new RandomAccessFile(createTempFile, "rw"));
    }

    @Override // com.prineside.luaj.lib.IoLib
    /* renamed from: F */
    public IoLib.File mo22413F(String str, String str2) {
        Process exec = Runtime.getRuntime().exec(str);
        if ("w".equals(str2)) {
            return new FileImpl(exec.getOutputStream());
        }
        return new FileImpl(exec.getInputStream());
    }
}
