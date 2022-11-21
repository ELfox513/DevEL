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
public class SellTowerAction extends Action {

    /* renamed from: x */
    public int f9098x;

    /* renamed from: y */
    public int f9099y;

    public SellTowerAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.ST;
    }

    public String toString() {
        return "SellTower " + this.f9098x + " " + this.f9099y;
    }

    public SellTowerAction(int i, int i2) {
        this.f9098x = i;
        this.f9099y = i2;
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("x", Integer.valueOf(this.f9098x));
        json.writeValue("y", Integer.valueOf(this.f9099y));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeByte(this.f9098x);
        output.writeByte(this.f9099y);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f9098x = input.readByte();
        this.f9099y = input.readByte();
    }

    public SellTowerAction(JsonValue jsonValue) {
        this(jsonValue.getInt("x"), jsonValue.getInt("y"));
    }
}
