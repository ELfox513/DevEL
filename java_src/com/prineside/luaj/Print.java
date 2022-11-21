package com.prineside.luaj;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes2.dex */
public class Print extends Lua {

    /* renamed from: ps */
    public static PrintStream f8014ps = System.out;
    public static final String[] OPNAMES = {"MOVE", "LOADK", "LOADKX", "LOADBOOL", "LOADNIL", "GETUPVAL", "GETTABUP", "GETTABLE", "SETTABUP", "SETUPVAL", "SETTABLE", "NEWTABLE", "SELF", "ADD", "SUB", "MUL", "DIV", "MOD", "POW", "UNM", "NOT", "LEN", "CONCAT", "JMP", "EQ", "LT", "LE", "TEST", "TESTSET", "CALL", "TAILCALL", "RETURN", "FORLOOP", "FORPREP", "TFORCALL", "TFORLOOP", "SETLIST", "CLOSURE", "VARARG", "EXTRAARG", null};

    /* renamed from: b */
    public static int m22763b(Prototype prototype, int i) {
        int[] iArr;
        if (i <= 0 || (iArr = prototype.lineinfo) == null || i >= iArr.length) {
            return -1;
        }
        return iArr[i];
    }

    /* renamed from: c */
    public static String m22762c(Prototype prototype) {
        return "Proto";
    }

    /* renamed from: d */
    public static void m22761d(PrintStream printStream, Prototype prototype, int i) {
        LuaValue valueOf;
        LuaValue[] luaValueArr = prototype.f8017k;
        if (i < luaValueArr.length) {
            valueOf = luaValueArr[i];
        } else {
            valueOf = LuaValue.valueOf("UNKNOWN_CONST_" + i);
        }
        m22754k(printStream, valueOf);
    }

    public static void print(Prototype prototype) {
        printFunction(prototype, true);
    }

    public static int printOpCode(Prototype prototype, int i) {
        return printOpCode(f8014ps, prototype, i);
    }

    /* renamed from: e */
    public static void m22760e(Prototype prototype) {
        int length = prototype.f8017k.length;
        PrintStream printStream = f8014ps;
        printStream.print("constants (" + length + ") for " + m22762c(prototype) + ":\n");
        int i = 0;
        while (i < length) {
            PrintStream printStream2 = f8014ps;
            StringBuilder sb = new StringBuilder();
            sb.append("  ");
            int i2 = i + 1;
            sb.append(i2);
            sb.append("  ");
            printStream2.print(sb.toString());
            m22754k(f8014ps, prototype.f8017k[i]);
            f8014ps.print("\n");
            i = i2;
        }
    }

    /* renamed from: f */
    public static void m22759f(Prototype prototype) {
        String substring;
        String str;
        String valueOf = String.valueOf(prototype.source);
        if (!valueOf.startsWith("@") && !valueOf.startsWith("=")) {
            if ("\u001bLua".equals(valueOf)) {
                substring = "(bstring)";
            } else {
                substring = "(string)";
            }
        } else {
            substring = valueOf.substring(1);
        }
        if (prototype.linedefined == 0) {
            str = "main";
        } else {
            str = "function";
        }
        PrintStream printStream = f8014ps;
        printStream.print("\n%" + str + " <" + substring + ":" + prototype.linedefined + "," + prototype.lastlinedefined + "> (" + prototype.code.length + " instructions, " + (prototype.code.length * 4) + " bytes at " + m22762c(prototype) + ")\n");
        PrintStream printStream2 = f8014ps;
        StringBuilder sb = new StringBuilder();
        sb.append(prototype.numparams);
        sb.append(" param, ");
        sb.append(prototype.maxstacksize);
        sb.append(" slot, ");
        sb.append(prototype.upvalues.length);
        sb.append(" upvalue, ");
        printStream2.print(sb.toString());
        PrintStream printStream3 = f8014ps;
        printStream3.print(prototype.locvars.length + " local, " + prototype.f8017k.length + " constant, " + prototype.f8018p.length + " function\n");
    }

    /* renamed from: g */
    public static void m22758g(Prototype prototype) {
        int length = prototype.locvars.length;
        PrintStream printStream = f8014ps;
        printStream.print("locals (" + length + ") for " + m22762c(prototype) + ":\n");
        for (int i = 0; i < length; i++) {
            PrintStream printStream2 = f8014ps;
            printStream2.println("  " + i + "  " + prototype.locvars[i].varname + " " + (prototype.locvars[i].startpc + 1) + " " + (prototype.locvars[i].endpc + 1));
        }
    }

