package com.prineside.tdi2.actions;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class UseAbilityAction extends Action {
    public AbilityType abilityType;

    /* renamed from: x */
    public int f9104x;

    /* renamed from: y */
    public int f9105y;

    public UseAbilityAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.UA;
    }

    public String toString() {
        return "UseAbility " + this.abilityType.name() + " " + this.f9104x + " " + this.f9105y;
    }

    public UseAbilityAction(AbilityType abilityType, int i, int i2) {
        this.abilityType = abilityType;
        this.f9104x = i;
        this.f9105y = i2;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.abilityType = (AbilityType) kryo.readObject(input, AbilityType.class);
        this.f9104x = input.readInt();
        this.f9105y = input.readInt();
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("at", this.abilityType.name());
        json.writeValue("x", Integer.valueOf(this.f9104x));
        json.writeValue("y", Integer.valueOf(this.f9105y));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.abilityType);
        output.writeInt(this.f9104x);
        output.writeInt(this.f9105y);
    }

    public UseAbilityAction(JsonValue jsonValue) {
        this(AbilityType.valueOf(jsonValue.getString("at")), jsonValue.getInt("x"), jsonValue.getInt("y"));
    }
}
