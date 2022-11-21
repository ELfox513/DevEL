package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 1)
/* loaded from: classes2.dex */
public class LocVars implements KryoSerializable {
    public int endpc;
    public int startpc;
    public LuaString varname;

    public LocVars() {
    }

    public String tojstring() {
        return this.varname + " " + this.startpc + "-" + this.endpc;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.varname = (LuaString) kryo.readObjectOrNull(input, LuaString.class);
        this.startpc = input.readInt();
        this.endpc = input.readInt();
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.varname, LuaString.class);
        output.writeInt(this.startpc);
        output.writeInt(this.endpc);
    }

    public LocVars(LuaString luaString, int i, int i2) {
        this.varname = luaString;
        this.startpc = i;
        this.endpc = i2;
    }
}
