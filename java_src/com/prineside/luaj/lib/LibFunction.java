package com.prineside.luaj.lib;

import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaFunction;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
/* loaded from: classes2.dex */
public abstract class LibFunction extends LuaFunction implements KryoSerializable {

    /* renamed from: u */
    public int f8218u;

    /* renamed from: w */
    public String f8219w;

    @Override // com.prineside.luaj.LuaValue
    public LuaValue call() {
        return LuaValue.argerror(1, "value expected");
    }

    /* renamed from: r */
    public void m22463r(LuaValue luaValue, Class cls, String[] strArr) {
        m22464q(luaValue, cls, strArr, 0);
    }

    @Override // com.prineside.luaj.LuaFunction, com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
    public String tojstring() {
        if (this.f8219w != null) {
            return "function: " + this.f8219w;
        }
        return super.tojstring();
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue) {
        return call();
    }

    /* renamed from: q */
    public Array<LibFunction> m22464q(LuaValue luaValue, Class cls, String[] strArr, int i) {
        try {
            Array<LibFunction> array = new Array<>(LibFunction.class);
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                LibFunction libFunction = (LibFunction) cls.newInstance();
                libFunction.f8218u = i + i2;
                String str = strArr[i2];
                libFunction.f8219w = str;
                luaValue.set(str, libFunction);
                array.add(libFunction);
            }
            return array;
        } catch (Exception e) {
            throw new LuaError("bind failed: " + e);
        }
    }

    public void write(Kryo kryo, Output output) {
        output.writeInt(this.f8218u);
        kryo.writeObjectOrNull(output, this.f8219w, String.class);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call(luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public Varargs invoke(Varargs varargs) {
        int narg = varargs.narg();
        if (narg != 0) {
            if (narg != 1) {
                if (narg != 2) {
                    if (narg != 3) {
                        return call(varargs.arg1(), varargs.arg(2), varargs.arg(3), varargs.arg(4));
                    }
                    return call(varargs.arg1(), varargs.arg(2), varargs.arg(3));
                }
                return call(varargs.arg1(), varargs.arg(2));
            }
            return call(varargs.arg1());
        }
        return call();
    }

    public void read(Kryo kryo, Input input) {
        this.f8218u = input.readInt();
        this.f8219w = (String) kryo.readObjectOrNull(input, String.class);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return call(luaValue, luaValue2);
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
        return call(luaValue, luaValue2, luaValue3);
    }
}
