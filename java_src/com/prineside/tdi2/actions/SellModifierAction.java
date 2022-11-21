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
public class SellModifierAction extends Action {

    /* renamed from: x */
    public int f9096x;

    /* renamed from: y */
    public int f9097y;

    public SellModifierAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.SMO;
    }

    public String toString() {
        return "SellModifier " + this.f9096x + " " + this.f9097y;
    }

    public SellModifierAction(int i, int i2) {
        this.f9096x = i;
        this.f9097y = i2;
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("x", Integer.valueOf(this.f9096x));
        json.writeValue("y", Integer.valueOf(this.f9097y));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeByte(this.f9096x);
        output.writeByte(this.f9097y);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f9096x = input.readByte();
        this.f9097y = input.readByte();
    }

    public SellModifierAction(JsonValue jsonValue) {
        this(jsonValue.getInt("x"), jsonValue.getInt("y"));
    }
}
