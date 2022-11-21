package com.prineside.tdi2.units;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Animation;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BallLightningUnit extends Unit {

    /* renamed from: a */
    public float f15033a;

    /* renamed from: b */
    public Tower f15034b;

    /* renamed from: d */
    public float f15035d;

    /* loaded from: classes2.dex */
    public static class BallLightningUnitFactory extends Unit.Factory.BasicAbstractFactory<BallLightningUnit> {

        /* renamed from: b */
        public Animation<ResourcePack.AtlasTextureRegion> f15036b;

        public Animation<ResourcePack.AtlasTextureRegion> getBallAnimation() {
            return this.f15036b;
        }

        @Override // com.prineside.tdi2.Unit.Factory
        public Color getColor() {
            return Color.WHITE;
        }

        @Override // com.prineside.tdi2.Unit.Factory.BasicAbstractFactory
        public void setupAssets() {
            this.f15036b = new Animation<>(0.05f, Game.f8589i.assetManager.getTextureRegions("unit-type-ball-lightning"));
        }

        @Override // com.prineside.tdi2.Unit.Factory
        public BallLightningUnit create() {
            return new BallLightningUnit();
        }
    }

    public void setup(Tower tower, float f) {
        this.drawOverEnemies = true;
        this.f15034b = tower;
        this.f15035d = f;
    }

    public BallLightningUnit() {
        super(1);
    }

    @Override // com.prineside.tdi2.Unit
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        ResourcePack.AtlasTextureRegion keyFrame = Game.f8589i.unitManager.f10234F.BALL_LIGHTNING.f15036b.getKeyFrame(this.f15033a, true);
        Vector2 vector2 = this.drawPosition;
        spriteBatch.draw(keyFrame, vector2.f5527x - 32.0f, vector2.f5528y - 32.0f, 32.0f, 32.0f, 64.0f, 64.0f, 1.0f, 1.0f, 0.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0086, code lost:
        r1 = r1 + 1;
     */
    @Override // com.prineside.tdi2.Unit
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(float r14) {
        /*
            r13 = this;
            float r0 = r13.f15033a
            float r0 = r0 + r14
            r13.f15033a = r0
            com.prineside.tdi2.Tile r14 = r13.currentTile
            com.badlogic.gdx.utils.Array r14 = r14.getNeighbourTilesAndThis()
            r0 = 0
            r1 = 0
        Ld:
            int r2 = r14.size
            if (r1 >= r2) goto L89
            T[] r2 = r14.items
            com.prineside.tdi2.Tile[] r2 = (com.prineside.tdi2.Tile[]) r2
            r2 = r2[r1]
            r3 = 0
        L18:
            com.badlogic.gdx.utils.DelayedRemovalArray<com.prineside.tdi2.Enemy$EnemyReference> r4 = r2.enemies
            int r5 = r4.size
            if (r3 >= r5) goto L86
            T[] r4 = r4.items
            com.prineside.tdi2.Enemy$EnemyReference[] r4 = (com.prineside.tdi2.Enemy.EnemyReference[]) r4
            r4 = r4[r3]
            com.prineside.tdi2.Enemy r4 = r4.enemy
            if (r4 == 0) goto L83
            com.prineside.tdi2.enums.DamageType r5 = com.prineside.tdi2.enums.DamageType.ELECTRICITY
            boolean r5 = r4.isVulnerableTo(r5)
            if (r5 != 0) goto L31
            goto L83
        L31:
            com.badlogic.gdx.math.Vector2 r5 = r4.getPosition()
            float r6 = r5.f5527x
            com.badlogic.gdx.math.Vector2 r5 = r4.getPosition()
            float r7 = r5.f5528y
            float r8 = r4.getSize()
            com.badlogic.gdx.math.Vector2 r5 = r13.position
            float r9 = r5.f5527x
            float r10 = r5.f5528y
            r11 = 1107296256(0x42000000, float:32.0)
            boolean r5 = com.prineside.tdi2.utils.PMath.circleIntersectsCircle(r6, r7, r8, r9, r10, r11)
            if (r5 == 0) goto L83
            com.prineside.tdi2.Game r14 = com.prineside.tdi2.Game.f8589i
            com.prineside.tdi2.managers.ProjectileManager r14 = r14.projectileManager
            com.prineside.tdi2.enums.ProjectileType r0 = com.prineside.tdi2.enums.ProjectileType.CHAIN_LIGHTNING
            com.prineside.tdi2.Projectile$Factory r14 = r14.getFactory(r0)
            com.prineside.tdi2.Projectile r14 = r14.obtain()
            r5 = r14
            com.prineside.tdi2.projectiles.ChainLightningProjectile r5 = (com.prineside.tdi2.projectiles.ChainLightningProjectile) r5
            com.prineside.tdi2.GameSystemProvider r14 = r13.f8844S
            com.prineside.tdi2.systems.ProjectileSystem r14 = r14.projectile
            r14.register(r5)
            com.prineside.tdi2.Tower r6 = r13.f15034b
            float r8 = r13.f15035d
            r14 = 1036831949(0x3dcccccd, float:0.1)
            float r9 = r8 * r14
            r10 = 1063675494(0x3f666666, float:0.9)
            r11 = 1098907648(0x41800000, float:16.0)
            com.badlogic.gdx.math.Vector2 r12 = r13.position
            r7 = r4
            r5.setup(r6, r7, r8, r9, r10, r11, r12)
            com.prineside.tdi2.GameSystemProvider r14 = r13.f8844S
            com.prineside.tdi2.systems.UnitSystem r14 = r14.unit
            r14.killUnit(r13, r4)
            goto L89
        L83:
            int r3 = r3 + 1
            goto L18
        L86:
            int r1 = r1 + 1
            goto Ld
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.units.BallLightningUnit.update(float):void");
    }

    @Override // com.prineside.tdi2.Unit, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f15033a = input.readFloat();
        this.f15034b = (Tower) kryo.readClassAndObject(input);
        this.f15035d = input.readFloat();
    }

    @Override // com.prineside.tdi2.Unit, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f15033a);
        kryo.writeClassAndObject(output, this.f15034b);
        output.writeFloat(this.f15035d);
    }
}
