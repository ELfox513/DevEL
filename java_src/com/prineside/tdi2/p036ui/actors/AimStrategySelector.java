package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import java.util.Comparator;
/* renamed from: com.prineside.tdi2.ui.actors.AimStrategySelector */
/* loaded from: classes2.dex */
public class AimStrategySelector extends Group {

    /* renamed from: U */
    public static final Comparator<StrategyIcon> f12464U = new Comparator<StrategyIcon>() { // from class: com.prineside.tdi2.ui.actors.AimStrategySelector.1
        @Override // java.util.Comparator
        public int compare(StrategyIcon strategyIcon, StrategyIcon strategyIcon2) {
            float f = strategyIcon.f12475M;
            if (f == strategyIcon2.f12475M) {
                return 0;
            }
            return StrictMath.abs(f) > StrictMath.abs(strategyIcon2.f12475M) ? -1 : 1;
        }
    };

    /* renamed from: M */
    public final PaddedImageButton f12465M;

    /* renamed from: N */
    public final PaddedImageButton f12466N;

    /* renamed from: O */
    public float f12467O = 4.0f;

    /* renamed from: P */
    public Tower.AimStrategy f12468P;

    /* renamed from: Q */
    public float f12469Q;

    /* renamed from: R */
    public final StrategyIcon[] f12470R;

    /* renamed from: S */
    public final Array<StrategyIcon> f12471S;

    /* renamed from: T */
    public final DelayedRemovalArray<AimStrategySelectorListener> f12472T;

    /* renamed from: com.prineside.tdi2.ui.actors.AimStrategySelector$AimStrategySelectorListener */
    /* loaded from: classes2.dex */
    public interface AimStrategySelectorListener {
        void strategyChanged(Tower.AimStrategy aimStrategy);
    }

    /* renamed from: com.prineside.tdi2.ui.actors.AimStrategySelector$StrategyIcon */
    /* loaded from: classes2.dex */
    public class StrategyIcon extends Group {

        /* renamed from: M */
        public float f12475M;

        /* renamed from: N */
        public Image f12476N;

        /* renamed from: O */
        public Image f12477O;

        /* renamed from: P */
        public final Color f12478P;

        public StrategyIcon(String str, Color color) {
            Color color2 = new Color();
            this.f12478P = color2;
            color2.set(color);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-aim-strategy-switch-item-background"));
            this.f12476N = image;
            addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable(str));
            this.f12477O = image2;
            addActor(image2);
            setTransform(false);
            setSize(94.0f, 84.0f);
        }

