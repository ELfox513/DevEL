package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 1)
/* loaded from: classes2.dex */
public class Upvaldesc implements KryoSerializable {
    public short idx;
    public boolean instack;
    public LuaString name;

    public Upvaldesc() {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((int) this.idx);
        sb.append(this.instack ? " instack " : " closed ");
        sb.append(String.valueOf(this.name));
        return sb.toString();
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.name = (LuaString) kryo.readObjectOrNull(input, LuaString.class);
        this.instack = input.readBoolean();
        this.idx = input.readShort();
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.name, LuaString.class);
        output.writeBoolean(this.instack);
        output.writeShort(this.idx);
    }

    public Upvaldesc(LuaString luaString, boolean z, int i) {
        this.name = luaString;
        this.instack = z;
        this.idx = (short) i;
    }
}
