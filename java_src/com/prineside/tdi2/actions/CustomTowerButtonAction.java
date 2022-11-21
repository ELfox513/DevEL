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
public class CustomTowerButtonAction extends Action {
    public int mapX;
    public int mapY;

    /* renamed from: x */
    public int f9088x;

    /* renamed from: y */
    public int f9089y;

    public CustomTowerButtonAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.CTB;
    }

    public String toString() {
        return "CustomTowerButton " + this.f9088x + " " + this.f9089y + " " + this.mapX + " " + this.mapY;
    }

    public CustomTowerButtonAction(int i, int i2, int i3, int i4) {
        this.f9088x = i;
        this.f9089y = i2;
        this.mapX = i3;
        this.mapY = i4;
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("x", Integer.valueOf(this.f9088x));
        json.writeValue("y", Integer.valueOf(this.f9089y));
        json.writeValue("mx", Integer.valueOf(this.mapX));
        json.writeValue("my", Integer.valueOf(this.mapY));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeByte(this.f9088x);
        output.writeByte(this.f9089y);
        output.writeInt(this.mapX);
        output.writeInt(this.mapY);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f9088x = input.readByte();
        this.f9089y = input.readByte();
        this.mapX = input.readInt();
        this.mapY = input.readInt();
    }

    public CustomTowerButtonAction(JsonValue jsonValue) {
        this(jsonValue.getInt("x"), jsonValue.getInt("y"), jsonValue.getInt("mx"), jsonValue.getInt("my"));
    }
}
