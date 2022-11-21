package com.prineside.tdi2.units;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Explosion;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MineUnit extends Unit {
    @NAGS

    /* renamed from: a */
    public Color f15056a;
    public float existsTime;
    public Explosion explosion;
    public Tower owner;
    @NAGS
    public float rotation;
    public Vector2 startPos;
    public Vector2 targetPos;

    /* loaded from: classes2.dex */
    public static class MineUnitFactory extends Unit.Factory.BasicAbstractFactory<MineUnit> {

        /* renamed from: b */
        public TextureRegion f15057b;

        @Override // com.prineside.tdi2.Unit.Factory
        public Color getColor() {
            return Color.WHITE;
        }

        @Override // com.prineside.tdi2.Unit.Factory.BasicAbstractFactory
        public void setupAssets() {
            this.f15057b = Game.f8589i.assetManager.getTextureRegion("mine");
        }

        @Override // com.prineside.tdi2.Unit.Factory
        public MineUnit create() {
            return new MineUnit();
        }
    }

    public void setup(Tower tower, float f, float f2, float f3, float f4, Explosion explosion, Color color) {
        this.staticPosition = true;
        this.owner = tower;
        this.position.set(f, f2);
        this.startPos.set(f, f2);
        this.targetPos.set(f3, f4);
        this.explosion = explosion;
        this.f15056a.set(color);
        this.rotation = (FastRandom.getFloat() * 20.0f) - 20.0f;
    }

    public MineUnit() {
        super(4);
        this.startPos = new Vector2();
        this.targetPos = new Vector2();
        this.f15056a = new Color();
    }

    @Override // com.prineside.tdi2.Unit
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        float f2;
        float f3 = (this.existsTime * 2.0f) + 0.5f;
        if (f3 > 1.0f) {
            f2 = 1.0f;
        } else {
            f2 = f3;
        }
        spriteBatch.setColor(this.f15056a);
        TextureRegion textureRegion = Game.f8589i.unitManager.f10234F.MINE.f15057b;
        Vector2 vector2 = this.position;
        spriteBatch.draw(textureRegion, vector2.f5527x - 24.0f, vector2.f5528y - 24.0f, 24.0f, 24.0f, 48.0f, 48.0f, f2, f2, this.rotation);
        spriteBatch.setColor(Color.WHITE);
    }

    public final void explode() {
        if (this.f8844S != null) {
            this.explosion.position.set(this.position);
            this.f8844S.explosion.register(this.explosion);
            this.explosion.explode();
            this.f8844S.unit.killUnit(this, null);
            return;
        }
        throw new IllegalStateException("Unit " + this + " is unregistered");
    }

    @Override // com.prineside.tdi2.Unit
    public void update(float f) {
        Tower tower = this.owner;
        if (tower != null && !tower.isRegistered()) {
            explode();
            return;
        }
        float f2 = this.existsTime + f;
        this.existsTime = f2;
        if (f2 < 1.0f) {
            this.position.set(this.startPos);
            this.position.lerp(this.targetPos, Interpolation.pow5Out.apply(this.existsTime));
        } else {
            this.position.set(this.targetPos);
        }
        Map map = this.f8844S.map.getMap();
        Vector2 vector2 = this.position;
        Tile tileByMapPos = map.getTileByMapPos(vector2.f5527x, vector2.f5528y);
        if (this.existsTime > 1.0f) {
            if (tileByMapPos != null && (tileByMapPos.type != TileType.PLATFORM || ((PlatformTile) tileByMapPos).building == null)) {
                DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = tileByMapPos.enemies;
                if (delayedRemovalArray.size != 0) {
                    delayedRemovalArray.begin();
                    int i = 0;
                    while (true) {
                        DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray2 = tileByMapPos.enemies;
                        if (i < delayedRemovalArray2.size) {
                            Enemy enemy = delayedRemovalArray2.items[i].enemy;
                            if (enemy != null && !enemy.isAir() && this.position.dst2(enemy.getPosition()) < 1024.0f) {
                                explode();
                                break;
                            }
                            i++;
                        } else {
                            break;
                        }
                    }
                    tileByMapPos.enemies.end();
                    return;
                }
                return;
            }
            explode();
        }
    }

    @Override // com.prineside.tdi2.Unit, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.owner = (Tower) kryo.readClassAndObject(input);
        this.startPos = (Vector2) kryo.readObject(input, Vector2.class);
        this.targetPos = (Vector2) kryo.readObject(input, Vector2.class);
        this.rotation = input.readFloat();
        this.existsTime = input.readFloat();
        this.explosion = (Explosion) kryo.readClassAndObject(input);
        this.f15056a = (Color) kryo.readObject(input, Color.class);
    }

    @Override // com.prineside.tdi2.Unit, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.owner);
        kryo.writeObject(output, this.startPos);
        kryo.writeObject(output, this.targetPos);
        output.writeFloat(this.rotation);
        output.writeFloat(this.existsTime);
        kryo.writeClassAndObject(output, this.explosion);
        kryo.writeObject(output, this.f15056a);
    }
}
