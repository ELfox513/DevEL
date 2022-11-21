package com.prineside.tdi2.explosions;

import com.badlogic.gdx.graphics.Color;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Explosion;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class AirFallExplosion extends Explosion {

    /* renamed from: u */
    public static final Color f9325u = MaterialColor.LIGHT_BLUE.P400;

    /* loaded from: classes2.dex */
    public static class AirFallExplosionFactory extends Explosion.Factory<AirFallExplosion> {
        @Override // com.prineside.tdi2.Explosion.Factory
        /* renamed from: b */
        public AirFallExplosion mo21770a() {
            return new AirFallExplosion();
        }
    }

    @Override // com.prineside.tdi2.Explosion
    public boolean isDone() {
        return super.isDone();
    }

    public void setup(Tower tower, float f, float f2, float f3, float f4) {
        super.m22014a(tower, f, f2, f3, f4, (0.08f * f4) + 0.25f, null);
    }

    public AirFallExplosion() {
        super(ExplosionType.AIR_FALL);
    }

    @Override // com.prineside.tdi2.Explosion
    public void enemyAffected(Enemy enemy, float f, float f2) {
        if (!enemy.isAir() && this.f8844S.enemy.giveDamage(enemy, null, Explosion.calculateDamage(this.damage, f, f2), DamageType.EXPLOSION, this.fromAbility, true, null)) {
            this.f8844S.achievement.registerDelta(AchievementType.KILL_GROUND_ENEMY_WITH_AIR, 1);
        }
    }

    @Override // com.prineside.tdi2.Explosion
    public void explode() {
        super.explode();
        addExplosionParticle(f9325u, LimitedParticleType.EXPLOSION_AIR_FALL);
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playExplosionSound(this.position.f5527x);
        }
    }
}
