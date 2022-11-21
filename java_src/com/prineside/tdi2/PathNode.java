package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Path;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import java.util.Arrays;
@REGS(arrayLevels = 2)
/* loaded from: classes2.dex */
public class PathNode implements Pool.Poolable, KryoSerializable {
    public float cost;
    public int index;
    public TileType tileType;

    /* renamed from: x */
    public int f8830x;

    /* renamed from: y */
    public int f8831y;
    public Array<Path.Connection> connections = new Array<>(Path.Connection.class);
    @NAGS
    public float tileCenterX = -1.0f;
    @NAGS
    public float tileCenterY = -1.0f;
    public int[] teleportIndices = {-1, -1, -1, -1};

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.index = 0;
        this.connections.clear();
        this.f8830x = 0;
        this.f8831y = 0;
        Arrays.fill(this.teleportIndices, -1);
        this.tileCenterX = 0.0f;
        this.tileCenterY = 0.0f;
        this.cost = 0.0f;
    }

    public String toString() {
        return this.f8830x + ":" + this.f8831y + " (tp: " + this.teleportIndices[0] + ", " + this.teleportIndices[1] + ", " + this.teleportIndices[2] + ", " + this.teleportIndices[3] + ")";
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.connections = (Array) kryo.readObject(input, Array.class);
        this.index = input.readVarInt(true);
        this.f8830x = input.readVarInt(true);
        this.f8831y = input.readVarInt(true);
        this.cost = input.readFloat();
        this.tileType = TileType.values[input.readVarInt(true)];
        this.teleportIndices = (int[]) kryo.readObject(input, int[].class);
        this.tileCenterX = (this.f8830x * 128) + 64;
        this.tileCenterY = (this.f8831y * 128) + 64;
    }

    public void setup(int i, int i2, int i3, float f, TileType tileType) {
        this.index = i;
        this.f8830x = i2;
        this.f8831y = i3;
        this.cost = f;
        this.tileType = tileType;
        this.tileCenterX = (i2 * 128) + 64;
        this.tileCenterY = (i3 * 128) + 64;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.connections);
        output.writeVarInt(this.index, true);
        output.writeVarInt(this.f8830x, true);
        output.writeVarInt(this.f8831y, true);
        output.writeFloat(this.cost);
        output.writeVarInt(this.tileType.ordinal(), true);
        kryo.writeObject(output, this.teleportIndices);
    }
}
