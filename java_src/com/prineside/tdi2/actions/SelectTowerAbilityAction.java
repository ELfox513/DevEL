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
public class SelectTowerAbilityAction extends Action {
    public int abilityIndex;

    /* renamed from: x */
    public int f9092x;

    /* renamed from: y */
    public int f9093y;

    public SelectTowerAbilityAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.STA;
    }

    public String toString() {
        return "SelectTowerAbility " + this.f9092x + " " + this.f9093y + " " + this.abilityIndex;
    }

    public SelectTowerAbilityAction(int i, int i2, int i3) {
        this.abilityIndex = i;
        this.f9092x = i2;
        this.f9093y = i3;
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("ai", Integer.valueOf(this.abilityIndex));
        json.writeValue("x", Integer.valueOf(this.f9092x));
        json.writeValue("y", Integer.valueOf(this.f9093y));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeByte(this.abilityIndex);
        output.writeByte(this.f9092x);
        output.writeByte(this.f9093y);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.abilityIndex = input.readByte();
        this.f9092x = input.readByte();
        this.f9093y = input.readByte();
    }

    public SelectTowerAbilityAction(JsonValue jsonValue) {
        this(jsonValue.getInt("ai"), jsonValue.getInt("x"), jsonValue.getInt("y"));
    }
}
