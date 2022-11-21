package com.prineside.tdi2.actions;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BuildMinerAction extends Action {
    public MinerType minerType;

    /* renamed from: x */
    public int f9069x;

    /* renamed from: y */
    public int f9070y;

    public BuildMinerAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.BM;
    }

    public String toString() {
        return "BuildMiner " + this.minerType.name() + " " + this.f9069x + " " + this.f9070y;
    }

    public BuildMinerAction(MinerType minerType, int i, int i2) {
        this.minerType = minerType;
        this.f9069x = i;
        this.f9070y = i2;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.minerType = (MinerType) kryo.readObject(input, MinerType.class);
        this.f9069x = input.readByte();
        this.f9070y = input.readByte();
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("mt", this.minerType.name());
        json.writeValue("x", Integer.valueOf(this.f9069x));
        json.writeValue("y", Integer.valueOf(this.f9070y));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.minerType);
        output.writeByte(this.f9069x);
        output.writeByte(this.f9070y);
    }

    public BuildMinerAction(JsonValue jsonValue) {
        this(MinerType.valueOf(jsonValue.getString("mt")), jsonValue.getInt("x"), jsonValue.getInt("y"));
    }
}
