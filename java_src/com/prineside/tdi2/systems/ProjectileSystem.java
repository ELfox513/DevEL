package com.prineside.tdi2.systems;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.ScheduledUpdater;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ProjectileSystem extends GameSystem {
    public DelayedRemovalArray<Projectile> projectiles = new DelayedRemovalArray<>(false, 16, Projectile.class);
    public int nextProjectileId = 1;
    public ScheduledUpdater scheduledUpdater = new ScheduledUpdater();
    public ListenerGroup<ProjectileSystemListener> listeners = new ListenerGroup<>(ProjectileSystemListener.class);

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface ProjectileSystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static abstract class ProjectileSystemListenerAdapter implements ProjectileSystemListener {
            @Override // com.prineside.tdi2.systems.ProjectileSystem.ProjectileSystemListener
            public void projectileUnregistered(Projectile projectile) {
            }
        }

        void projectileUnregistered(Projectile projectile);
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Projectile";
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
    }

    /* renamed from: a */
    public final void m20907a(int i) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        Projectile projectile = this.projectiles.items[i];
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.listeners.get(i2).projectileUnregistered(projectile);
        }
        this.listeners.end();
        Game.f8589i.projectileManager.getFactory(projectile.type).free(projectile);
        projectile.setUnregistered();
        this.projectiles.removeIndex(i);
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.projectiles.clear();
        Game.f8589i.debugManager.unregisterValue("Projectiles count");
        this.scheduledUpdater.clear();
        super.dispose();
    }

    public void draw(SpriteBatch spriteBatch, float f, float f2) {
        if (!Game.f8589i.settingsManager.isProjectilesDrawing()) {
            return;
        }
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        for (int i = this.projectiles.size - 1; i >= 0; i--) {
            this.projectiles.items[i].applyDrawInterpolation(f2);
            this.projectiles.items[i].draw(spriteBatch, f);
        }
    }

    public void register(Projectile projectile) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (!projectile.isRegistered()) {
            int i = this.nextProjectileId;
            this.nextProjectileId = i + 1;
            projectile.f8834id = i;
            projectile.setRegistered(this.f8844S);
            this.projectiles.add(projectile);
            if (Game.f8589i.debugManager.isEnabled()) {
                Game.f8589i.debugManager.registerValue("Projectiles count").append(this.projectiles.size);
                return;
            }
            return;
        }
        throw new RuntimeException("Already registered");
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        this.projectiles.begin();
        int i = this.projectiles.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.projectiles.items[i2].update(f);
        }
        this.projectiles.end();
        this.projectiles.begin();
        int i3 = this.projectiles.size;
        for (int i4 = 0; i4 < i3; i4++) {
            if (this.projectiles.items[i4].isDone()) {
                m20907a(i4);
            }
        }
        this.projectiles.end();
        if (Game.f8589i.debugManager.isEnabled()) {
            Game.f8589i.debugManager.registerValue("Projectiles count").append(this.projectiles.size);
        }
        this.scheduledUpdater.process(f);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.projectiles = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.nextProjectileId = input.readInt();
        this.scheduledUpdater = (ScheduledUpdater) kryo.readObject(input, ScheduledUpdater.class);
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.projectiles);
        output.writeInt(this.nextProjectileId);
        kryo.writeObject(output, this.scheduledUpdater);
        kryo.writeObject(output, this.listeners);
    }
}
