package com.prineside.tdi2;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.shapes.RangeCircle;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.tiles.PlatformTile;
/* loaded from: classes2.dex */
public abstract class Building extends Registrable {

    /* renamed from: a */
    public PlatformTile f8475a;
    public BuildingType buildingType;

    /* renamed from: com.prineside.tdi2.Building$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C14801 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8476a;

        static {
            int[] iArr = new int[BuildingType.values().length];
            f8476a = iArr;
            try {
                iArr[BuildingType.TOWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8476a[BuildingType.MODIFIER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public abstract Building cloneBuilding();

    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
    }

    public void drawHoveredRange(Batch batch, RangeCircle rangeCircle) {
    }

    public void drawSelectedRange(Batch batch, RangeCircle rangeCircle) {
    }

    public PlatformTile getTile() {
        return this.f8475a;
    }

    public void placedOnMap() {
    }

    public void removedFromMap() {
    }

    public void setTile(PlatformTile platformTile) {
        this.f8475a = platformTile;
    }

    public void toJson(Json json) {
        json.writeValue("bType", this.buildingType.name());
    }

    public static Building fromJson(JsonValue jsonValue) {
        BuildingType valueOf = BuildingType.valueOf(jsonValue.getString("bType"));
        int i = C14801.f8476a[valueOf.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return Game.f8589i.modifierManager.fromJson(jsonValue);
            }
            throw new RuntimeException("Not implemented: " + valueOf.name());
        }
        return Game.f8589i.towerManager.fromJson(jsonValue);
    }

    public Building(BuildingType buildingType) {
        this.buildingType = buildingType;
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.buildingType = (BuildingType) kryo.readObjectOrNull(input, BuildingType.class);
        this.f8475a = (PlatformTile) kryo.readObjectOrNull(input, PlatformTile.class);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.buildingType, BuildingType.class);
        kryo.writeObjectOrNull(output, this.f8475a, PlatformTile.class);
    }
}
