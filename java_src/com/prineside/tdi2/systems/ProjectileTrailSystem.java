package com.prineside.tdi2.systems;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.ProjectileTrail;
import com.prineside.tdi2.utils.NAGS;
@NAGS
/* loaded from: classes2.dex */
public class ProjectileTrailSystem extends GameSystem {

    /* renamed from: a */
    public final DelayedRemovalArray<ProjectileTrail> f11736a = new DelayedRemovalArray<>(false, 16, ProjectileTrail.class);

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return false;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "ProjectileTrail";
    }

    public void addTrail(ProjectileTrail projectileTrail) {
        if (!this.f8844S.gameState.canSkipMediaUpdate()) {
            if (!Game.f8589i.settingsManager.isProjectileTrailsDrawing()) {
                projectileTrail.free();
                return;
            } else {
                this.f11736a.add(projectileTrail);
                return;
            }
        }
        throw new IllegalStateException("no trails now!");
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.debugManager.unregisterValue("Particles count");
        this.f11736a.clear();
        super.dispose();
    }

    public void draw(SpriteBatch spriteBatch, float f, float f2) {
        if (this.f8844S.gameState.isGameOver()) {
            f = this.f8844S.gameValue.getTickRateDeltaTime();
        }
        if (Game.f8589i.settingsManager.isProjectilesDrawing() && Game.f8589i.settingsManager.isProjectileTrailsDrawing()) {
            spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
            this.f11736a.begin();
            int i = this.f11736a.size;
            for (int i2 = 0; i2 < i; i2++) {
                ProjectileTrail projectileTrail = this.f11736a.items[i2];
                projectileTrail.update(f);
                if (projectileTrail.isFinished()) {
                    this.f11736a.removeIndex(i2);
                    projectileTrail.free();
                } else {
                    projectileTrail.draw(spriteBatch);
                }
            }
            this.f11736a.end();
        }
    }
}
