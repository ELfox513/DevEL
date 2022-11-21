package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.AbilitySlotButton;
import com.prineside.tdi2.p036ui.actors.HotKeyHintLabel;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.systems.AbilitySystem;
import com.prineside.tdi2.systems.GameValueSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import net.bytebuddy.asm.Advice;
/* renamed from: com.prineside.tdi2.ui.components.AbilityMenu */
/* loaded from: classes2.dex */
public class AbilityMenu implements Disposable {

    /* renamed from: z */
    public static final StringBuilder f12781z = new StringBuilder();

    /* renamed from: a */
    public final UiManager.UiLayer f12782a;

    /* renamed from: b */
    public boolean f12783b;

    /* renamed from: d */
    public AbilitySlotButton[] f12784d;

    /* renamed from: k */
    public Label f12785k;

    /* renamed from: p */
    public Group f12786p;

    /* renamed from: q */
    public Label f12787q;

    /* renamed from: r */
    public Label f12788r;

    /* renamed from: s */
    public Image[] f12789s;

    /* renamed from: t */
    public GameSystemProvider f12790t;

    /* renamed from: u */
    public boolean f12791u;

    /* renamed from: v */
    public int f12792v;

    /* renamed from: w */
    public int f12793w;

    /* renamed from: x */
    public final _AbilitySystemListener f12794x;

    /* renamed from: y */
    public final _GameValueSystemListener f12795y;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.AbilityMenu$_AbilitySystemListener */
    /* loaded from: classes2.dex */
    public class _AbilitySystemListener implements AbilitySystem.AbilitySystemListener {
        public _AbilitySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.AbilitySystem.AbilitySystemListener
        public void abilitiesConfigurationChanged() {
            AbilityMenu.this.update();
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
            AbilityMenu.this.update();
        }

        @Override // com.prineside.tdi2.systems.AbilitySystem.AbilitySystemListener
        public void stoppedUsingAbility() {
            AbilityMenu.this.update();
        }
    }

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.AbilityMenu$_GameValueSystemListener */
    /* loaded from: classes2.dex */
    public class _GameValueSystemListener implements GameValueSystem.GameValueSystemListener {
        public _GameValueSystemListener() {
        }

        @Override // com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return false;
        }

