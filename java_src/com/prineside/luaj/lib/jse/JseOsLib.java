package com.prineside.luaj.lib.jse;

import com.prineside.luaj.Globals;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.luaj.lib.OsLib;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class JseOsLib extends OsLib {
    public static final int EXEC_ERROR = -3;
    public static final int EXEC_INTERRUPTED = -2;
    public static final int EXEC_IOEXCEPTION = 1;

    @Override // com.prineside.luaj.lib.OsLib
    /* renamed from: A */
    public void mo22396A(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.delete()) {
                return;
            }
            throw new IOException("Failed to delete");
        }
        throw new IOException("No such file or directory");
    }

    @Override // com.prineside.luaj.lib.OsLib
    /* renamed from: B */
    public void mo22395B(String str, String str2) {
        File file = new File(str);
        if (file.exists()) {
            if (file.renameTo(new File(str2))) {
                return;
            }
            throw new IOException("Failed to rename");
        }
        throw new IOException("No such file or directory");
    }

    @Override // com.prineside.luaj.lib.OsLib
    /* renamed from: F */
    public String mo22394F() {
        try {
            return File.createTempFile(OsLib.TMP_PREFIX, OsLib.TMP_SUFFIX).getAbsolutePath();
        } catch (IOException unused) {
            return super.mo22394F();
        }
    }

    @Override // com.prineside.luaj.lib.OsLib
    /* renamed from: w */
    public Varargs mo22393w(String str) {
        int i;
        try {
            Globals globals = this.f8230x;
            i = new JseProcess(str, (InputStream) null, globals.STDOUT, globals.STDERR).waitFor();
        } catch (IOException unused) {
            i = 1;
        } catch (InterruptedException unused2) {
            i = -2;
        } catch (Throwable unused3) {
            i = -3;
        }
        if (i == 0) {
            return LuaValue.varargsOf(LuaValue.TRUE, LuaValue.valueOf("exit"), LuaValue.ZERO);
        }
        return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("signal"), LuaValue.valueOf(i));
    }

    @Override // com.prineside.luaj.lib.OsLib
    /* renamed from: y */
    public String mo22392y(String str) {
        String str2 = System.getenv(str);
        if (str2 == null) {
            return System.getProperty(str);
        }
        return str2;
    }
}
