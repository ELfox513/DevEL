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
public class UpgradeTowerAction extends Action {

    /* renamed from: x */
    public int f9102x;

    /* renamed from: y */
    public int f9103y;

    public UpgradeTowerAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.UT;
    }

    public String toString() {
        return "UpgradeTower " + this.f9102x + " " + this.f9103y;
    }

    public UpgradeTowerAction(int i, int i2) {
        this.f9102x = i;
        this.f9103y = i2;
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("x", Integer.valueOf(this.f9102x));
        json.writeValue("y", Integer.valueOf(this.f9103y));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeByte(this.f9102x);
        output.writeByte(this.f9103y);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f9102x = input.readByte();
        this.f9103y = input.readByte();
    }

    public UpgradeTowerAction(JsonValue jsonValue) {
        this(jsonValue.getInt("x"), jsonValue.getInt("y"));
    }
}