        @Override // com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 0;
        }

        @Override // com.prineside.tdi2.systems.GameValueSystem.GameValueSystemListener
        public void recalculated(double[] dArr) {
            AbilityMenu.this.update();
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f12782a);
    }

    public AbilityMenu(final GameSystemProvider gameSystemProvider) {
        int i;
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 101, "AbilityMenu");
        this.f12782a = addLayer;
        this.f12784d = new AbilitySlotButton[6];
        this.f12789s = new Image[10];
        this.f12792v = -1;
        this.f12793w = -1;
        _AbilitySystemListener _abilitysystemlistener = new _AbilitySystemListener();
        this.f12794x = _abilitysystemlistener;
        _GameValueSystemListener _gamevaluesystemlistener = new _GameValueSystemListener();
        this.f12795y = _gamevaluesystemlistener;
        this.f12790t = gameSystemProvider;
        gameSystemProvider.ability.listeners.add(_abilitysystemlistener);
        gameSystemProvider.gameValue.listeners.add(_gamevaluesystemlistener);
        Group group = new Group();
        group.setTransform(false);
        addLayer.getTable().add((Table) group).expand().bottom().left().padBottom(192.0f).padLeft(32.0f).size(234.0f, 381.0f);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f12785k = label;
        label.setPosition(250.0f, 10.0f);
        this.f12785k.setWrap(true);
        this.f12785k.setSize(256.0f, 100.0f);
        group.addActor(this.f12785k);
        this.f12785k.setVisible(false);
        Group group2 = new Group();
        this.f12786p = group2;
        group2.setTransform(false);
        this.f12786p.setTouchable(Touchable.childrenOnly);
        this.f12786p.setSize(250.0f, 68.0f);
        this.f12786p.setPosition(0.0f, 386.0f);
        group.addActor(this.f12786p);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-lightning-bolt"));
        image.setSize(48.0f, 48.0f);
        image.setPosition(7.0f, 2.0f);
        image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        this.f12786p.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-lightning-bolt"));
        image2.setSize(48.0f, 48.0f);
        image2.setPosition(-3.0f, 12.0f);
        Color color = MaterialColor.CYAN.P300;
        image2.setColor(color);
        this.f12786p.addActor(image2);
        QuadActor quadActor = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.28f), new float[]{0.0f, 14.0f, 0.0f, 32.0f, 178.0f, 17.0f, 178.0f, 0.0f});
        quadActor.setPosition(56.0f, 0.0f);
        this.f12786p.addActor(quadActor);
        QuadActor quadActor2 = new QuadActor(MaterialColor.CYAN.P900.cpy().mul(0.75f, 0.75f, 0.75f, 1.0f), new float[]{0.0f, 14.0f, 0.0f, 32.0f, 178.0f, 17.0f, 178.0f, 0.0f});
        quadActor2.setPosition(46.0f, 10.0f);
        this.f12786p.addActor(quadActor2);
        Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f12787q = label2;
        label2.setPosition(240.0f, 10.0f);
        this.f12787q.setSize(40.0f, 17.0f);
        this.f12787q.setColor(color);
        this.f12786p.addActor(this.f12787q);
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f12788r = label3;
        label3.setPosition(195.0f, 37.0f);
        this.f12788r.setSize(40.0f, 17.0f);
        this.f12788r.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f12786p.addActor(this.f12788r);
        for (int i2 = 0; i2 < 10; i2++) {
            this.f12789s[i2] = new Image(Game.f8589i.assetManager.getDrawable("ui-ability-energy-bar"));
            float f = i2;
            this.f12789s[i2].setPosition((18.0f * f) + 0.0f + 46.0f, ((13.0f - ((f * 15.0f) / 10.0f)) + 396.0f) - 386.0f);
            this.f12789s[i2].setSize(16.0f, 19.0f);
            this.f12786p.addActor(this.f12789s[i2]);
        }
        for (final int i3 = 0; i3 < 6; i3++) {
            this.f12784d[i3] = new AbilitySlotButton(false, gameSystemProvider.gameValue);
            this.f12784d[i3].setPosition((i3 % 2) * 128.0f, ((i3 / 2) * 128.0f) + 0.0f + ((1 - i) * 10.0f));
            group.addActor(this.f12784d[i3]);
            if (HotKeyHintLabel.isEnabled()) {
                SettingsManager.HotkeyAction hotkeyAction = SettingsManager.HotkeyAction.ABILITY_1;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                if (i3 != 4) {
                                    if (i3 == 5) {
                                        hotkeyAction = SettingsManager.HotkeyAction.ABILITY_6;
                                    }
                                } else {
                                    hotkeyAction = SettingsManager.HotkeyAction.ABILITY_5;
                                }
                            } else {
                                hotkeyAction = SettingsManager.HotkeyAction.ABILITY_4;
                            }
                        } else {
                            hotkeyAction = SettingsManager.HotkeyAction.ABILITY_3;
                        }
                    } else {
                        hotkeyAction = SettingsManager.HotkeyAction.ABILITY_2;
                    }
                }
                this.f12784d[i3].addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(hotkeyAction), 12.0f, 91.0f));
            }
            this.f12784d[i3].addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.AbilityMenu.1
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f2, float f3) {
                    if (AbilityMenu.this.f12784d[i3].isSelected()) {
                        gameSystemProvider.ability.cancelUsingAbility();
                    } else {
                        gameSystemProvider.ability.startUsingAbility(AbilityMenu.this.f12784d[i3].getAbility());
                    }
                    gameSystemProvider._sound.playStatic(StaticSoundType.BUTTON);
                }
            });
        }
        if (gameSystemProvider.gameState.startingAbilitiesConfiguration == null) {
            this.f12783b = true;
            setVisible(false);
            return;
        }
        this.f12783b = false;
        setVisible(true);
    }

    /* renamed from: b */
    public final void m20649b() {
        AbilitySlotButton[] abilitySlotButtonArr;
        int energy = this.f12790t.ability.getEnergy();
        if (this.f12792v != energy) {
            StringBuilder stringBuilder = f12781z;
            stringBuilder.setLength(0);
            stringBuilder.append('x').append(energy);
            this.f12787q.setText(stringBuilder);
            this.f12792v = energy;
            int maxEnergy = this.f12790t.ability.getMaxEnergy();
            int i = 0;
            while (true) {
                Image[] imageArr = this.f12789s;
                if (i >= imageArr.length) {
                    break;
                }
                int i2 = i + 1;
                if (i2 <= energy) {
                    imageArr[i].setVisible(true);
                    this.f12789s[i].setColor(Color.WHITE);
                } else if (i2 > maxEnergy) {
                    imageArr[i].setColor(0.0f, 0.0f, 0.0f, 0.28f);
                    this.f12789s[i].setVisible(true);
                } else {
                    imageArr[i].setVisible(false);
                }
                i = i2;
            }
        }
        if (energy < this.f12790t.ability.getMaxEnergy()) {
            int ceil = MathUtils.ceil(this.f12790t.ability.getEnergyRegenerationTime() - this.f12790t.ability.getNextEnergyGenerationTime());
            if (this.f12793w != ceil) {
                StringBuilder stringBuilder2 = f12781z;
                stringBuilder2.setLength(0);
                stringBuilder2.append(ceil).append(Advice.OffsetMapping.ForOrigin.Renderer.ForJavaSignature.SYMBOL);
                this.f12788r.setText(stringBuilder2);
                this.f12788r.setVisible(true);
                this.f12793w = ceil;
            }
        } else {
            this.f12788r.setVisible(false);
        }
        float nextEnergyGenerationTime = energy + (this.f12790t.ability.getNextEnergyGenerationTime() / this.f12790t.ability.getEnergyRegenerationTime());
        for (AbilitySlotButton abilitySlotButton : this.f12784d) {
            if (abilitySlotButton.getGameEnergy() != nextEnergyGenerationTime) {
                abilitySlotButton.setGameEnergy(nextEnergyGenerationTime);
            }
        }
    }

    public void draw(float f) {
        if (!this.f12791u) {
            update();
        }
        m20649b();
    }

    public void finalFadeOut() {
        this.f12782a.getTable().setTouchable(Touchable.disabled);
        this.f12782a.getTable().clearActions();
        this.f12782a.getTable().addAction(Actions.alpha(0.0f, 1.0f));
    }

    public void setVisible(boolean z) {
        this.f12783b = z;
        this.f12782a.getTable().setVisible(z);
    }

    public void update() {
        if (this.f12790t.ability.abilitiesConfiguration == null) {
            return;
        }
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (true) {
            AbilitySlotButton[] abilitySlotButtonArr = this.f12784d;
            if (i >= abilitySlotButtonArr.length) {
                break;
            }
            AbilitySlotButton abilitySlotButton = abilitySlotButtonArr[i];
            AbilitySystem abilitySystem = this.f12790t.ability;
            AbilityType abilityType = abilitySystem.abilitiesConfiguration.slots[i];
            int availableAbilities = abilitySystem.getAvailableAbilities(i);
            if (abilityType != null) {
                z2 = true;
            }
            if (abilitySlotButton.getAbility() != abilityType) {
                abilitySlotButton.setAbility(abilityType);
            }
            if (abilitySlotButton.getCount() != availableAbilities) {
                abilitySlotButton.setCount(availableAbilities);
            }
            if (abilityType != null && availableAbilities > 0) {
                abilitySlotButton.setTouchable(Touchable.enabled);
            } else {
                abilitySlotButton.setTouchable(Touchable.disabled);
            }
            i++;
        }
        this.f12786p.setVisible(z2);
        for (AbilitySlotButton abilitySlotButton2 : this.f12784d) {
            abilitySlotButton2.setSelected(false);
        }
        if (this.f12790t.ability.getUiCurrentlyUsingAbility() != null) {
            AbilitySystem abilitySystem2 = this.f12790t.ability;
            int slot = abilitySystem2.abilitiesConfiguration.getSlot(abilitySystem2.getUiCurrentlyUsingAbility());
            if (slot != -1) {
                this.f12784d[slot].setSelected(true);
                z = true;
            }
        }
        if (z) {
            if (Game.f8589i.abilityManager.getFactory(this.f12790t.ability.getUiCurrentlyUsingAbility()).requiresMapPointing()) {
                this.f12785k.setText(Game.f8589i.localeManager.i18n.get("ability_menu_select_point_to_apply"));
            } else {
                this.f12785k.setText(Game.f8589i.localeManager.i18n.get("ability_menu_tap_map_to_apply"));
            }
            this.f12785k.clearActions();
            this.f12785k.setVisible(true);
            this.f12785k.addAction(Actions.alpha(1.0f, 0.3f));
        } else {
            this.f12785k.clearActions();
            this.f12785k.addAction(Actions.sequence(Actions.alpha(0.0f, 0.3f), Actions.hide()));
        }
        m20649b();
        this.f12791u = true;
    }
}
