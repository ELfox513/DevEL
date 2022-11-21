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
public class GlobalUpgradeMinerAction extends Action {
    public MinerType minerType;

    public GlobalUpgradeMinerAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.GUM;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.minerType = (MinerType) kryo.readObject(input, MinerType.class);
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("mt", this.minerType.name());
    }

    public String toString() {
        return "GlobalUpgradeMiner " + this.minerType.name();
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.minerType);
    }

    public GlobalUpgradeMinerAction(MinerType minerType) {
        this.minerType = minerType;
    }

    public GlobalUpgradeMinerAction(JsonValue jsonValue) {
        this(MinerType.valueOf(jsonValue.getString("mt")));
    }
}
