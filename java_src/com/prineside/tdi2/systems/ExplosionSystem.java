package com.prineside.tdi2.systems;

import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Explosion;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ExplosionSystem extends GameSystem {

    /* renamed from: a */
    public Array<Explosion> f11452a = new Array<>(false, 16, Explosion.class);

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        int i = 0;
        while (true) {
            Array<Explosion> array = this.f11452a;
            if (i < array.size) {
                array.items[i].setUnregistered();
                i++;
            } else {
                array.clear();
                Game.f8589i.debugManager.unregisterValue("Explosions count");
                super.dispose();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Explosion";
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
    }

    /* renamed from: a */
    public final void m21041a(int i) {
        Explosion explosion = this.f11452a.items[i];
        explosion.setUnregistered();
        this.f11452a.removeIndex(i);
        Game.f8589i.explosionManager.getFactory(explosion.type).free(explosion);
    }

    public void register(Explosion explosion) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        explosion.setRegistered(this.f8844S);
        this.f11452a.add(explosion);
        if (Game.f8589i.debugManager.isEnabled()) {
            Game.f8589i.debugManager.registerValue("Explosions count").append(this.f11452a.size);
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        for (int i = this.f11452a.size - 1; i >= 0; i--) {
            this.f11452a.items[i].update(f);
        }
        for (int i2 = this.f11452a.size - 1; i2 >= 0; i2--) {
            if (this.f11452a.items[i2].isDone()) {
                m21041a(i2);
                if (Game.f8589i.debugManager.isEnabled()) {
                    Game.f8589i.debugManager.registerValue("Explosions count").append(this.f11452a.size);
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11452a = (Array) kryo.readObject(input, Array.class);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f11452a);
    }
}
