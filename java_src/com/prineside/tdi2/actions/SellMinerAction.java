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
public class SellMinerAction extends Action {

    /* renamed from: x */
    public int f9094x;

    /* renamed from: y */
    public int f9095y;

    public SellMinerAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.SM;
    }

    public String toString() {
        return "SellMiner " + this.f9094x + " " + this.f9095y;
    }

    public SellMinerAction(int i, int i2) {
        this.f9094x = i;
        this.f9095y = i2;
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("x", Integer.valueOf(this.f9094x));
        json.writeValue("y", Integer.valueOf(this.f9095y));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeByte(this.f9094x);
        output.writeByte(this.f9095y);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f9094x = input.readByte();
        this.f9095y = input.readByte();
    }

    public SellMinerAction(JsonValue jsonValue) {
        this(jsonValue.getInt("x"), jsonValue.getInt("y"));
    }
}