        /* renamed from: p */
        public void m20721p(float f) {
            this.f12475M = f;
            float abs = (2.0f - StrictMath.abs(f)) / 2.0f;
            if (abs >= 0.0f && abs <= 1.0f) {
                setVisible(true);
                float f2 = 1.0f - ((1.0f - abs) * 0.33f);
                float f3 = 94.0f * f2;
                float f4 = 84.0f * f2;
                setPosition(((f * 70.0f) + 155.0f) - (f3 * 0.5f), 42.0f - (0.5f * f4));
                setSize(f3, f4);
                Color color = this.f12478P;
                color.f3889a = abs;
                this.f12476N.setColor(color);
                this.f12476N.setSize(f3, f4);
                float f5 = 64.0f * f2;
                this.f12477O.setColor(1.0f, 1.0f, 1.0f, abs);
                this.f12477O.setSize(f5, f5);
                this.f12477O.setPosition(15.0f * f2, f2 * 12.0f);
                return;
            }
            setVisible(false);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void sizeChanged() {
    }

    /* renamed from: t */
    public final void m20722t() {
        int i = 0;
        int i2 = 0;
        while (true) {
            Tower.AimStrategy[] aimStrategyArr = Tower.AimStrategy.values;
            if (i2 >= aimStrategyArr.length) {
                break;
            }
            this.f12470R[i2].m20721p(PMath.loopedDistance(i2, this.f12469Q, aimStrategyArr.length));
            i2++;
        }
        this.f12471S.sort(f12464U);
        while (true) {
            Array<StrategyIcon> array = this.f12471S;
            if (i < array.size) {
                array.items[i].setZIndex(99);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        if (this.f12469Q != this.f12468P.ordinal()) {
            float f2 = this.f12467O * f;
            if (!Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                f2 = 9001.0f;
            }
            float loopedDistance = PMath.loopedDistance(this.f12469Q, this.f12468P.ordinal(), Tower.AimStrategy.values.length);
            if (loopedDistance <= f2) {
                f2 = -f2;
                if (loopedDistance >= f2) {
                    f2 = loopedDistance;
                }
            }
            float f3 = this.f12469Q - f2;
            this.f12469Q = f3;
            StrategyIcon[] strategyIconArr = this.f12470R;
            this.f12469Q = (f3 + strategyIconArr.length) % strategyIconArr.length;
            m20722t();
        }
        super.act(f);
    }

    public void addListener(AimStrategySelectorListener aimStrategySelectorListener) {
        if (aimStrategySelectorListener != null) {
            if (!this.f12472T.contains(aimStrategySelectorListener, true)) {
                this.f12472T.add(aimStrategySelectorListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    /* renamed from: r */
    public final void m20724r() {
        int ordinal = this.f12468P.ordinal() + 1;
        Tower.AimStrategy[] aimStrategyArr = Tower.AimStrategy.values;
        if (ordinal == aimStrategyArr.length) {
            ordinal = 0;
        }
        setStrategy(aimStrategyArr[ordinal], true, true);
    }

    public void removeListener(AimStrategySelectorListener aimStrategySelectorListener) {
        if (aimStrategySelectorListener != null) {
            this.f12472T.removeValue(aimStrategySelectorListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    /* renamed from: s */
    public final void m20723s() {
        int ordinal = this.f12468P.ordinal() - 1;
        if (ordinal == -1) {
            ordinal = Tower.AimStrategy.values.length - 1;
        }
        setStrategy(Tower.AimStrategy.values[ordinal], true, true);
    }

    public void setStrategy(Tower.AimStrategy aimStrategy, boolean z, boolean z2) {
        if (this.f12468P != aimStrategy) {
            this.f12468P = aimStrategy;
            if (!z) {
                this.f12469Q = aimStrategy.ordinal();
                m20722t();
            } else {
                float abs = StrictMath.abs(PMath.loopedDistance(this.f12469Q, aimStrategy.ordinal(), Tower.AimStrategy.values.length)) * 4.0f;
                this.f12467O = abs;
                if (abs < 4.0f) {
                    this.f12467O = 4.0f;
                }
            }
            if (z2) {
                this.f12472T.begin();
                int i = this.f12472T.size;
                for (int i2 = 0; i2 < i; i2++) {
                    this.f12472T.get(i2).strategyChanged(aimStrategy);
                }
                this.f12472T.end();
            }
        }
    }

    public AimStrategySelector() {
        Tower.AimStrategy[] aimStrategyArr = Tower.AimStrategy.values;
        this.f12470R = new StrategyIcon[aimStrategyArr.length];
        this.f12471S = new Array<>(StrategyIcon.class);
        this.f12472T = new DelayedRemovalArray<>();
        setTransform(false);
        setSize(310.0f, 84.0f);
        Group group = new Group();
        group.setSize(310.0f, 84.0f);
        group.setTransform(false);
        addActor(group);
        for (Tower.AimStrategy aimStrategy : aimStrategyArr) {
            StrategyIcon strategyIcon = new StrategyIcon(Game.f8589i.towerManager.getAimStrategyIconAlias(aimStrategy), Game.f8589i.towerManager.getAimStrategyColor(aimStrategy));
            this.f12470R[aimStrategy.ordinal()] = strategyIcon;
            group.addActor(strategyIcon);
            this.f12471S.add(strategyIcon);
        }
        TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("icon-triangle-left");
        Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.ui.actors.AimStrategySelector.2
            @Override // java.lang.Runnable
            public void run() {
                AimStrategySelector.this.m20723s();
            }
        };
        Color color = MaterialColor.LIGHT_BLUE.P800;
        Color color2 = MaterialColor.LIGHT_BLUE.P500;
        Color color3 = MaterialColor.LIGHT_BLUE.P900;
        PaddedImageButton paddedImageButton = new PaddedImageButton(drawable, runnable, color, color2, color3);
        this.f12465M = paddedImageButton;
        paddedImageButton.setSize(155.0f, 84.0f);
        paddedImageButton.setIconSize(40.0f, 40.0f).setIconPosition(6.0f, 23.0f);
        addActor(paddedImageButton);
        PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-triangle-right"), new Runnable() { // from class: com.prineside.tdi2.ui.actors.AimStrategySelector.3
            @Override // java.lang.Runnable
            public void run() {
                AimStrategySelector.this.m20724r();
            }
        }, color, color2, color3);
        this.f12466N = paddedImageButton2;
        paddedImageButton2.setSize(155.0f, 84.0f);
        paddedImageButton2.setPosition(155.0f, 0.0f);
        paddedImageButton2.setIconSize(40.0f, 40.0f).setIconPosition(110.0f, 23.0f);
        addActor(paddedImageButton2);
        if (HotKeyHintLabel.isEnabled()) {
            addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.AIM_MODE_SWITCH_PREVIOUS), 26.0f, 6.0f));
            addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.AIM_MODE_SWITCH_NEXT), 285.0f, 6.0f));
        }
        setStrategy(Tower.AimStrategy.values[0], false, false);
        m20722t();
    }
}
