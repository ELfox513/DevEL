package com.prineside.tdi2.explosions;

import com.badlogic.gdx.graphics.Color;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Explosion;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MissileExplosion extends Explosion {

    /* renamed from: u */
    public static final Color f9345u = MaterialColor.RED.P400;

    /* loaded from: classes2.dex */
    public static class MissileExplosionFactory extends Explosion.Factory<MissileExplosion> {
        @Override // com.prineside.tdi2.Explosion.Factory
        /* renamed from: b */
        public MissileExplosion mo21770a() {
            return new MissileExplosion();
        }
    }

    @Override // com.prineside.tdi2.Explosion, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
    }

    public void setup(Tower tower, float f, float f2, float f3, float f4) {
        super.m22014a(tower, f, f2, f3, f4, (0.08f * f4) + 0.25f, null);
    }

    public MissileExplosion() {
        super(ExplosionType.MISSILE);
    }

    @Override // com.prineside.tdi2.Explosion
    public void enemyAffected(Enemy enemy, float f, float f2) {
        Tower tower = getTower();
        if (tower != null && tower.isRegistered() && tower.canAttackEnemy(enemy)) {
            float f3 = this.damage;
            if (tower.type == TowerType.MISSILE && tower.isAbilityInstalled(3) && enemy.getHealth() / enemy.maxHealth > this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MISSILE_A_OVERWEIGHT_HP)) {
                double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MISSILE_A_OVERWEIGHT_DAMAGE);
                if (tower.isAbilityInstalled(4)) {
                    percentValueAsMultiplier += this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MISSILE_A_ULTIMATE_DAMAGE);
                }
                double d = f3;
                Double.isNaN(d);
                f3 = (float) (d * (percentValueAsMultiplier + 1.0d));
            }
            this.f8844S.enemy.giveDamage(enemy, tower, Explosion.calculateDamage(f3, f, f2), DamageType.EXPLOSION, this.fromAbility, true, null);
        }
    }

    @Override // com.prineside.tdi2.Explosion
    public void explode() {
        super.explode();
        addExplosionParticle(f9345u, LimitedParticleType.EXPLOSION_MISSILE);
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playExplosionSound(this.position.f5527x);
        }
    }
}
