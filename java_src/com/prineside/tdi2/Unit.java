package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Disposable;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class Unit extends Registrable {
    public Tile currentTile;
    @NAGS
    public float drawAngle;
    public boolean drawOverEnemies;

    /* renamed from: id */
    public int f8948id;
    public float passedTiles;
    public boolean setUpByUnitSystem;
    public int sideShiftIndex;
    public boolean spawned;
    public Tile startingTile;
    public boolean staticPosition;
    public Tile targetTile;
    public int type;
    public Vector2 position = new Vector2();
    public float angle = 0.0f;
    @NAGS
    public Vector2 drawPosition = new Vector2();
    public float speed = 1.0f;
    public Path graphPath = new Path();

    /* loaded from: classes2.dex */
    public interface Factory<T extends Unit> extends Disposable {

        /* loaded from: classes2.dex */
        public static abstract class BasicAbstractFactory<T extends Unit> implements Factory<T> {

            /* renamed from: a */
            public ParticleEffectPool f8949a;

            @Override // com.prineside.tdi2.Unit.Factory, com.badlogic.gdx.utils.Disposable
            public void dispose() {
            }

            @Override // com.prineside.tdi2.Unit.Factory
            public ParticleEffectPool.PooledEffect getBreakParticle() {
                return this.f8949a.obtain();
            }

            public void setupAssets() {
            }

            @Override // com.prineside.tdi2.Unit.Factory
            public void setup() {
                if (Game.f8589i.assetManager != null) {
                    setupAssets();
                }
            }

            public BasicAbstractFactory() {
                if (Game.f8589i.assetManager != null) {
                    ParticleEffect particleEffect = new ParticleEffect();
                    particleEffect.load(Gdx.files.internal("particles/break.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
                    particleEffect.setEmittersCleanUpBlendFunction(false);
                    particleEffect.getEmitters().get(0).getTint().setColors(new float[]{getColor().f3892r, getColor().f3891g, getColor().f3890b});
                    this.f8949a = new ParticleEffectPool(particleEffect, 256, 4096);
                }
            }
        }

        T create();

        @Override // com.badlogic.gdx.utils.Disposable
        void dispose();

        ParticleEffectPool.PooledEffect getBreakParticle();

        Color getColor();

        void setup();
    }

    public Unit() {
    }

    public void applyDrawInterpolation(float f) {
        if (f != 0.0f && !this.staticPosition) {
            float passedTilesDelta = this.passedTiles + getPassedTilesDelta(f);
            this.drawPosition.set(this.graphPath.getPosition(passedTilesDelta, this.sideShiftIndex));
            this.drawAngle = this.graphPath.getRotation(passedTilesDelta, this.sideShiftIndex);
            return;
        }
        this.drawAngle = this.angle;
        this.drawPosition.set(this.position);
    }

    public abstract void drawBatch(SpriteBatch spriteBatch, float f);

    public float getSize() {
        return 25.6f;
    }

    public void onSpawned() {
    }

    public void update(float f) {
    }

    public float getPassedTilesDelta(float f) {
        if (!this.staticPosition) {
            return this.speed * f * StrictMath.min(this.graphPath.getSpeedMultiplier(this.passedTiles, this.sideShiftIndex), this.graphPath.getSpeedMultiplier(this.passedTiles + (this.speed * f), this.sideShiftIndex));
        }
        throw new IllegalStateException("Unit is static");
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8948id = input.readVarInt(true);
        this.position = (Vector2) kryo.readObject(input, Vector2.class);
        this.angle = input.readFloat();
        this.type = input.readVarInt(true);
        this.speed = input.readFloat();
        this.startingTile = (Tile) kryo.readClassAndObject(input);
        this.targetTile = (Tile) kryo.readClassAndObject(input);
        this.staticPosition = input.readBoolean();
        this.setUpByUnitSystem = input.readBoolean();
        this.drawOverEnemies = input.readBoolean();
        this.sideShiftIndex = input.readInt();
        this.passedTiles = input.readFloat();
        this.currentTile = (Tile) kryo.readClassAndObject(input);
        this.graphPath = (Path) kryo.readObject(input, Path.class);
        this.spawned = input.readBoolean();
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.f8948id, true);
        kryo.writeObject(output, this.position);
        output.writeFloat(this.angle);
        output.writeVarInt(this.type, true);
        output.writeFloat(this.speed);
        kryo.writeClassAndObject(output, this.startingTile);
        kryo.writeClassAndObject(output, this.targetTile);
        output.writeBoolean(this.staticPosition);
        output.writeBoolean(this.setUpByUnitSystem);
        output.writeBoolean(this.drawOverEnemies);
        output.writeInt(this.sideShiftIndex);
        output.writeFloat(this.passedTiles);
        kryo.writeClassAndObject(output, this.currentTile);
        kryo.writeObject(output, this.graphPath);
        output.writeBoolean(this.spawned);
    }

    public Unit(int i) {
        this.type = i;
    }
}
