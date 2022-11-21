package com.prineside.tdi2.actions;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BuildModifierAction extends Action {
    public ModifierType modifierType;

    /* renamed from: x */
    public int f9071x;

    /* renamed from: y */
    public int f9072y;

    public BuildModifierAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.BMO;
    }

    public String toString() {
        return "BuildModifier " + this.modifierType.name() + " " + this.f9071x + " " + this.f9072y;
    }

    public BuildModifierAction(ModifierType modifierType, int i, int i2) {
        this.modifierType = modifierType;
        this.f9071x = i;
        this.f9072y = i2;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.modifierType = (ModifierType) kryo.readObject(input, ModifierType.class);
        this.f9071x = input.readByte();
        this.f9072y = input.readByte();
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("mt", this.modifierType.name());
        json.writeValue("x", Integer.valueOf(this.f9071x));
        json.writeValue("y", Integer.valueOf(this.f9072y));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.modifierType);
        output.writeByte(this.f9071x);
        output.writeByte(this.f9072y);
    }

    public BuildModifierAction(JsonValue jsonValue) {
        this(ModifierType.valueOf(jsonValue.getString("mt")), jsonValue.getInt("x"), jsonValue.getInt("y"));
    }
}
