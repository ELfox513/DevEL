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
public class CoreUpgradeAction extends Action {
    public int col;
    public int row;

    /* renamed from: x */
    public int f9077x;

    /* renamed from: y */
    public int f9078y;

    public CoreUpgradeAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.CU;
    }

    public String toString() {
        return "CoreUpgrade " + this.f9077x + " " + this.f9078y + " " + this.col + " " + this.row;
    }

    public CoreUpgradeAction(int i, int i2, int i3, int i4) {
        this.f9077x = i;
        this.f9078y = i2;
        this.col = i3;
        this.row = i4;
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("x", Integer.valueOf(this.f9077x));
        json.writeValue("y", Integer.valueOf(this.f9078y));
        json.writeValue("col", Integer.valueOf(this.col));
        json.writeValue("row", Integer.valueOf(this.row));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeInt(this.f9077x);
        output.writeInt(this.f9078y);
        output.writeInt(this.col);
        output.writeInt(this.row);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f9077x = input.readInt();
        this.f9078y = input.readInt();
        this.col = input.readInt();
        this.row = input.readInt();
    }

    public CoreUpgradeAction(JsonValue jsonValue) {
        this(jsonValue.getInt("x"), jsonValue.getInt("y"), jsonValue.getInt("col"), jsonValue.getInt("row"));
    }
}
