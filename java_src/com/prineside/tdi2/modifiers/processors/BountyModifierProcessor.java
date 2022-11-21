package com.prineside.tdi2.modifiers.processors;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.ModifierProcessor;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.modifiers.BountyModifier;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BountyModifierProcessor extends ModifierProcessor<BountyModifier> {

    /* renamed from: d */
    public static final Array<Tile> f10382d = new Array<>(Tile.class);

    /* renamed from: b */
    public _WaveSystemListener f10383b;

    @REGS
    /* loaded from: classes2.dex */
    public static class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public BountyModifierProcessor f10384a;

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 777999106;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f10384a = (BountyModifierProcessor) kryo.readObjectOrNull(input, BountyModifierProcessor.class);
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void waveCompleted(Wave wave) {
            this.f10384a.m21385b(wave);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f10384a, BountyModifierProcessor.class);
        }

        @Deprecated
        public _WaveSystemListener() {
        }

        public _WaveSystemListener(BountyModifierProcessor bountyModifierProcessor) {
            this.f10384a = bountyModifierProcessor;
        }
    }

    /* renamed from: b */
    public final void m21385b(Wave wave) {
        int intValue = this.f8844S.gameValue.getIntValue(GameValueType.MODIFIER_BOUNTY_VALUE);
        int money = (int) (this.f8844S.gameState.getMoney() * 0.02f);
        if (money <= intValue) {
            intValue = money;
        }
        if (intValue == 0) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            GameSystemProvider gameSystemProvider = this.f8844S;
            DelayedRemovalArray<Modifier> delayedRemovalArray = gameSystemProvider.modifier.modifiers;
            if (i < delayedRemovalArray.size) {
                Modifier modifier = delayedRemovalArray.items[i];
                if (modifier.type == ModifierType.BOUNTY) {
                    i2 += intValue;
                    ((BountyModifier) modifier).coinsGained += intValue;
                    if (gameSystemProvider._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                        this.f8844S._particle.addCoinParticle(modifier.getTile().center.f5527x, modifier.getTile().center.f5528y + 32.0f, intValue);
                    }
                }
                i++;
            } else {
                gameSystemProvider.gameState.addMoney(i2, true);
                this.f8844S.statistics.addStatistic(StatisticsType.CG_B, i2);
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f8844S.wave.listeners.remove(this.f10383b);
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.ModifierProcessor, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10383b = (_WaveSystemListener) kryo.readObjectOrNull(input, _WaveSystemListener.class);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        if (this.f10383b == null) {
            this.f10383b = new _WaveSystemListener();
        }
        gameSystemProvider.wave.listeners.add(this.f10383b);
    }

    @Override // com.prineside.tdi2.ModifierProcessor, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.f10383b, _WaveSystemListener.class);
    }
}
