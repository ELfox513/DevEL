package com.prineside.tdi2.actions;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class UpgradeMinerAction extends Action {

    /* renamed from: x */
    public int f9100x;

    /* renamed from: y */
    public int f9101y;

    public UpgradeMinerAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.UM;
    }

    public String toString() {
        return "UpgradeMiner " + this.f9100x + " " + this.f9101y;
    }

    public UpgradeMinerAction(int i, int i2) {
        this.f9100x = i;
        this.f9101y = i2;
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("x", Integer.valueOf(this.f9100x));
        json.writeValue("y", Integer.valueOf(this.f9101y));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeByte(this.f9100x);
        output.writeByte(this.f9101y);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f9100x = input.readByte();
        this.f9101y = input.readByte();
    }

    public UpgradeMinerAction(JsonValue jsonValue) {
        this(jsonValue.getInt("x"), jsonValue.getInt("y"));
    }
}
