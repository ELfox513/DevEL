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
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.BasicLevelManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.shared.QuestPrestigeOverlay */
/* loaded from: classes2.dex */
public class QuestPrestigeOverlay {

    /* renamed from: a */
    public final UiManager.UiLayer f14856a;

    /* renamed from: b */
    public final UiManager.UiLayer f14857b;

    /* renamed from: c */
    public final Group f14858c;

    /* renamed from: d */
    public Image f14859d;

    /* renamed from: e */
    public Label f14860e;

    /* renamed from: f */
    public Group f14861f;

    /* renamed from: g */
    public Table f14862g;

    /* renamed from: h */
    public ComplexButton f14863h;

    public QuestPrestigeOverlay() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 175, "QuestPrestigeOverlay overlay");
        this.f14856a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 176, "QuestPrestigeOverlay main");
        this.f14857b = addLayer2;
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(Config.BACKGROUND_COLOR);
        image.getColor().f3889a = 0.78f;
        addLayer.getTable().add((Table) image).expand().fill();
        addLayer.getTable().setTouchable(Touchable.enabled);
        addLayer.getTable().addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.QuestPrestigeOverlay.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                QuestPrestigeOverlay.this.setVisible(false);
            }
        });
        Group group = new Group();
        group.setOrigin(338.0f, 198.0f);
        addLayer2.getTable().add((Table) group).size(676.0f, 396.0f);
        Group group2 = new Group();
        this.f14858c = group2;
        group2.setOrigin(338.0f, 198.0f);
        group2.setSize(676.0f, 396.0f);
        group.addActor(group2);
        group2.addActor(new QuadActor(new Color(724249599), new float[]{0.0f, 0.0f, 0.0f, 396.0f, 676.0f, 385.0f, 676.0f, 9.0f}));
        Label label = new Label(Game.f8589i.localeManager.i18n.get("gv_title_PRESTIGE_MODE"), Game.f8589i.assetManager.getLabelStyle(36));
        label.setPosition(40.0f, 325.0f);
        label.setSize(100.0f, 28.0f);
        group2.addActor(label);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("quests_prestige_description"), Game.f8589i.assetManager.getLabelStyle(21));
        label2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label2.setSize(100.0f, 16.0f);
        label2.setPosition(40.0f, 299.0f);
        group2.addActor(label2);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image2.setSize(560.0f, 16.0f);
        image2.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        image2.setPosition(40.0f, 170.0f);
        group2.addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f14859d = image3;
        image3.setSize(560.0f, 16.0f);
        this.f14859d.setColor(MaterialColor.LIGHT_BLUE.P500);
        this.f14859d.setPosition(40.0f, 170.0f);
        group2.addActor(this.f14859d);
        for (int i = 0; i < 3; i++) {
            Image image4 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image4.setSize(4.0f, 16.0f);
            image4.setPosition((i * 141.0f) + 177.0f, 170.0f);
            image4.setColor(new Color(724249599));
            this.f14858c.addActor(image4);
        }
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14860e = label3;
        label3.setPosition(40.0f, 102.0f);
        this.f14860e.setSize(100.0f, 20.0f);
        this.f14858c.addActor(this.f14860e);
        Group group3 = new Group();
        this.f14861f = group3;
        group3.setTransform(false);
        this.f14861f.setSize(495.0f, 66.0f);
        this.f14861f.setPosition(141.0f, 190.0f);
        this.f14858c.addActor(this.f14861f);
        Table table = new Table();
        this.f14862g = table;
        table.setPosition(486.0f, 94.0f);
        this.f14862g.setSize(150.0f, 48.0f);
        this.f14858c.addActor(this.f14862g);
        ComplexButton complexButton = new ComplexButton(Game.f8589i.localeManager.i18n.get("back"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.shared.QuestPrestigeOverlay.2
            @Override // java.lang.Runnable
            public void run() {
                QuestPrestigeOverlay.this.setVisible(false);
            }
        });
        complexButton.setSize(255.0f, 93.0f);
        complexButton.setBackground(Game.f8589i.assetManager.getDrawable("ui-map-prestige-button-left"), 0.0f, 0.0f, 255.0f, 93.0f);
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-triangle-left"), 18.0f, 19.0f, 48.0f, 48.0f);
        complexButton.setLabel(77.0f, 30.0f, 100.0f, 23.0f, 8);
        complexButton.setPosition(-13.0f, -9.0f);
        this.f14858c.addActor(complexButton);
        ComplexButton complexButton2 = new ComplexButton(Game.f8589i.localeManager.i18n.get("quests_reset_button"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.shared.QuestPrestigeOverlay.3
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.uiManager.dialog.showConfirm(Game.f8589i.localeManager.i18n.get("quests_prestige_confirm"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.QuestPrestigeOverlay.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Game.f8589i.basicLevelManager.resetQuestsForPrestige();
                        QuestPrestigeOverlay.this.setVisible(false);
                    }
                });
            }
        });
        this.f14863h = complexButton2;
        complexButton2.setSize(247.0f, 93.0f);
        this.f14863h.setBackground(Game.f8589i.assetManager.getDrawable("ui-map-prestige-button-right"), 0.0f, 0.0f, 247.0f, 93.0f);
        this.f14863h.setIcon(Game.f8589i.assetManager.getDrawable("icon-dollar"), 21.0f, 19.0f, 48.0f, 48.0f);
        this.f14863h.setLabel(80.0f, 30.0f, 100.0f, 23.0f, 8);
        this.f14863h.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, MaterialColor.GREY.P800);
        this.f14863h.setPosition(443.0f, -9.0f);
        this.f14858c.addActor(this.f14863h);
        this.f14856a.getTable().setVisible(false);
        this.f14857b.getTable().setVisible(false);
    }

    public void setVisible(boolean z) {
        if (z) {
            UiUtils.bouncyShowOverlay(this.f14856a.getTable(), this.f14857b.getTable(), this.f14858c);
        } else {
            UiUtils.bouncyHideOverlay(this.f14856a.getTable(), this.f14857b.getTable(), this.f14858c);
        }
    }

    public void show() {
        boolean z;
        int prestigeMaxCompletedQuests = Game.f8589i.basicLevelManager.getPrestigeMaxCompletedQuests();
        int prestigeCompletedQuests = Game.f8589i.basicLevelManager.getPrestigeCompletedQuests();
        double d = prestigeCompletedQuests;
        double d2 = prestigeMaxCompletedQuests;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d / d2;
        int i = (int) ((100.0d * d3) + 1.0E-4d);
        this.f14859d.setSize((float) (d3 * 560.0d), 16.0f);
        Logger.log("QuestPrestigeOverlay", "completed " + prestigeCompletedQuests + "/" + prestigeMaxCompletedQuests + " (" + i + "%)");
        this.f14861f.clear();
        BasicLevelManager.QuestsPrestigeMilestone[] questsPrestigeMilestones = Game.f8589i.basicLevelManager.getQuestsPrestigeMilestones();
        int i2 = 0;
        for (int i3 = 0; i3 < questsPrestigeMilestones.length; i3++) {
            BasicLevelManager.QuestsPrestigeMilestone questsPrestigeMilestone = questsPrestigeMilestones[i3];
            float f = i3 * 141.0f;
            Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-quests-prestige-milestone-mark"));
            image.setPosition(f, 0.0f);
            image.setSize(74.0f, 66.0f);
            this.f14861f.addActor(image);
            Table table = new Table();
            table.setSize(74.0f, 40.0f);
            table.setPosition(f, 14.0f);
            this.f14861f.addActor(table);
            table.add((Table) new Image(Game.f8589i.assetManager.getDrawable("prestige-token"))).size(24.0f);
            Label label = new Label(questsPrestigeMilestone.tokensCount + "", Game.f8589i.assetManager.getLabelStyle(21));
            table.add((Table) label).padLeft(4.0f).row();
            table.add((Table) new Label(questsPrestigeMilestone.percentage + "%", Game.f8589i.assetManager.getLabelStyle(21))).colspan(2);
            if (i >= questsPrestigeMilestone.percentage) {
                label.setColor(Color.WHITE);
                image.setColor(MaterialColor.LIGHT_BLUE.P800.cpy().mul(1.0f, 1.0f, 1.0f, 0.56f));
                i2 = questsPrestigeMilestone.tokensCount;
            } else {
                label.setColor(MaterialColor.LIGHT_BLUE.P300);
                image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            }
        }
        this.f14860e.setText(Game.f8589i.localeManager.i18n.get("quests_prestige_quests_completed") + ": [#4FC3F7]" + ((Object) StringFormatter.commaSeparatedNumber(prestigeCompletedQuests)) + " / " + ((Object) StringFormatter.commaSeparatedNumber(prestigeMaxCompletedQuests)) + "[] (" + i + "%)");
        this.f14862g.clear();
        this.f14862g.add().height(1.0f).expandX().fillX();
        this.f14862g.add((Table) new Image(Game.f8589i.assetManager.getDrawable("prestige-token"))).size(48.0f);
        StringBuilder sb = new StringBuilder();
        sb.append(i2);
        sb.append("");
        Label label2 = new Label(sb.toString(), Game.f8589i.assetManager.getLabelStyle(36));
        label2.setColor(MaterialColor.LIGHT_BLUE.P300);
        this.f14862g.add((Table) label2).padLeft(8.0f);
        if (i2 > 0) {
            z = true;
        } else {
            z = false;
        }
        this.f14863h.setEnabled(z);
        setVisible(true);
    }
}
