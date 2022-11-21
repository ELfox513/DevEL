package com.prineside.luaj.lib.jse;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaUserdata;
import com.prineside.luaj.LuaValue;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import java.lang.reflect.Field;
@REGS
/* loaded from: classes2.dex */
public class JavaInstance extends LuaUserdata {
    @NAGS

    /* renamed from: u */
    public JavaClass f8293u;

    public JavaInstance() {
    }

    public JavaInstance(Object obj) {
        super(obj);
    }

    /* renamed from: q */
    public final void m22421q() {
        if (this.f8293u == null) {
            this.f8293u = JavaClass.m22426r(this.m_instance.getClass());
        }
    }

    @Override // com.prineside.luaj.LuaUserdata, com.prineside.luaj.LuaValue
    public LuaValue get(LuaValue luaValue) {
        m22421q();
        Field m22425s = this.f8293u.m22425s(luaValue);
        if (m22425s != null) {
            try {
                return CoerceJavaToLua.coerce(m22425s.get(this.m_instance));
            } catch (Exception e) {
                throw new LuaError(e);
            }
        }
        LuaValue m22423u = this.f8293u.m22423u(luaValue);
        if (m22423u != null) {
            return m22423u;
        }
        Class m22424t = this.f8293u.m22424t(luaValue);
        if (m22424t != null) {
            return JavaClass.m22426r(m22424t);
        }
        return super.get(luaValue);
    }

    @Override // com.prineside.luaj.LuaUserdata, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8293u = (JavaClass) kryo.readObjectOrNull(input, JavaClass.class);
    }

    @Override // com.prineside.luaj.LuaUserdata, com.prineside.luaj.LuaValue
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        m22421q();
        Field m22425s = this.f8293u.m22425s(luaValue);
        if (m22425s != null) {
            try {
                m22425s.set(this.m_instance, CoerceLuaToJava.coerce(luaValue2, m22425s.getType()));
                return;
            } catch (Exception e) {
                throw new LuaError(e);
            }
        }
        super.set(luaValue, luaValue2);
    }

    @Override // com.prineside.luaj.LuaUserdata, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.f8293u, JavaClass.class);
    }
}
