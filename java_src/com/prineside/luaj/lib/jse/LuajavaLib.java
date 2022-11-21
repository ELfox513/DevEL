package com.prineside.luaj.lib.jse;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.Globals;
import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.luaj.lib.LibFunction;
import com.prineside.luaj.lib.VarArgFunction;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.ScriptManager;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import net.bytebuddy.implementation.auxiliary.TypeProxy;
@REGS
/* loaded from: classes2.dex */
public class LuajavaLib extends VarArgFunction {

    /* renamed from: x */
    public static final String[] f8316x = {"bindClass", TypeProxy.SilentConstruction.Appender.NEW_INSTANCE_METHOD_NAME, "new", "createProxy", "loadLib"};
    public Globals globals;

    @REGS
    /* loaded from: classes2.dex */
    public static final class ProxyInvocationHandler implements InvocationHandler, KryoSerializable {
        @NAGS

        /* renamed from: a */
        public int f8317a;

        /* renamed from: b */
        public int f8318b;

        public ProxyInvocationHandler() {
        }

        public ProxyInvocationHandler(int i, int i2) {
            this.f8317a = i;
            this.f8318b = i2;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeInt(this.f8317a);
            output.writeInt(this.f8318b);
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            int i;
            LuaValue[] luaValueArr;
            LuaValue luaValue = Game.f8589i.scriptManager.globalsInstances.get(this.f8317a).getSpecialValue(this.f8318b).get(method.getName());
            char c = 65535;
            boolean z = true;
            int i2 = 0;
            if (luaValue.isnil()) {
                String name = method.getName();
                name.hashCode();
                switch (name.hashCode()) {
                    case -1776922004:
                        if (name.equals("toString")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1295482945:
                        if (name.equals("equals")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 147696667:
                        if (name.equals("hashCode")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        return "(proxy) " + toString();
                    case 1:
                        return Boolean.valueOf(equals(objArr[0]));
                    case 2:
                        return Integer.valueOf(hashCode());
                    default:
                        return null;
                }
            }
            if ((method.getModifiers() & 128) == 0) {
                z = false;
            }
            if (objArr != null) {
                i = objArr.length;
            } else {
                i = 0;
            }
            if (z) {
                int i3 = i - 1;
                Object obj2 = objArr[i3];
                int length = Array.getLength(obj2);
                luaValueArr = new LuaValue[i3 + length];
                for (int i4 = 0; i4 < i3; i4++) {
                    luaValueArr[i4] = CoerceJavaToLua.coerce(objArr[i4]);
                }
                while (i2 < length) {
                    luaValueArr[i2 + i3] = CoerceJavaToLua.coerce(Array.get(obj2, i2));
                    i2++;
                }
            } else {
                luaValueArr = new LuaValue[i];
                while (i2 < i) {
                    luaValueArr[i2] = CoerceJavaToLua.coerce(objArr[i2]);
                    i2++;
                }
            }
            try {
                return CoerceLuaToJava.coerce(luaValue.invoke(luaValueArr).arg1(), method.getReturnType());
            } catch (Exception e) {
                Logger.error("LuajavaLib", "failed to execute proxy", e);
                return null;
            }
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8317a = input.readInt() + CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
            this.f8318b = input.readInt();
        }
    }

    /* renamed from: s */
    public Class mo21500s(String str) {
        return Class.forName(str, true, ClassLoader.getSystemClassLoader());
    }

    @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
    public Varargs invoke(Varargs varargs) {
        Class cls;
        try {
            int i = this.f8218u;
            int i2 = 0;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2 && i != 3) {
                        if (i != 4) {
                            if (i == 5) {
                                String checkjstring = varargs.checkjstring(1);
                                String checkjstring2 = varargs.checkjstring(2);
                                Class mo21500s = mo21500s(checkjstring);
                                Object invoke = mo21500s.getMethod(checkjstring2, new Class[0]).invoke(mo21500s, new Object[0]);
                                if (invoke instanceof LuaValue) {
                                    return (LuaValue) invoke;
                                }
                                return LuaValue.NIL;
                            }
                            throw new LuaError("not yet supported: " + this);
                        }
                        int narg = varargs.narg() - 1;
                        if (narg > 0) {
                            LuaTable checktable = varargs.checktable(narg + 1);
                            if (narg == 1) {
                                String checkjstring3 = varargs.checkjstring(1);
                                if (ScriptManager.SCRIPT_PROXIES.containsKey(checkjstring3)) {
                                    return LuaValue.userdataOf(ScriptManager.SCRIPT_PROXIES.get(checkjstring3).get(checktable));
                                }
                            }
                            Class[] clsArr = new Class[narg];
                            while (i2 < narg) {
                                int i3 = i2 + 1;
                                clsArr[i2] = mo21500s(varargs.checkjstring(i3));
                                i2 = i3;
                            }
                            Object newProxyInstance = Proxy.newProxyInstance(getClass().getClassLoader(), clsArr, new ProxyInvocationHandler(this.globals.instanceId, this.globals.addSpecialValue(checktable)));
                            Logger.log("LuajavaLib", "created proxy " + newProxyInstance + " " + newProxyInstance.getClass().getName());
                            return LuaValue.userdataOf(newProxyInstance);
                        }
                        throw new LuaError("no interfaces");
                    }
                    LuaValue checkvalue = varargs.checkvalue(1);
                    if (this.f8218u == 2) {
                        cls = mo21500s(checkvalue.tojstring());
                    } else {
                        cls = (Class) checkvalue.checkuserdata(Class.class);
                    }
                    return JavaClass.m22426r(cls).getConstructor().invoke(varargs.subargs(2));
                }
                return JavaClass.m22426r(mo21500s(varargs.checkjstring(1)));
            }
            LuaValue arg = varargs.arg(2);
            LuaTable luaTable = new LuaTable();
            com.badlogic.gdx.utils.Array<LibFunction> m22464q = m22464q(luaTable, getClass(), f8316x, 1);
            while (i2 < m22464q.size) {
                ((LuajavaLib) m22464q.items[i2]).globals = this.globals;
                i2++;
            }
            arg.set("luajava", luaTable);
            if (!arg.get("package").isnil()) {
                arg.get("package").get("loaded").set("luajava", luaTable);
            }
            return luaTable;
        } catch (LuaError e) {
            throw e;
        } catch (InvocationTargetException e2) {
            throw new LuaError(e2.getTargetException());
        } catch (Exception e3) {
            throw new LuaError(e3);
        }
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.globals = (Globals) kryo.readObject(input, Globals.class);
    }

    @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.globals);
    }
}
