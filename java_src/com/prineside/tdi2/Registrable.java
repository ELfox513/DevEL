package com.prineside.tdi2;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.REGS;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class Registrable implements KryoSerializable {

    /* renamed from: S */
    public GameSystemProvider f8844S;

    public boolean isRegistered() {
        return this.f8844S != null;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8844S = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
    }

    public void setRegistered(GameSystemProvider gameSystemProvider) {
        this.f8844S = gameSystemProvider;
    }

    public void setUnregistered() {
        this.f8844S = null;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.f8844S, GameSystemProvider.class);
    }
}
