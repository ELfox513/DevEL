package com.prineside.tdi2.actions;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.utils.REGS;
import p168r4.C6226s;
@REGS
/* loaded from: classes2.dex */
public class CustomAction extends Action {

    /* renamed from: d1 */
    public double f9079d1;

    /* renamed from: d2 */
    public double f9080d2;

    /* renamed from: i1 */
    public int f9081i1;

    /* renamed from: i2 */
    public int f9082i2;

    /* renamed from: i3 */
    public int f9083i3;

    /* renamed from: i4 */
    public int f9084i4;

    /* renamed from: s */
    public String f9085s;

    public CustomAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.C;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f9081i1 = input.readVarInt(true);
        this.f9082i2 = input.readVarInt(true);
        this.f9083i3 = input.readVarInt(true);
        this.f9084i4 = input.readVarInt(true);
        this.f9079d1 = input.readDouble();
        this.f9080d2 = input.readDouble();
        this.f9085s = input.readString();
    }

    public String toString() {
        return "Custom " + this.f9081i1 + " " + this.f9082i2 + " " + this.f9083i3 + " " + this.f9084i4 + " " + this.f9079d1 + " " + this.f9080d2 + " " + this.f9085s;
    }

    public CustomAction(JsonValue jsonValue) {
        this.f9081i1 = jsonValue.getInt("i1", 0);
        this.f9082i2 = jsonValue.getInt("i2", 0);
        this.f9083i3 = jsonValue.getInt("i3", 0);
        this.f9084i4 = jsonValue.getInt("i4", 0);
        this.f9079d1 = jsonValue.getInt("d1", 0);
        this.f9080d2 = jsonValue.getInt("d2", 0);
        this.f9085s = jsonValue.getString(C6226s.f31189J, null);
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        int i = this.f9081i1;
        if (i != 0) {
            json.writeValue("i1", Integer.valueOf(i));
        }
        int i2 = this.f9082i2;
        if (i2 != 0) {
            json.writeValue("i2", Integer.valueOf(i2));
        }
        int i3 = this.f9083i3;
        if (i3 != 0) {
            json.writeValue("i3", Integer.valueOf(i3));
        }
        int i4 = this.f9084i4;
        if (i4 != 0) {
            json.writeValue("i4", Integer.valueOf(i4));
        }
        double d = this.f9079d1;
        if (d != 0.0d) {
            json.writeValue("d1", Double.valueOf(d));
        }
        double d2 = this.f9080d2;
        if (d2 != 0.0d) {
            json.writeValue("d2", Double.valueOf(d2));
        }
        String str = this.f9085s;
        if (str != null) {
            json.writeValue(C6226s.f31189J, str);
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeVarInt(this.f9081i1, true);
        output.writeVarInt(this.f9082i2, true);
        output.writeVarInt(this.f9083i3, true);
        output.writeVarInt(this.f9084i4, true);
        output.writeDouble(this.f9079d1);
        output.writeDouble(this.f9080d2);
        output.writeString(this.f9085s);
    }
}
