package com.prineside.tdi2;

import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 3, classOnly = true)
/* loaded from: classes2.dex */
public abstract class Gate extends Registrable {
    public static final float THICKNESS = 28.0f;

    /* renamed from: a */
    public GateType f8656a;

    /* renamed from: b */
    public Side f8657b;

    /* renamed from: d */
    public int f8658d;
    @NAGS
    public ParticleEffectPool.PooledEffect highlightParticleA;
    @NAGS
    public ParticleEffectPool.PooledEffect highlightParticleB;

    /* renamed from: k */
    public int f8659k;

    /* loaded from: classes2.dex */
    public interface Factory<T extends Gate> extends Disposable {

        /* loaded from: classes2.dex */
        public static abstract class AbstractFactory<T extends Gate> implements Factory<T> {

            /* renamed from: a */
            public final String f8660a;

            /* renamed from: b */
            public final String f8661b;

            @Override // com.badlogic.gdx.utils.Disposable
            public void dispose() {
            }

            @Override // com.prineside.tdi2.Gate.Factory
            public CharSequence getDescription(Gate gate) {
                return Game.f8589i.localeManager.i18n.get(this.f8661b);
            }

            @Override // com.prineside.tdi2.Gate.Factory
            public CharSequence getTitle(Gate gate) {
                return Game.f8589i.localeManager.i18n.get(this.f8660a);
            }

            public void setupAssets() {
            }

            @Override // com.prineside.tdi2.Gate.Factory
            public void setup() {
                if (Game.f8589i.assetManager != null) {
                    setupAssets();
                }
            }

            public AbstractFactory(GateType gateType) {
                this.f8660a = "gate_name_" + gateType.name();
                this.f8661b = "gate_description_" + gateType.name();
            }

            @Override // com.prineside.tdi2.Gate.Factory
            public T fromJson(JsonValue jsonValue) {
                T create = create();
                int i = jsonValue.getInt("x", 0);
                int i2 = jsonValue.getInt("y", 0);
                Side side = Side.LEFT;
                if (jsonValue.get("side") != null) {
                    side = Side.valueOf(jsonValue.getString("side"));
                }
                create.setPosition(i, i2, side);
                return create;
            }
        }

        T create();

        T createRandom(float f, RandomXS128 randomXS128);

        T fromJson(JsonValue jsonValue);

        CharSequence getDescription(Gate gate);

        CharSequence getTitle(Gate gate);

        void setup();
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum Side {
        BOTTOM,
        LEFT;
        
        public static final Side[] values = values();
    }

    public void addSellItems(Array<ItemStack> array) {
    }

    public abstract Gate cloneGate();

    public void drawBatch(SpriteBatch spriteBatch, float f, int i, int i2) {
    }

    public abstract void drawStatic(SpriteCache spriteCache, int i, int i2);

    public abstract Actor generateIcon(float f, boolean z);

    public abstract double getPrestigeScore();

    public abstract RarityType getRarity();

    public abstract int getSortingScore(ItemSortingType itemSortingType);

    public GateType getType() {
        return this.f8656a;
    }

    public int getX() {
        return this.f8658d;
    }

    public int getY() {
        return this.f8659k;
    }

    public boolean sameAs(Gate gate) {
        return gate.getType() == getType();
    }

    public Side getSide() {
        if (this.f8657b == null) {
            this.f8657b = Side.LEFT;
        }
        return this.f8657b;
    }

    public void setPosition(int i, int i2, Side side) {
        if (side != null) {
            this.f8658d = i;
            this.f8659k = i2;
            this.f8657b = side;
            return;
        }
        throw new IllegalArgumentException("Side is null");
    }

    public void toJson(Json json) {
        json.writeValue("type", this.f8656a.name());
        json.writeValue("x", Integer.valueOf(this.f8658d));
        json.writeValue("y", Integer.valueOf(this.f8659k));
        json.writeValue("side", getSide().name());
    }

    public Gate(GateType gateType) {
        this.f8656a = gateType;
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8656a = (GateType) kryo.readObjectOrNull(input, GateType.class);
        this.f8657b = (Side) kryo.readObjectOrNull(input, Side.class);
        this.f8658d = input.readVarInt(true);
        this.f8659k = input.readVarInt(true);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.f8656a, GateType.class);
        kryo.writeObjectOrNull(output, this.f8657b, Side.class);
        output.writeVarInt(this.f8658d, true);
        output.writeVarInt(this.f8659k, true);
    }
}