    /* renamed from: h */
    public static void m22757h(PrintStream printStream, LuaString luaString) {
        printStream.print('\"');
        int i = luaString.m_length;
        for (int i2 = 0; i2 < i; i2++) {
            byte b = luaString.m_bytes[luaString.m_offset + i2];
            if (b >= 32 && b <= 126 && b != 34 && b != 92) {
                printStream.print((char) b);
            } else if (b != 34) {
                if (b != 92) {
                    switch (b) {
                        case 7:
                            printStream.print("\\a");
                            continue;
                        case 8:
                            printStream.print("\\b");
                            continue;
                        case 9:
                            printStream.print("\\t");
                            continue;
                        case 10:
                            printStream.print("\\n");
                            continue;
                        case 11:
                            printStream.print("\\v");
                            continue;
                        case 12:
                            printStream.print("\\f");
                            continue;
                        case 13:
                            printStream.print("\\r");
                            continue;
                        default:
                            printStream.print('\\');
                            printStream.print(Integer.toString(b & 1255).substring(1));
                            continue;
                    }
                } else {
                    printStream.print("\\\\");
                }
            } else {
                printStream.print("\\\"");
            }
        }
        printStream.print('\"');
    }

    /* renamed from: i */
    public static void m22756i(Prototype prototype) {
        int length = prototype.upvalues.length;
        PrintStream printStream = f8014ps;
        printStream.print("upvalues (" + length + ") for " + m22762c(prototype) + ":\n");
        for (int i = 0; i < length; i++) {
            PrintStream printStream2 = f8014ps;
            printStream2.print("  " + i + "  " + prototype.upvalues[i] + "\n");
        }
    }

    /* renamed from: j */
    public static void m22755j(PrintStream printStream, Upvaldesc upvaldesc) {
        printStream.print(((int) upvaldesc.idx) + " ");
        m22754k(printStream, upvaldesc.name);
    }

    /* renamed from: k */
    public static void m22754k(PrintStream printStream, LuaValue luaValue) {
        if (luaValue == null) {
            printStream.print("null");
        } else if (luaValue.type() != 4) {
            printStream.print(luaValue.tojstring());
        } else {
            m22757h(printStream, (LuaString) luaValue);
        }
    }

    public static void printCode(Prototype prototype) {
        int length = prototype.code.length;
        int i = 0;
        while (i < length) {
            int printOpCode = printOpCode(prototype, i);
            f8014ps.println();
            i = printOpCode + 1;
        }
    }

    public static void printFunction(Prototype prototype, boolean z) {
        int length = prototype.f8018p.length;
        m22759f(prototype);
        printCode(prototype);
        if (z) {
            m22760e(prototype);
            m22758g(prototype);
            m22756i(prototype);
        }
        for (int i = 0; i < length; i++) {
            printFunction(prototype.f8018p[i], z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0233  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int printOpCode(java.io.PrintStream r13, com.prineside.luaj.Prototype r14, int r15) {
        /*
            Method dump skipped, instructions count: 804
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.Print.printOpCode(java.io.PrintStream, com.prineside.luaj.Prototype, int):int");
    }

    public static void printStack(LuaValue[] luaValueArr, int i, Varargs varargs) {
        String str;
        f8014ps.print(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        int i2 = 0;
        while (i2 < luaValueArr.length) {
            LuaValue luaValue = luaValueArr[i2];
            if (luaValue == null) {
                f8014ps.print("null");
            } else {
                int type = luaValue.type();
                if (type != 4) {
                    if (type != 6) {
                        if (type != 7) {
                            f8014ps.print(luaValue.tojstring());
                        } else {
                            Object obj = luaValue.touserdata();
                            if (obj != null) {
                                String name = obj.getClass().getName();
                                String substring = name.substring(name.lastIndexOf(46) + 1);
                                f8014ps.print(substring + ": " + Integer.toHexString(obj.hashCode()));
                            } else {
                                f8014ps.print(luaValue.toString());
                            }
                        }
                    } else {
                        f8014ps.print(luaValue.tojstring());
                    }
                } else {
                    LuaString checkstring = luaValue.checkstring();
                    PrintStream printStream = f8014ps;
                    if (checkstring.length() < 48) {
                        str = checkstring.tojstring();
                    } else {
                        str = checkstring.substring(0, 32).tojstring() + "...+" + (checkstring.length() - 32) + "b";
                    }
                    printStream.print(str);
                }
            }
            i2++;
            if (i2 == i) {
                f8014ps.print(']');
            }
            f8014ps.print(" | ");
        }
        f8014ps.print(varargs);
    }

    public static void printState(LuaClosure luaClosure, int i, LuaValue[] luaValueArr, int i2, Varargs varargs) {
        PrintStream printStream = f8014ps;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        f8014ps = new PrintStream(byteArrayOutputStream);
        printOpCode(luaClosure.f7965p, i);
        f8014ps.flush();
        f8014ps.close();
        f8014ps = printStream;
        m22764a(byteArrayOutputStream.toString(), 50);
        printStack(luaValueArr, i2, varargs);
        f8014ps.println();
    }

    /* renamed from: a */
    public static void m22764a(String str, int i) {
        int length = str.length();
        if (length > i) {
            f8014ps.print(str.substring(0, i));
            return;
        }
        f8014ps.print(str);
        int i2 = i - length;
        while (true) {
            i2--;
            if (i2 >= 0) {
                f8014ps.print(' ');
            } else {
                return;
            }
        }
    }
}
