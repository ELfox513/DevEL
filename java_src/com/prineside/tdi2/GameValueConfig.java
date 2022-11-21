package com.prineside.tdi2;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class GameValueConfig implements KryoSerializable {
    public boolean allowBonuses;
    public boolean overwrite;
    public GameValueType type;
    public double value;

    public GameValueConfig() {
    }

    public GameValueConfig cpy() {
        return new GameValueConfig(this.type, this.value, this.overwrite, this.allowBonuses);
    }

    public static GameValueConfig fromJson(JsonValue jsonValue) {
        try {
            GameValueConfig gameValueConfig = new GameValueConfig();
            gameValueConfig.type = GameValueType.valueOf(jsonValue.getString("t"));
            gameValueConfig.value = jsonValue.getDouble("v");
            gameValueConfig.overwrite = jsonValue.getBoolean("o", false);
            gameValueConfig.allowBonuses = jsonValue.getBoolean("b", true);
            return gameValueConfig;
        } catch (Exception e) {
            throw new IllegalArgumentException("failed to load from json", e);
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.type = (GameValueType) kryo.readObjectOrNull(input, GameValueType.class);
        this.value = input.readDouble();
        this.overwrite = input.readBoolean();
        this.allowBonuses = input.readBoolean();
    }

    public boolean sameAs(GameValueConfig gameValueConfig) {
        if (gameValueConfig.type != this.type || gameValueConfig.value != this.value || gameValueConfig.overwrite != this.overwrite || gameValueConfig.allowBonuses != this.allowBonuses) {
            return false;
        }
        return true;
    }

    public void toJson(Json json) {
        json.writeValue("t", this.type.name());
        json.writeValue("v", Double.valueOf(this.value));
        json.writeValue("o", Boolean.valueOf(this.overwrite));
        json.writeValue("b", Boolean.valueOf(this.allowBonuses));
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.type, GameValueType.class);
        output.writeDouble(this.value);
        output.writeBoolean(this.overwrite);
        output.writeBoolean(this.allowBonuses);
    }

    public GameValueConfig(GameValueType gameValueType, double d, boolean z, boolean z2) {
        this.type = gameValueType;
        this.value = d;
        this.overwrite = z;
        this.allowBonuses = z2;
    }
}
