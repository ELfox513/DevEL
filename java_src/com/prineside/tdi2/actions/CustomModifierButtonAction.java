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
public class CustomModifierButtonAction extends Action {
    public int mapX;
    public int mapY;

    /* renamed from: x */
    public int f9086x;

    /* renamed from: y */
    public int f9087y;

    public CustomModifierButtonAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.CMB;
    }

    public String toString() {
        return "CustomModifierButton " + this.f9086x + " " + this.f9087y + " " + this.mapX + " " + this.mapY;
    }

    public CustomModifierButtonAction(int i, int i2, int i3, int i4) {
        this.f9086x = i;
        this.f9087y = i2;
        this.mapX = i3;
        this.mapY = i4;
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("x", Integer.valueOf(this.f9086x));
        json.writeValue("y", Integer.valueOf(this.f9087y));
        json.writeValue("mx", Integer.valueOf(this.mapX));
        json.writeValue("my", Integer.valueOf(this.mapY));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeByte(this.f9086x);
        output.writeByte(this.f9087y);
        output.writeInt(this.mapX);
        output.writeInt(this.mapY);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f9086x = input.readByte();
        this.f9087y = input.readByte();
        this.mapX = input.readInt();
        this.mapY = input.readInt();
    }

    public CustomModifierButtonAction(JsonValue jsonValue) {
        this(jsonValue.getInt("x"), jsonValue.getInt("y"), jsonValue.getInt("mx"), jsonValue.getInt("my"));
    }
}
