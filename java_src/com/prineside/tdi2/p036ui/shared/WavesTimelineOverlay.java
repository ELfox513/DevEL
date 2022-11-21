package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.shared.WavesTimelineOverlay */
/* loaded from: classes2.dex */
public class WavesTimelineOverlay {

    /* renamed from: a */
    public final UiManager.UiLayer f14914a;

    /* renamed from: b */
    public final UiManager.UiLayer f14915b;

    /* renamed from: c */
    public Group f14916c;

    /* renamed from: d */
    public boolean f14917d;

    /* renamed from: e */
    public Runnable f14918e;

    /* renamed from: f */
    public ScrollPane f14919f;

    /* renamed from: com.prineside.tdi2.ui.shared.WavesTimelineOverlay$WavesConfiguration */
    /* loaded from: classes2.dex */
    public static class WavesConfiguration {
        public int startWave = 1;
        public Array<SpawnTile.AllowedEnemyConfig> enemyConfigs = new Array<>(SpawnTile.AllowedEnemyConfig.class);
        public Array<Array<EnemyGroup>> enemyGroupsByWave = new Array<>(Array.class);
    }

    public void hide() {
        setVisible(false);
        Runnable runnable = this.f14918e;
        if (runnable != null) {
            runnable.run();
            this.f14918e = null;
        }
        this.f14916c.clearChildren();
        Game.f8589i.uiManager.stage.setScrollFocus(null);
    }

    public void setHideListener(Runnable runnable) {
        this.f14918e = runnable;
    }

