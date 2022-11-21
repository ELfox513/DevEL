package com.prineside.tdi2.actions;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ChangeTowerAimStrategyAction extends Action {
    public Tower.AimStrategy aimStrategy;

    /* renamed from: x */
    public int f9075x;

    /* renamed from: y */
    public int f9076y;

    public ChangeTowerAimStrategyAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.CTAS;
    }

    public String toString() {
        return "ChangeTowerAimStrategy " + this.aimStrategy.name() + " " + this.f9075x + " " + this.f9076y;
    }

    public ChangeTowerAimStrategyAction(int i, int i2, Tower.AimStrategy aimStrategy) {
        this.f9075x = i;
        this.f9076y = i2;
        this.aimStrategy = aimStrategy;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.aimStrategy = (Tower.AimStrategy) kryo.readObject(input, Tower.AimStrategy.class);
        this.f9075x = input.readByte();
        this.f9076y = input.readByte();
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("x", Integer.valueOf(this.f9075x));
        json.writeValue("y", Integer.valueOf(this.f9076y));
        json.writeValue("aim", this.aimStrategy.name());
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.aimStrategy);
        output.writeByte(this.f9075x);
        output.writeByte(this.f9076y);
    }

    public ChangeTowerAimStrategyAction(JsonValue jsonValue) {
        this(jsonValue.getInt("x"), jsonValue.getInt("y"), Tower.AimStrategy.valueOf(jsonValue.getString("aim")));
    }
}
