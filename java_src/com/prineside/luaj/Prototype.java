package com.prineside.luaj;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 1)
/* loaded from: classes2.dex */
public class Prototype implements KryoSerializable {

    /* renamed from: a */
    public static final Upvaldesc[] f8015a = new Upvaldesc[0];

    /* renamed from: b */
    public static final Prototype[] f8016b = new Prototype[0];
    public int[] code;
    public int is_vararg;

    /* renamed from: k */
    public LuaValue[] f8017k;
    public int lastlinedefined;
    public int linedefined;
    public int[] lineinfo;
    public LocVars[] locvars;
    public int maxstacksize;
    public int numparams;

    /* renamed from: p */
    public Prototype[] f8018p;
    public LuaString source;
    public Upvaldesc[] upvalues;

    public Prototype() {
        this.f8018p = f8016b;
        this.upvalues = f8015a;
    }

    public LuaString getlocalname(int i, int i2) {
        int i3 = 0;
        while (true) {
            LocVars[] locVarsArr = this.locvars;
            if (i3 < locVarsArr.length) {
                LocVars locVars = locVarsArr[i3];
                if (locVars.startpc <= i2) {
                    if (i2 < locVars.endpc && i - 1 == 0) {
                        return locVars.varname;
                    }
                    i3++;
                } else {
                    return null;
                }
            } else {
                return null;
            }
        }
    }

    public String toString() {
        return this.source + ":" + this.linedefined + "-" + this.lastlinedefined;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8017k = (LuaValue[]) kryo.readClassAndObject(input);
        this.code = (int[]) kryo.readObjectOrNull(input, int[].class);
        this.f8018p = (Prototype[]) kryo.readClassAndObject(input);
        this.lineinfo = (int[]) kryo.readObjectOrNull(input, int[].class);
        this.locvars = (LocVars[]) kryo.readClassAndObject(input);
        this.upvalues = (Upvaldesc[]) kryo.readClassAndObject(input);
        this.source = (LuaString) kryo.readObjectOrNull(input, LuaString.class);
        this.linedefined = input.readInt();
        this.lastlinedefined = input.readInt();
        this.numparams = input.readInt();
        this.is_vararg = input.readInt();
        this.maxstacksize = input.readInt();
    }

    public String shortsource() {
        String str = this.source.tojstring();
        if (!str.startsWith("@") && !str.startsWith("=")) {
            if (str.startsWith("\u001b")) {
                return LoadState.SOURCE_BINARY_STRING;
            }
            return str;
        }
        return str.substring(1);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        LuaValue.NILLABLE_SERIALIZER.writeClassAndObject(kryo, output, this.f8017k);
        kryo.writeObjectOrNull(output, this.code, int[].class);
        kryo.writeClassAndObject(output, this.f8018p);
        kryo.writeObjectOrNull(output, this.lineinfo, int[].class);
        kryo.writeClassAndObject(output, this.locvars);
        kryo.writeClassAndObject(output, this.upvalues);
        kryo.writeObjectOrNull(output, this.source, LuaString.class);
        output.writeInt(this.linedefined);
        output.writeInt(this.lastlinedefined);
        output.writeInt(this.numparams);
        output.writeInt(this.is_vararg);
        output.writeInt(this.maxstacksize);
    }

    public Prototype(int i) {
        this.f8018p = f8016b;
        this.upvalues = new Upvaldesc[i];
    }
}
