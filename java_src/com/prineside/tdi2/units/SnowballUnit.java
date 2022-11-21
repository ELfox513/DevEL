package com.prineside.tdi2.units;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class SnowballUnit extends Unit {

    /* renamed from: a */
    public float f15058a;
    @NAGS

    /* renamed from: b */
    public ParticleEffectPool.PooledEffect f15059b;

    /* loaded from: classes2.dex */
    public static class SnowballUnitFactory extends Unit.Factory.BasicAbstractFactory<SnowballUnit> {

        /* renamed from: b */
        public TextureRegion f15060b;

        /* renamed from: d */
        public ParticleEffectPool f15061d;

        @Override // com.prineside.tdi2.Unit.Factory
        public Color getColor() {
            return MaterialColor.LIGHT_BLUE.P500;
        }

        @Override // com.prineside.tdi2.Unit.Factory
        public SnowballUnit create() {
            return new SnowballUnit();
        }

        @Override // com.prineside.tdi2.Unit.Factory.BasicAbstractFactory
        public void setupAssets() {
            this.f15060b = Game.f8589i.assetManager.getTextureRegion("unit-type-snowball");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/snowflakes-trace.prt"), Game.f8589i.assetManager.getTextureRegion("particle-snowflake").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f15061d = new ParticleEffectPool(particleEffect, 4, 512);
        }
    }

    public void setup(float f) {
        this.drawOverEnemies = true;
        this.f15058a = f;
    }

    public SnowballUnit() {
        super(0);
    }

    @Override // com.prineside.tdi2.Unit
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        ParticleEffectPool.PooledEffect pooledEffect = this.f15059b;
        if (pooledEffect != null) {
            Vector2 vector2 = this.drawPosition;
            pooledEffect.setPosition(vector2.f5527x, vector2.f5528y);
        }
        TextureRegion textureRegion = Game.f8589i.unitManager.f10234F.SNOWBALL.f15060b;
        Vector2 vector22 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector22.f5527x - 32.0f, vector22.f5528y - 32.0f, 32.0f, 32.0f, 64.0f, 64.0f, 1.0f, 1.0f, 0.0f);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        ParticleEffectPool.PooledEffect pooledEffect = this.f15059b;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f15059b = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0080, code lost:
        r1 = r1 + 1;
     */
    @Override // com.prineside.tdi2.Unit
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(float r13) {
        /*
            r12 = this;
            com.prineside.tdi2.Tile r13 = r12.currentTile
            if (r13 == 0) goto L84
            com.badlogic.gdx.utils.Array r13 = r13.getNeighbourTilesAndThis()
            r0 = 0
            r1 = 0
        La:
            int r2 = r13.size
            if (r1 >= r2) goto L83
            T[] r2 = r13.items
            com.prineside.tdi2.Tile[] r2 = (com.prineside.tdi2.Tile[]) r2
            r2 = r2[r1]
            r3 = 0
        L15:
            com.badlogic.gdx.utils.DelayedRemovalArray<com.prineside.tdi2.Enemy$EnemyReference> r4 = r2.enemies
            int r5 = r4.size
            if (r3 >= r5) goto L80
            T[] r4 = r4.items
            com.prineside.tdi2.Enemy$EnemyReference[] r4 = (com.prineside.tdi2.Enemy.EnemyReference[]) r4
            r4 = r4[r3]
            com.prineside.tdi2.Enemy r4 = r4.enemy
            if (r4 != 0) goto L26
            goto L7d
        L26:
            int r5 = r4.buffSnowballHits
            int r6 = com.prineside.tdi2.buffs.processors.SnowballBuffProcessor.MAX_HITS_ONE_ENEMY
            if (r5 >= r6) goto L7d
            com.badlogic.gdx.math.Vector2 r5 = r4.getPosition()
            float r6 = r5.f5527x
            com.badlogic.gdx.math.Vector2 r5 = r4.getPosition()
            float r7 = r5.f5528y
            float r8 = r4.getSize()
            com.badlogic.gdx.math.Vector2 r5 = r12.position
            float r9 = r5.f5527x
            float r10 = r5.f5528y
            r11 = 1107296256(0x42000000, float:32.0)
            boolean r5 = com.prineside.tdi2.utils.PMath.circleIntersectsCircle(r6, r7, r8, r9, r10, r11)
            if (r5 == 0) goto L7d
            com.prineside.tdi2.Game r5 = com.prineside.tdi2.Game.f8589i
            com.prineside.tdi2.managers.BuffManager r5 = r5.buffManager
            com.prineside.tdi2.managers.BuffManager$Factories r5 = r5.f9699F
            com.prineside.tdi2.buffs.SnowballBuff$SnowballBuffFactory r5 = r5.SNOWBALL
            com.prineside.tdi2.Buff r5 = r5.obtain()
            com.prineside.tdi2.buffs.SnowballBuff r5 = (com.prineside.tdi2.buffs.SnowballBuff) r5
            float r6 = r12.f15058a
            float[] r7 = com.prineside.tdi2.buffs.processors.SnowballBuffProcessor.STUN_DURATION_BY_STUN_COUNT
            int r8 = r4.buffSnowballHits
            r7 = r7[r8]
            float r6 = r6 * r7
            r7 = 1092616192(0x41200000, float:10.0)
            float r7 = r7 * r6
            r5.setup(r6, r7)
            com.prineside.tdi2.GameSystemProvider r6 = r12.f8844S
            com.prineside.tdi2.systems.BuffSystem r6 = r6.buff
            com.prineside.tdi2.buffs.processors.SnowballBuffProcessor r6 = r6.P_SNOWBALL
            boolean r5 = r6.addBuff(r4, r5)
            if (r5 == 0) goto L7d
            com.prineside.tdi2.GameSystemProvider r13 = r12.f8844S
            com.prineside.tdi2.systems.UnitSystem r13 = r13.unit
            r13.killUnit(r12, r4)
            goto L83
        L7d:
            int r3 = r3 + 1
            goto L15
        L80:
            int r1 = r1 + 1
            goto La
        L83:
            return
        L84:
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r0 = "tile xy: "
            r13.append(r0)
            com.badlogic.gdx.math.Vector2 r0 = r12.position
            float r0 = r0.f5527x
            r1 = 1124073472(0x43000000, float:128.0)
            float r0 = r0 / r1
            int r0 = (int) r0
            r13.append(r0)
            java.lang.String r0 = ":"
            r13.append(r0)
            com.badlogic.gdx.math.Vector2 r0 = r12.position
            float r0 = r0.f5528y
            float r0 = r0 / r1
            int r0 = (int) r0
            r13.append(r0)
            java.lang.String r13 = r13.toString()
            java.lang.String r0 = "SnowballUnit"
            com.prineside.tdi2.Logger.error(r0, r13)
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unit "
            r0.append(r1)
            int r1 = r12.hashCode()
            r0.append(r1)
            java.lang.String r1 = " tile is null "
            r0.append(r1)
            com.badlogic.gdx.math.Vector2 r1 = r12.position
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r13.<init>(r0)
            goto Ld6
        Ld5:
            throw r13
        Ld6:
            goto Ld5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.units.SnowballUnit.update(float):void");
    }

    @Override // com.prineside.tdi2.Unit
    public void onSpawned() {
        super.onSpawned();
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.unitManager.f10234F.SNOWBALL.f15061d.obtain();
            this.f15059b = obtain;
            Vector2 vector2 = this.position;
            obtain.setPosition(vector2.f5527x, vector2.f5528y);
            this.f8844S._particle.addParticle(this.f15059b, false);
        }
    }

    @Override // com.prineside.tdi2.Unit, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f15058a = input.readFloat();
    }

    @Override // com.prineside.tdi2.Unit, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f15058a);
    }
}
