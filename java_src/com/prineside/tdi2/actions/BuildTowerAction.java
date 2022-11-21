package com.prineside.tdi2.actions;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BuildTowerAction extends Action {
    public Tower.AimStrategy aimStrategy;
    public TowerType towerType;

    /* renamed from: x */
    public int f9073x;

    /* renamed from: y */
    public int f9074y;

    public BuildTowerAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.BT;
    }

    public String toString() {
        return "BuildTower " + this.towerType.name() + " " + this.f9073x + " " + this.f9074y + " " + this.aimStrategy.name();
    }

    public BuildTowerAction(TowerType towerType, Tower.AimStrategy aimStrategy, int i, int i2) {
        this.towerType = towerType;
        this.aimStrategy = aimStrategy;
        this.f9073x = i;
        this.f9074y = i2;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.towerType = (TowerType) kryo.readObject(input, TowerType.class);
        this.aimStrategy = (Tower.AimStrategy) kryo.readObject(input, Tower.AimStrategy.class);
        this.f9073x = input.readByte();
        this.f9074y = input.readByte();
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue("tt", this.towerType.name());
        json.writeValue("aim", this.aimStrategy.name());
        json.writeValue("x", Integer.valueOf(this.f9073x));
        json.writeValue("y", Integer.valueOf(this.f9074y));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.towerType);
        kryo.writeObject(output, this.aimStrategy);
        output.writeByte(this.f9073x);
        output.writeByte(this.f9074y);
    }

    public BuildTowerAction(JsonValue jsonValue) {
        this(TowerType.valueOf(jsonValue.getString("tt")), Tower.AimStrategy.valueOf(jsonValue.getString("aim")), jsonValue.getInt("x"), jsonValue.getInt("y"));
    }
}
