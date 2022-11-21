package com.prineside.tdi2.systems;

import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.actions.UseAbilityAction;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class AbilitySystem extends GameSystem {

    /* renamed from: p */
    public static final Vector2 f11413p = new Vector2();
    public AbilitySelectionOverlay.SelectedAbilitiesConfiguration abilitiesConfiguration;

    /* renamed from: b */
    public float f11415b;
    @NAGS

    /* renamed from: k */
    public AbilityType f11417k;
    public DelayedRemovalArray<Ability> activeAbilities = new DelayedRemovalArray<>(false, 1, Ability.class);

    /* renamed from: a */
    public int f11414a = 0;
    public int[] abilitiesUsed = {0, 0, 0, 0, 0, 0};
    public ListenerGroup<AbilitySystemListener> listeners = new ListenerGroup<>(AbilitySystemListener.class);
    @NAGS

    /* renamed from: d */
    public final InputProcessor f11416d = new InputAdapter() { // from class: com.prineside.tdi2.systems.AbilitySystem.1
        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchUp(int i, int i2, int i3, int i4) {
            if (AbilitySystem.this.f8844S._input == null) {
                return false;
            }
            AbilitySystem.f11413p.set(i, i2);
            AbilitySystem.this.f8844S._input.getCameraController().screenToMap(AbilitySystem.f11413p);
            if (AbilitySystem.this.f11417k != null) {
                AbilitySystem abilitySystem = AbilitySystem.this;
                abilitySystem.m21050e(abilitySystem.f11417k, (int) AbilitySystem.f11413p.f5527x, (int) AbilitySystem.f11413p.f5528y);
            }
            AbilitySystem.this.cancelUsingAbility();
            return false;
        }
    };

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface AbilitySystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static abstract class AbilitySystemListenerAdapter implements AbilitySystemListener {
            @Override // com.prineside.tdi2.systems.AbilitySystem.AbilitySystemListener
            public void abilitiesConfigurationChanged() {
            }

            @Override // com.prineside.tdi2.systems.AbilitySystem.AbilitySystemListener
            public void abilityApplied(Ability ability, int i, int i2) {
            }

            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.AbilitySystem.AbilitySystemListener
            public void startedUsingAbility() {
            }

            @Override // com.prineside.tdi2.systems.AbilitySystem.AbilitySystemListener
            public void stoppedUsingAbility() {
            }
        }

        void abilitiesConfigurationChanged();

        void abilityApplied(Ability ability, int i, int i2);

        void startedUsingAbility();

        void stoppedUsingAbility();
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    /* renamed from: e */
    public final void m21050e(AbilityType abilityType, int i, int i2) {
        this.f8844S.gameState.pushAction(new UseAbilityAction(abilityType, i, i2));
    }

    public int getEnergy() {
        return this.f11414a;
    }

    public int getEnergyCost(AbilityType abilityType) {
        return this.f8844S.gameValue.getIntValue(Game.f8589i.abilityManager.getEnergyCostGameValueType(abilityType));
    }

    public float getEnergyRegenerationTime() {
        return this.f8844S.gameValue.getFloatValue(GameValueType.ABILITIES_ENERGY_GENERATION_INTERVAL);
    }

    public int getMaxEnergy() {
        return this.f8844S.gameValue.getIntValue(GameValueType.ABILITIES_MAX_ENERGY);
    }

    public float getNextEnergyGenerationTime() {
        return this.f11415b;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Ability";
    }

    public AbilityType getUiCurrentlyUsingAbility() {
        return this.f11417k;
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        this.abilitiesConfiguration = new AbilitySelectionOverlay.SelectedAbilitiesConfiguration(this.f8844S.gameState.startingAbilitiesConfiguration);
    }

    public void cancelUsingAbility() {
        if (this.f11417k != null) {
            this.f11417k = null;
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).stoppedUsingAbility();
            }
            this.listeners.end();
        }
        this.f8844S._input.enableAllInput();
    }

    /* renamed from: d */
    public final void m21051d() {
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).abilitiesConfigurationChanged();
        }
        this.listeners.end();
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.listeners.clear();
        int i = 0;
        while (true) {
            DelayedRemovalArray<Ability> delayedRemovalArray = this.activeAbilities;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.items[i].setUnregistered();
                i++;
            } else {
                delayedRemovalArray.clear();
                super.dispose();
                return;
            }
        }
    }

    public void draw(SpriteBatch spriteBatch, float f) {
        this.activeAbilities.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<Ability> delayedRemovalArray = this.activeAbilities;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.items[i].draw(spriteBatch, f);
                i++;
            } else {
                delayedRemovalArray.end();
                return;
            }
        }
    }

    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
        this.activeAbilities.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<Ability> delayedRemovalArray = this.activeAbilities;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.items[i].drawBatchAdditive(spriteBatch, f);
                i++;
            } else {
                delayedRemovalArray.end();
                return;
            }
        }
    }

    public int getAvailableAbilities(int i) {
        int intValue;
        if (this.f8844S.map.getMap().targetTile.isDisableAbilities()) {
            AbilityType abilityType = this.abilitiesConfiguration.slots[i];
            if (abilityType == null || (intValue = this.f8844S.gameValue.getIntValue(Game.f8589i.abilityManager.getMaxPerGameGameValueType(abilityType)) - this.abilitiesUsed[i]) < 0) {
                return 0;
            }
            return intValue;
        }
        return this.abilitiesConfiguration.counts[i];
    }

    public Ability startAbility(AbilityType abilityType, int i, int i2) {
        Ability create = Game.f8589i.abilityManager.getFactory(abilityType).create();
        create.setRegistered(this.f8844S);
        create.start(i, i2);
        this.activeAbilities.add(create);
        return create;
    }

    public void startUsingAbility(AbilityType abilityType) {
        if (this.f11417k != null) {
            cancelUsingAbility();
        }
        int slot = this.abilitiesConfiguration.getSlot(abilityType);
        if (slot != -1 && getAvailableAbilities(slot) > 0) {
            this.f8844S._input.setCustomMapInputProcessor(this.f11416d);
            this.f11417k = abilityType;
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).startedUsingAbility();
            }
            this.listeners.end();
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        int[] iArr;
        StateSystem.ActionsArray currentUpdateActions = this.f8844S.gameState.getCurrentUpdateActions();
        int i = 0;
        if (currentUpdateActions != null) {
            for (int i2 = 0; i2 < currentUpdateActions.size; i2++) {
                Action action = currentUpdateActions.actions[i2];
                if (action.getType() == ActionType.UA) {
                    UseAbilityAction useAbilityAction = (UseAbilityAction) action;
                    int slot = this.abilitiesConfiguration.getSlot(useAbilityAction.abilityType);
                    if (slot != -1) {
                        if (getAvailableAbilities(slot) > 0) {
                            int energyCost = getEnergyCost(useAbilityAction.abilityType);
                            if (this.f11414a >= energyCost) {
                                Ability startAbility = startAbility(useAbilityAction.abilityType, useAbilityAction.f9104x, useAbilityAction.f9105y);
                                startAbility.startEffects();
                                this.f11414a -= energyCost;
                                this.abilitiesConfiguration.counts[slot] = iArr[slot] - 1;
                                int[] iArr2 = this.abilitiesUsed;
                                iArr2[slot] = iArr2[slot] + 1;
                                m21051d();
                                this.listeners.begin();
                                for (int i3 = 0; i3 < this.listeners.size(); i3++) {
                                    this.listeners.get(i3).abilityApplied(startAbility, useAbilityAction.f9104x, useAbilityAction.f9105y);
                                }
                                this.listeners.end();
                                this.f8844S.gameState.registerPlayerActivity();
                            } else {
                                Logger.error("AbilitySystem", "useAbility - ability requires " + energyCost + " energy though only " + this.f11414a + " available");
                            }
                        } else {
                            Logger.error("AbilitySystem", "useAbility - no abilities of type " + useAbilityAction.abilityType.name() + " left");
                        }
                    } else {
                        Logger.error("AbilitySystem", "useAbility - ability type " + useAbilityAction.abilityType.name() + " not exists in configuration");
                    }
                }
            }
        }
        if (this.f8844S.gameState.isGameRealTimePasses() && this.f11414a < getMaxEnergy()) {
            float energyRegenerationTime = getEnergyRegenerationTime();
            float f2 = this.f11415b + f;
            this.f11415b = f2;
            if (f2 >= energyRegenerationTime) {
                this.f11415b = f2 - energyRegenerationTime;
                int i4 = this.f11414a + 1;
                this.f11414a = i4;
                if (i4 == getMaxEnergy()) {
                    this.f11415b = 0.0f;
                }
            }
        }
        this.activeAbilities.begin();
        while (true) {
            DelayedRemovalArray<Ability> delayedRemovalArray = this.activeAbilities;
            if (i < delayedRemovalArray.size) {
                Ability ability = delayedRemovalArray.items[i];
                ability.update(f);
                if (ability.isDone()) {
                    ability.onDone();
                    ability.setUnregistered();
                    this.activeAbilities.removeIndex(i);
                }
                i++;
            } else {
                delayedRemovalArray.end();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        super.postSetup();
        int i = 0;
        while (true) {
            AbilityType[] abilityTypeArr = this.abilitiesConfiguration.slots;
            if (i < abilityTypeArr.length) {
                AbilityType abilityType = abilityTypeArr[i];
                if (abilityType != null) {
                    int intValue = this.f8844S.gameValue.getIntValue(Game.f8589i.abilityManager.getMaxPerGameGameValueType(abilityType));
                    int[] iArr = this.abilitiesConfiguration.counts;
                    if (iArr[i] > intValue) {
                        iArr[i] = intValue;
                    }
                }
                i++;
            } else {
                m21051d();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.activeAbilities = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.abilitiesConfiguration = (AbilitySelectionOverlay.SelectedAbilitiesConfiguration) kryo.readObjectOrNull(input, AbilitySelectionOverlay.SelectedAbilitiesConfiguration.class);
        this.f11414a = input.readVarInt(true);
        this.f11415b = input.readFloat();
        this.abilitiesUsed = (int[]) kryo.readObject(input, int[].class);
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.activeAbilities);
        kryo.writeObjectOrNull(output, this.abilitiesConfiguration, AbilitySelectionOverlay.SelectedAbilitiesConfiguration.class);
        output.writeVarInt(this.f11414a, true);
        output.writeFloat(this.f11415b);
        kryo.writeObject(output, this.abilitiesUsed);
        kryo.writeObject(output, this.listeners);
    }
}
