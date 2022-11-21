package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.shared.DifficultyModeOverlay */
/* loaded from: classes2.dex */
public class DifficultyModeOverlay {

    /* renamed from: a */
    public final UiManager.UiLayer f14217a;

    /* renamed from: b */
    public Group f14218b;

    /* renamed from: c */
    public boolean f14219c;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m20167b() {
        setVisible(false);
    }

    /* renamed from: c */
    public final void m20166c() {
        int i;
        int i2;
        this.f14218b.clearChildren();
        Group group = new Group();
        group.setTransform(false);
        Touchable touchable = Touchable.enabled;
        group.setTouchable(touchable);
        group.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.DifficultyModeOverlay.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Game.f8589i.progressManager.setDifficultyMode(DifficultyMode.EASY);
                DifficultyModeOverlay.this.setVisible(false);
                Game.f8589i.screenManager.goToMainMenu();
            }
        });
        group.setSize(372.0f, 600.0f);
        this.f14218b.addActor(group);
        if (Game.f8589i.progressManager.getDifficultyMode() == DifficultyMode.EASY) {
            group.addActor(new QuadActor(new Color(-1950135553), new float[]{0.0f, -10.0f, -10.0f, 610.0f, 382.0f, 610.0f, 372.0f, -10.0f}));
            group.addActor(new QuadActor(Config.BACKGROUND_COLOR, new float[]{5.0f, -5.0f, -5.0f, 605.0f, 377.0f, 605.0f, 367.0f, -5.0f}));
        }
        group.addActor(new QuadActor(new Color(779956957), new float[]{10.0f, 0.0f, 0.0f, 600.0f, 372.0f, 600.0f, 362.0f, 0.0f}));
        Label label = new Label(Game.f8589i.localeManager.i18n.get("difficulty_mode_EASY").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(36));
        label.setPosition(0.0f, 500.0f);
        label.setSize(372.0f, 96.0f);
        label.setAlignment(1);
        label.setColor(MaterialColor.LIGHT_GREEN.P200);
        group.addActor(label);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("dm_no_leaderboards"), Game.f8589i.assetManager.getLabelStyle(24));
        label2.setAlignment(1);
        label2.setWrap(true);
        label2.setPosition(30.0f, 400.0f);
        label2.setSize(312.0f, 96.0f);
        group.addActor(label2);
        Label label3 = new Label(Game.f8589i.localeManager.i18n.get("dm_waves_on_demand"), Game.f8589i.assetManager.getLabelStyle(24));
        label3.setAlignment(1);
        label3.setWrap(true);
        label3.setPosition(30.0f, 300.0f);
        label3.setSize(312.0f, 96.0f);
        group.addActor(label3);
        Label label4 = new Label(Game.f8589i.localeManager.i18n.get("dm_regular_research"), Game.f8589i.assetManager.getLabelStyle(24));
        label4.setAlignment(1);
        label4.setWrap(true);
        label4.setPosition(30.0f, 200.0f);
        label4.setSize(312.0f, 96.0f);
        group.addActor(label4);
        Label label5 = new Label(Game.f8589i.localeManager.i18n.get("dm_easy_enemies_prizes"), Game.f8589i.assetManager.getLabelStyle(24));
        label5.setAlignment(1);
        label5.setWrap(true);
        label5.setPosition(30.0f, 100.0f);
        label5.setSize(312.0f, 96.0f);
        group.addActor(label5);
        Label label6 = new Label(Game.f8589i.localeManager.i18n.get("dm_no_special_loot"), Game.f8589i.assetManager.getLabelStyle(24));
        label6.setAlignment(1);
        label6.setWrap(true);
        label6.setPosition(30.0f, 0.0f);
        label6.setSize(312.0f, 96.0f);
        label6.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        group.addActor(label6);
        Group group2 = new Group();
        group2.setTransform(false);
        group2.setTouchable(touchable);
        group2.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.DifficultyModeOverlay.2
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Game.f8589i.progressManager.setDifficultyMode(DifficultyMode.NORMAL);
                DifficultyModeOverlay.this.setVisible(false);
                Game.f8589i.screenManager.goToMainMenu();
            }
        });
        group2.setSize(372.0f, 600.0f);
        group2.setPosition(416.0f, 0.0f);
        this.f14218b.addActor(group2);
        if (Game.f8589i.progressManager.getDifficultyMode() == DifficultyMode.NORMAL) {
            i = 8;
            group2.addActor(new QuadActor(new Color(61469951), new float[]{-10.0f, -10.0f, 0.0f, 610.0f, 372.0f, 610.0f, 382.0f, -10.0f}));
            group2.addActor(new QuadActor(Config.BACKGROUND_COLOR, new float[]{-5.0f, -5.0f, 5.0f, 605.0f, 367.0f, 605.0f, 377.0f, -5.0f}));
        } else {
            i = 8;
        }
        float[] fArr = new float[i];
        // fill-array-data instruction
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 10.0f;
        fArr[3] = 600.0f;
        fArr[4] = 362.0f;
        fArr[5] = 600.0f;
        fArr[6] = 372.0f;
        fArr[7] = 0.0f;
        group2.addActor(new QuadActor(new Color(41401821), fArr));
        Label label7 = new Label(Game.f8589i.localeManager.i18n.get("difficulty_mode_NORMAL").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(36));
        label7.setPosition(0.0f, 500.0f);
        label7.setSize(372.0f, 96.0f);
        label7.setAlignment(1);
        label7.setColor(MaterialColor.LIGHT_BLUE.P200);
        group2.addActor(label7);
        Label label8 = new Label(Game.f8589i.localeManager.i18n.get("dm_regular_leaderboards"), Game.f8589i.assetManager.getLabelStyle(24));
        label8.setAlignment(1);
        label8.setWrap(true);
        label8.setPosition(30.0f, 400.0f);
        label8.setSize(312.0f, 96.0f);
        group2.addActor(label8);
        Label label9 = new Label(Game.f8589i.localeManager.i18n.get("dm_waves_by_timer"), Game.f8589i.assetManager.getLabelStyle(24));
        label9.setAlignment(1);
        label9.setWrap(true);
        label9.setPosition(30.0f, 300.0f);
        label9.setSize(312.0f, 96.0f);
        group2.addActor(label9);
        Label label10 = new Label(Game.f8589i.localeManager.i18n.get("dm_regular_research"), Game.f8589i.assetManager.getLabelStyle(24));
        label10.setAlignment(1);
        label10.setWrap(true);
        label10.setPosition(30.0f, 200.0f);
        label10.setSize(312.0f, 96.0f);
        group2.addActor(label10);
        Label label11 = new Label(Game.f8589i.localeManager.i18n.get("dm_normal_enemies_prizes"), Game.f8589i.assetManager.getLabelStyle(24));
        label11.setAlignment(1);
        label11.setWrap(true);
        label11.setPosition(30.0f, 100.0f);
        label11.setSize(312.0f, 96.0f);
        group2.addActor(label11);
        Label label12 = new Label(Game.f8589i.localeManager.i18n.get("dm_no_special_loot"), Game.f8589i.assetManager.getLabelStyle(24));
        label12.setAlignment(1);
        label12.setWrap(true);
        label12.setPosition(30.0f, 0.0f);
        label12.setSize(312.0f, 96.0f);
        group2.addActor(label12);
        Group group3 = new Group();
        group3.setTransform(false);
        group3.setTouchable(touchable);
        group3.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.DifficultyModeOverlay.3
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                ProgressManager progressManager = Game.f8589i.progressManager;
                DifficultyMode difficultyMode = DifficultyMode.ENDLESS_I;
                if (progressManager.difficultyModeAvailable(difficultyMode)) {
                    Game.f8589i.progressManager.setDifficultyMode(difficultyMode);
                    DifficultyModeOverlay.this.setVisible(false);
                    Game.f8589i.screenManager.goToMainMenu();
                }
            }
        });
        group3.setSize(372.0f, 600.0f);
        group3.setPosition(832.0f, 0.0f);
        this.f14218b.addActor(group3);
        DifficultyMode difficultyMode = Game.f8589i.progressManager.getDifficultyMode();
        DifficultyMode difficultyMode2 = DifficultyMode.ENDLESS_I;
        if (difficultyMode == difficultyMode2) {
            i2 = 8;
            group3.addActor(new QuadActor(new Color(-4126721), new float[]{0.0f, -10.0f, -10.0f, 610.0f, 382.0f, 610.0f, 372.0f, -10.0f}));
            group3.addActor(new QuadActor(Config.BACKGROUND_COLOR, new float[]{5.0f, -5.0f, -5.0f, 605.0f, 377.0f, 605.0f, 367.0f, -5.0f}));
        } else {
            i2 = 8;
        }
        float[] fArr2 = new float[i2];
        // fill-array-data instruction
        fArr2[0] = 10.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 0.0f;
        fArr2[3] = 600.0f;
        fArr2[4] = 372.0f;
        fArr2[5] = 600.0f;
        fArr2[6] = 362.0f;
        fArr2[7] = 0.0f;
        group3.addActor(new QuadActor(new Color(-176220195), fArr2));
        Label label13 = new Label(Game.f8589i.localeManager.i18n.get("difficulty_mode_ENDLESS_I").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(36));
        label13.setPosition(0.0f, 500.0f);
        label13.setSize(372.0f, 96.0f);
        label13.setAlignment(1);
        label13.setColor(MaterialColor.AMBER.P200);
        group3.addActor(label13);
        Label label14 = new Label(Game.f8589i.localeManager.i18n.get("dm_endless_leaderboards_limited"), Game.f8589i.assetManager.getLabelStyle(24));
        label14.setAlignment(1);
        label14.setWrap(true);
        label14.setPosition(30.0f, 400.0f);
        label14.setSize(312.0f, 96.0f);
        group3.addActor(label14);
        Label label15 = new Label(Game.f8589i.localeManager.i18n.get("dm_waves_by_timer"), Game.f8589i.assetManager.getLabelStyle(24));
        label15.setAlignment(1);
        label15.setWrap(true);
        label15.setPosition(30.0f, 300.0f);
        label15.setSize(312.0f, 96.0f);
        group3.addActor(label15);
        Label label16 = new Label(Game.f8589i.localeManager.i18n.get("dm_endless_researches"), Game.f8589i.assetManager.getLabelStyle(24));
        label16.setAlignment(1);
        label16.setWrap(true);
        label16.setPosition(30.0f, 200.0f);
        label16.setSize(312.0f, 96.0f);
        group3.addActor(label16);
        Label label17 = new Label(Game.f8589i.localeManager.i18n.get("dm_endless_i_enemies_prizes"), Game.f8589i.assetManager.getLabelStyle(24));
        label17.setAlignment(1);
        label17.setWrap(true);
        label17.setPosition(30.0f, 100.0f);
        label17.setSize(312.0f, 96.0f);
        group3.addActor(label17);
        Label label18 = new Label(Game.f8589i.localeManager.i18n.get("dm_drop_special_loot"), Game.f8589i.assetManager.getLabelStyle(24));
        label18.setAlignment(1);
        label18.setWrap(true);
        label18.setPosition(30.0f, 0.0f);
        label18.setSize(312.0f, 96.0f);
        group3.addActor(label18);
        if (!Game.f8589i.progressManager.difficultyModeAvailable(difficultyMode2)) {
            group3.addActor(new QuadActor(new Color(170), new float[]{10.0f, 0.0f, 0.0f, 600.0f, 372.0f, 600.0f, 362.0f, 0.0f}));
            Table table = new Table();
            table.setSize(372.0f, 600.0f);
            group3.addActor(table);
            table.add((Table) new Image(Game.f8589i.assetManager.getDrawable("icon-lock"))).size(64.0f).padBottom(16.0f).row();
            Label label19 = new Label(Game.f8589i.localeManager.i18n.get("complete_story_line_to_unlock"), Game.f8589i.assetManager.getLabelStyle(30));
            table.add((Table) label19).width(312.0f);
            label19.setWrap(true);
            label19.setAlignment(1);
        }
    }

    public void setVisible(boolean z) {
        if (z) {
            m20166c();
            UiUtils.bouncyShowOverlay(null, this.f14217a.getTable(), this.f14218b);
            Game.f8589i.uiManager.darkOverlay.addCaller("DifficultyModeOverlay", UiManager.MainUiLayer.SHARED_COMPONENTS, this.f14217a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.g
                @Override // java.lang.Runnable
                public final void run() {
                    DifficultyModeOverlay.this.m20167b();
                }
            });
        } else {
            UiUtils.bouncyHideOverlay(null, this.f14217a.getTable(), this.f14218b);
            Game.f8589i.uiManager.darkOverlay.removeCaller("DifficultyModeOverlay");
        }
        this.f14219c = z;
    }

    public DifficultyModeOverlay() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SHARED_COMPONENTS, 111, "DifficultyModeOverlay main");
        this.f14217a = addLayer;
        Group group = new Group();
        group.setTransform(false);
        group.setOrigin(602.0f, 300.0f);
        addLayer.getTable().add((Table) group).size(1204.0f, 600.0f);
        Group group2 = new Group();
        this.f14218b = group2;
        group2.setTransform(true);
        this.f14218b.setOrigin(602.0f, 300.0f);
        this.f14218b.setSize(1204.0f, 600.0f);
        group.addActor(this.f14218b);
        m20166c();
        addLayer.getTable().setVisible(false);
    }
}
