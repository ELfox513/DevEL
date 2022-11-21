package com.prineside.tdi2.enemies.bosses;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.waves.processors.ConstructorBossWaveProcessor;
@REGS
/* loaded from: classes2.dex */
public class ConstructorBossEnemy extends Enemy {

    /* renamed from: v */
    public static final Color f9207v = MaterialColor.BLUE_GREY.P500;
    public Array<Enemy> enemiesToSpawn;
    public boolean groupSpawned25hp;
    public boolean groupSpawned50hp;
    public boolean groupSpawned75hp;
    public boolean invulnerable;
    public ConstructorBossWaveProcessor processor;
    public float spawnDelayAfterTime;
    public float spawnDelayBeforeTime;
    public float spawningTime;
    public float timeSinceCreepSpawn;

    /* loaded from: classes2.dex */
    public static class ConstructorBossBodyEnemyFactory extends Enemy.Factory<ConstructorBossEnemy> {

        /* renamed from: r */
        public TextureRegion f9208r;

        /* renamed from: s */
        public TextureRegion f9209s;

        public ConstructorBossBodyEnemyFactory() {
            super(EnemyType.CONSTRUCTOR_BOSS);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.BLUE_GREY.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9208r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9208r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public ConstructorBossEnemy create() {
            return new ConstructorBossEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9208r = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-constructor");
            this.f9209s = Game.f8589i.assetManager.getTextureRegion("aura-range");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean dynamicPathfindingAllowed() {
        return false;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getAbilityVulnerability(AbilityType abilityType) {
        return abilityType == AbilityType.BALL_LIGHTNING ? 0.1f : 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 100.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getSize() {
        return isInvulnerable() ? 96.0f : 64.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getSquaredSize() {
        isInvulnerable();
        return 4096.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return true;
    }

    public boolean isInvulnerable() {
        return this.invulnerable;
    }

    public ConstructorBossEnemy() {
        super(EnemyType.CONSTRUCTOR_BOSS);
        this.enemiesToSpawn = new Array<>(Enemy.class);
    }

    public void changeSpeedTo(float f, float f2) {
        float speed = f - getSpeed();
        if (speed != 0.0f) {
            float f3 = f2 * 2.0f;
            float abs = StrictMath.abs(speed);
            if (f3 < abs) {
                setSpeed(getSpeed() + (speed * (f3 / abs)));
            } else {
                setSpeed(f);
            }
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        if (isInvulnerable()) {
            spriteBatch.setColor(f9207v);
            TextureRegion textureRegion = Game.f8589i.enemyManager.f9783F.CONSTRUCTOR_BOSS.f9209s;
            Vector2 vector2 = this.drawPosition;
            spriteBatch.draw(textureRegion, vector2.f5527x - 96.0f, vector2.f5528y - 96.0f, 192.0f, 192.0f);
            spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        }
        super.drawBatch(spriteBatch, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0055  */
    @Override // com.prineside.tdi2.Enemy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float giveDamage(com.prineside.tdi2.Tower r5, float r6, com.prineside.tdi2.enums.DamageType r7) {
        /*
            r4 = this;
            boolean r0 = r4.isInvulnerable()
            if (r0 == 0) goto L8
            r5 = 0
            return r5
        L8:
            boolean r0 = r4.groupSpawned25hp
            if (r0 != 0) goto L5c
            com.prineside.tdi2.waves.processors.ConstructorBossWaveProcessor r0 = r4.processor
            if (r0 == 0) goto L5c
            if (r5 != 0) goto L14
            r0 = 0
            goto L16
        L14:
            com.prineside.tdi2.enums.TowerType r0 = r5.type
        L16:
            float r0 = r4.getBuffedDamageMultiplier(r0, r7)
            float r6 = r6 * r0
            float r1 = r4.getHealth()
            r2 = 1008981770(0x3c23d70a, float:0.01)
            float r1 = r1 + r2
            boolean r2 = r4.groupSpawned75hp
            if (r2 != 0) goto L35
            float r1 = r4.getHealth()
            float r2 = r4.maxHealth
            r3 = 1060991140(0x3f3d70a4, float:0.74)
        L31:
            float r2 = r2 * r3
            float r1 = r1 - r2
            goto L51
        L35:
            boolean r2 = r4.groupSpawned50hp
            if (r2 != 0) goto L43
            float r1 = r4.getHealth()
            float r2 = r4.maxHealth
            r3 = 1056629064(0x3efae148, float:0.49)
            goto L31
        L43:
            boolean r2 = r4.groupSpawned25hp
            if (r2 != 0) goto L51
            float r1 = r4.getHealth()
            float r2 = r4.maxHealth
            r3 = 1047904911(0x3e75c28f, float:0.24)
            goto L31
        L51:
            int r2 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r2 <= 0) goto L56
            r6 = r1
        L56:
            float r6 = r6 / r0
            float r5 = super.giveDamage(r5, r6, r7)
            return r5
        L5c:
            float r5 = super.giveDamage(r5, r6, r7)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.enemies.bosses.ConstructorBossEnemy.giveDamage(com.prineside.tdi2.Tower, float, com.prineside.tdi2.enums.DamageType):float");
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.enemiesToSpawn = (Array) kryo.readObject(input, Array.class);
        this.spawningTime = input.readFloat();
        this.timeSinceCreepSpawn = input.readFloat();
        this.spawnDelayBeforeTime = input.readFloat();
        this.spawnDelayAfterTime = input.readFloat();
        this.groupSpawned75hp = input.readBoolean();
        this.groupSpawned50hp = input.readBoolean();
        this.groupSpawned25hp = input.readBoolean();
        this.invulnerable = input.readBoolean();
        this.processor = (ConstructorBossWaveProcessor) kryo.readObjectOrNull(input, ConstructorBossWaveProcessor.class);
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.enemiesToSpawn = new Array<>(Enemy.class);
        this.spawningTime = 0.0f;
        this.timeSinceCreepSpawn = 0.0f;
        this.spawnDelayBeforeTime = 0.0f;
        this.spawnDelayAfterTime = 0.0f;
        this.groupSpawned75hp = false;
        this.groupSpawned50hp = false;
        this.groupSpawned25hp = false;
        this.invulnerable = false;
        this.processor = null;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.enemiesToSpawn);
        output.writeFloat(this.spawningTime);
        output.writeFloat(this.timeSinceCreepSpawn);
        output.writeFloat(this.spawnDelayBeforeTime);
        output.writeFloat(this.spawnDelayAfterTime);
        output.writeBoolean(this.groupSpawned75hp);
        output.writeBoolean(this.groupSpawned50hp);
        output.writeBoolean(this.groupSpawned25hp);
        output.writeBoolean(this.invulnerable);
        kryo.writeObjectOrNull(output, this.processor, ConstructorBossWaveProcessor.class);
    }
}