    public void setConfiguration(WavesConfiguration wavesConfiguration) {
        int i;
        int i2;
        String str;
        float f;
        float f2;
        this.f14916c.clearChildren();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            Array<SpawnTile.AllowedEnemyConfig> array = wavesConfiguration.enemyConfigs;
            if (i3 >= array.size) {
                break;
            }
            if (Game.f8589i.enemyManager.getMainEnemyType(array.items[i3].enemyType) != EnemyType.BOSS) {
                i4++;
            }
            i3++;
        }
        int i5 = 1;
        if (i4 == 0) {
            i4 = 1;
        }
        float f3 = i4 * 50.0f;
        float f4 = 132.0f + f3 + 30.0f;
        this.f14916c.setOrigin(630.0f, f4 * 0.5f);
        this.f14916c.setSize(1260.0f, f4);
        float f5 = 0.0f;
        this.f14916c.setPosition(0.0f, (760.0f - f4) * 0.5f);
        this.f14916c.addActor(new QuadActor(new Color(791621631), new float[]{0.0f, 0.0f, 0.0f, f4, 1260.0f, f4 - 12.0f, 1260.0f, 21.0f}));
        Label label = new Label(Game.f8589i.localeManager.i18n.get("enemies_by_wave_from_all_portals"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), Color.WHITE));
        label.setPosition(40.0f, f4 - 76.0f);
        label.setSize(300.0f, 28.0f);
        this.f14916c.addActor(label);
        float f6 = f3 + 33.0f;
        Group group = new Group();
        group.setTransform(false);
        group.setSize(5096.0f, f6);
        Group group2 = new Group();
        group2.setTransform(false);
        group2.setSize(5096.0f, f6);
        group.addActor(group2);
        ScrollPane scrollPane = new ScrollPane(group);
        this.f14919f = scrollPane;
        scrollPane.setSize(1260.0f, f6);
        this.f14919f.setPosition(0.0f, 30.0f);
        this.f14919f.setScrollingDisabled(false, true);
        this.f14916c.addActor(this.f14919f);
        Group group3 = new Group();
        group3.setTransform(false);
        group3.setTouchable(Touchable.disabled);
        group3.setSize(5096.0f, 33.0f);
        group3.setPosition(0.0f, f6 - 33.0f);
        group.addActor(group3);
        Group group4 = new Group();
        group4.setTransform(false);
        group4.setSize(5096.0f, f6);
        group.addActor(group4);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        float f7 = 96.0f;
        image.setPosition(96.0f, 0.0f);
        image.setSize(5000.0f, 33.0f);
        image.setColor(new Color(909522687));
        group3.addActor(image);
        int i6 = 1;
        while (i6 <= 100) {
            float f8 = ((i6 - 1) * 50) + f7;
            Label label2 = new Label(String.valueOf((wavesConfiguration.startWave + i6) - i5), Game.f8589i.assetManager.getLabelStyle(21));
            label2.setPosition(f8, f5);
            label2.setAlignment(1);
            label2.setSize(48.0f, 33.0f);
            label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            group3.addActor(label2);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image2.setSize(2.0f, f6);
            image2.setPosition(f8 + 48.0f, (-f6) + 33.0f);
            image2.setColor(new Color(791621631));
            group3.addActor(image2);
            i6++;
            i5 = 1;
            f7 = 96.0f;
            f5 = 0.0f;
        }
        Group group5 = new Group();
        group5.setTransform(false);
        group5.setTouchable(Touchable.disabled);
        group5.setSize(96.0f, f6);
        group5.setPosition(0.0f, 30.0f);
        this.f14916c.addActor(group5);
        EnemyType[] enemyTypeArr = EnemyType.values;
        int[] iArr = new int[enemyTypeArr.length];
        for (EnemyType enemyType : enemyTypeArr) {
            iArr[enemyType.ordinal()] = -1;
        }
        Color color = new Color();
        int i7 = 0;
        int i8 = 0;
        while (true) {
            Array<SpawnTile.AllowedEnemyConfig> array2 = wavesConfiguration.enemyConfigs;
            if (i7 >= array2.size) {
                break;
            }
            SpawnTile.AllowedEnemyConfig allowedEnemyConfig = array2.items[i7];
            if (Game.f8589i.enemyManager.getMainEnemyType(allowedEnemyConfig.enemyType) != EnemyType.BOSS) {
                int i9 = ((i4 - 1) * 50) - (i8 * 50);
                iArr[allowedEnemyConfig.enemyType.ordinal()] = i9;
                color.set(Game.f8589i.enemyManager.getFactory(allowedEnemyConfig.enemyType).getColor());
                color.lerp(new Color(673720575), 0.56f);
                Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image3.setSize(86.0f, 48.0f);
                float f9 = i9;
                image3.setPosition(0.0f, f9);
                image3.setColor(color);
                group5.addActor(image3);
                QuadActor quadActor = new QuadActor(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.5f, 0.0f, 0.0f}, color);
                quadActor.setPosition(86.0f, f9);
                quadActor.setSize(10.0f, 48.0f);
                group5.addActor(quadActor);
                Image image4 = new Image(Game.f8589i.enemyManager.getFactory(allowedEnemyConfig.enemyType).getTexture());
                image4.setPosition(30.0f, 7.0f + f9);
                image4.setSize(32.0f, 32.0f);
                group5.addActor(image4);
                Image image5 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image5.setSize(5096.0f, 48.0f);
                image5.setPosition(0.0f, f9);
                image5.setColor(new Color(673720575));
                group2.addActor(image5);
                int i10 = allowedEnemyConfig.firstWave;
                if (i10 <= 1) {
                    f = -96.0f;
                } else {
                    f = (i10 - 1) * 50;
                }
                int i11 = wavesConfiguration.startWave;
                float f10 = f - ((i11 - 1) * 50);
                int i12 = allowedEnemyConfig.lastWave;
                if (i12 < 1) {
                    f2 = 5000.0f;
                } else {
                    f2 = (i12 * 50.0f) - ((i11 - 1) * 50);
                }
                color.f3889a = 0.56f;
                Image image6 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image6.setSize(f2 - f10, 48.0f);
                image6.setPosition(f10 + 96.0f, f9);
                image6.setColor(color);
                group2.addActor(image6);
                i8++;
            }
            i7++;
        }
        int length = EnemyType.values.length;
        boolean[] zArr = new boolean[length];
        int i13 = 1;
        while (true) {
            Array<Array<EnemyGroup>> array3 = wavesConfiguration.enemyGroupsByWave;
            if (i13 < array3.size) {
                Array<EnemyGroup> array4 = array3.items[i13];
                for (int i14 = 0; i14 < length; i14++) {
                    zArr[i14] = false;
                }
                int i15 = 0;
                while (true) {
                    if (i15 < array4.size) {
                        EnemyGroup enemyGroup = array4.get(i15);
                        float f11 = ((i13 - 1) * 50.0f) + 96.0f;
                        if (Game.f8589i.enemyManager.getMainEnemyType(enemyGroup.type) == EnemyType.BOSS) {
                            Image image7 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                            color.set(Game.f8589i.enemyManager.getFactory(enemyGroup.type).getColor());
                            color.lerp(new Color(673720575), 0.56f);
                            image7.setColor(color);
                            image7.setPosition(f11, 0.0f);
                            float f12 = f3 - 2.0f;
                            image7.setSize(48.0f, f12);
                            group4.addActor(image7);
                            Image image8 = new Image(Game.f8589i.enemyManager.getFactory(enemyGroup.type).getTexture());
                            image8.setPosition(f11 - 8.0f, (f12 * 0.5f) - 32.0f);
                            image8.setSize(64.0f, 64.0f);
                            group4.addActor(image8);
                            i = length;
                            break;
                        }
                        int i16 = iArr[enemyGroup.type.ordinal()];
                        if (i16 >= 0 && !zArr[enemyGroup.type.ordinal()]) {
                            float f13 = enemyGroup.interval;
                            if (f13 <= 0.25f) {
                                str = "icon-density-high";
                            } else if (f13 >= 1.0f) {
                                str = "icon-density-low";
                            } else {
                                str = "icon-density-medium";
                            }
                            i2 = length;
                            Image image9 = new Image(Game.f8589i.assetManager.getDrawable(str));
                            image9.setPosition(f11, i16);
                            image9.setSize(48.0f, 48.0f);
                            image9.setColor(Game.f8589i.enemyManager.getFactory(enemyGroup.type).getColor());
                            group4.addActor(image9);
                            zArr[enemyGroup.type.ordinal()] = true;
                        } else {
                            i2 = length;
                        }
                        i15++;
                        length = i2;
                    } else {
                        i = length;
                        break;
                    }
                }
                i13++;
                length = i;
            } else {
                return;
            }
        }
    }

    public void setVisible(boolean z) {
        if (z) {
            UiUtils.bouncyShowOverlay(this.f14914a.getTable(), this.f14915b.getTable(), this.f14916c);
            ScrollPane scrollPane = this.f14919f;
            if (scrollPane != null) {
                Game.f8589i.uiManager.stage.setScrollFocus(scrollPane);
            }
        } else {
            UiUtils.bouncyHideOverlay(this.f14914a.getTable(), this.f14915b.getTable(), this.f14916c);
        }
        this.f14917d = z;
    }

    public WavesTimelineOverlay() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 216, "WavesTimelineOverlay tint");
        this.f14914a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 217, "WavesTimelineOverlay main");
        this.f14915b = addLayer2;
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(Config.BACKGROUND_COLOR);
        image.getColor().f3889a = 0.78f;
        addLayer.getTable().add((Table) image).expand().fill();
        addLayer.getTable().setTouchable(Touchable.enabled);
        addLayer.getTable().addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.WavesTimelineOverlay.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                WavesTimelineOverlay.this.hide();
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
            }
        });
        Group group = new Group();
        group.setTransform(false);
        group.setOrigin(630.0f, 380.0f);
        group.setTouchable(Touchable.childrenOnly);
        addLayer2.getTable().add((Table) group).size(1260.0f, 760.0f);
        Group group2 = new Group();
        this.f14916c = group2;
        group2.setTransform(true);
        this.f14916c.setOrigin(630.0f, 380.0f);
        this.f14916c.setSize(1260.0f, 760.0f);
        group.addActor(this.f14916c);
        addLayer.getTable().setVisible(false);
        addLayer2.getTable().setVisible(false);
    }
}
