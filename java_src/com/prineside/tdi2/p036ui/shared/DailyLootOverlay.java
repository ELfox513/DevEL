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
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.BasicLevelQuestConfig;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.managers.DailyQuestManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.shared.DailyLootOverlay */
/* loaded from: classes2.dex */
public class DailyLootOverlay {

    /* renamed from: q */
    public static final StringBuilder f14065q = new StringBuilder();

    /* renamed from: a */
    public final UiManager.UiLayer f14066a;

    /* renamed from: b */
    public Label f14067b;

    /* renamed from: c */
    public ScrollPane f14068c;

    /* renamed from: d */
    public Group f14069d;

    /* renamed from: e */
    public Table f14070e;

    /* renamed from: f */
    public Table f14071f;

    /* renamed from: g */
    public Table f14072g;

    /* renamed from: h */
    public Label f14073h;

    /* renamed from: i */
    public Label f14074i;

    /* renamed from: j */
    public Label f14075j;

    /* renamed from: k */
    public Image f14076k;

    /* renamed from: l */
    public Label f14077l;

    /* renamed from: m */
    public Label f14078m;

    /* renamed from: n */
    public ComplexButton f14079n;

    /* renamed from: o */
    public float f14080o;

    /* renamed from: p */
    public boolean f14081p;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m20237b() {
        setVisible(false);
    }

    public void setVisible(boolean z) {
        if (z) {
            Game.f8589i.uiManager.darkOverlay.addCaller("DailyLootOverlay", this.f14066a.zIndex - 1, new Runnable() { // from class: com.prineside.tdi2.ui.shared.c
                @Override // java.lang.Runnable
                public final void run() {
                    DailyLootOverlay.this.m20237b();
                }
            });
            UiUtils.bouncyShowOverlay(null, this.f14066a.getTable(), this.f14069d);
            Game.f8589i.uiManager.stage.setScrollFocus(this.f14068c);
        } else {
            Game.f8589i.uiManager.darkOverlay.removeCaller("DailyLootOverlay");
            UiUtils.bouncyHideOverlay(null, this.f14066a.getTable(), this.f14069d);
        }
        this.f14081p = z;
    }

    public DailyLootOverlay() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 150, "DailyLootOverlay main");
        this.f14066a = addLayer;
        Group group = new Group();
        group.setTransform(false);
        group.setOrigin(488.0f, 435.5f);
        addLayer.getTable().add((Table) group).size(976.0f, 871.0f);
        Group group2 = new Group();
        this.f14069d = group2;
        group2.setOrigin(488.0f, 435.5f);
        group.addActor(this.f14069d);
        this.f14069d.addActor(new QuadActor(new Color(724249599), new float[]{0.0f, 0.0f, 0.0f, 871.0f, 976.0f, 858.0f, 976.0f, 13.0f}));
        this.f14070e = new Table();
        ScrollPane scrollPane = new ScrollPane(this.f14070e, Game.f8589i.assetManager.getScrollPaneStyle(16.0f));
        this.f14068c = scrollPane;
        scrollPane.setPosition(0.0f, 175.0f);
        this.f14068c.setSize(976.0f, 654.0f);
        this.f14069d.addActor(this.f14068c);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image.setColor(new Color(724249599));
        image.setSize(976.0f, 64.0f);
        image.setPosition(0.0f, 766.0f);
        Touchable touchable = Touchable.disabled;
        image.setTouchable(touchable);
        this.f14069d.addActor(image);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(36));
        this.f14067b = label;
        label.setSize(100.0f, 29.0f);
        this.f14067b.setPosition(40.0f, 800.0f);
        this.f14069d.addActor(this.f14067b);
        Table table = new Table();
        this.f14072g = table;
        table.setSize(294.0f, 64.0f);
        this.f14072g.setPosition(642.0f, 765.0f);
        this.f14069d.addActor(this.f14072g);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("gradient-bottom"));
        image2.setColor(0.0f, 0.0f, 0.0f, 0.21f);
        image2.setSize(976.0f, 12.0f);
        image2.setPosition(0.0f, 238.0f);
        image2.setTouchable(touchable);
        this.f14069d.addActor(image2);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image3.setColor(new Color(439564006));
        image3.setPosition(0.0f, 175.0f);
        image3.setSize(976.0f, 63.0f);
        this.f14069d.addActor(image3);
        Table table2 = new Table();
        this.f14071f = table2;
        table2.setPosition(40.0f, 194.0f);
        this.f14071f.setSize(784.0f, 22.0f);
        this.f14069d.addActor(this.f14071f);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("ui-daily-loot-legendaries"));
        image4.setPosition(832.0f, 175.0f);
        image4.setSize(126.0f, 88.0f);
        this.f14069d.addActor(image4);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("gradient-bottom"));
        image5.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        image5.setSize(976.0f, 12.0f);
        image5.setPosition(0.0f, 175.0f);
        image5.setTouchable(touchable);
        this.f14069d.addActor(image5);
        this.f14069d.addActor(new QuadActor(new Color(858993663), new float[]{0.0f, 0.0f, 0.0f, 175.0f, 976.0f, 175.0f, 976.0f, 13.0f}));
        Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14073h = label2;
        Color color = MaterialColor.LIGHT_GREEN.P500;
        label2.setColor(color);
        this.f14073h.setSize(100.0f, 22.0f);
        this.f14073h.setPosition(40.0f, 127.0f);
        this.f14069d.addActor(this.f14073h);
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f14074i = label3;
        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14074i.setSize(100.0f, 22.0f);
        this.f14074i.setPosition(40.0f, 99.0f);
        this.f14069d.addActor(this.f14074i);
        Label label4 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14075j = label4;
        label4.setSize(100.0f, 22.0f);
        this.f14075j.setPosition(836.0f, 127.0f);
        this.f14075j.setAlignment(16);
        this.f14069d.addActor(this.f14075j);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("checkbox"));
        image6.setSize(48.0f, 48.0f);
        image6.setPosition(34.0f, 35.0f);
        this.f14069d.addActor(image6);
        Image image7 = new Image(Game.f8589i.assetManager.getDrawable("icon-check"));
        this.f14076k = image7;
        image7.setColor(color);
        this.f14076k.setSize(32.0f, 32.0f);
        this.f14076k.setPosition(44.0f, 49.0f);
        this.f14069d.addActor(this.f14076k);
        Label label5 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14077l = label5;
        label5.setSize(100.0f, 18.0f);
        this.f14077l.setPosition(95.0f, 63.0f);
        this.f14069d.addActor(this.f14077l);
        Label label6 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f14078m = label6;
        label6.setSize(100.0f, 18.0f);
        this.f14078m.setPosition(95.0f, 36.0f);
        this.f14078m.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14069d.addActor(this.f14078m);
        ComplexButton complexButton = new ComplexButton(Game.f8589i.localeManager.i18n.get("play"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.shared.DailyLootOverlay.1
            @Override // java.lang.Runnable
            public void run() {
                String dailyLootCurrentQuest = Game.f8589i.dailyQuestManager.getDailyLootCurrentQuest();
                if (dailyLootCurrentQuest.equals(DailyQuestManager.RESET_QUESTS_QUEST_ID)) {
                    Game.f8589i.uiManager.questPrestigeOverlay.show();
                    DailyLootOverlay.this.setVisible(false);
                    return;
                }
                Game.f8589i.screenManager.goToLevelSelectScreen(Game.f8589i.basicLevelManager.getRegularQuestById(dailyLootCurrentQuest).level);
            }
        });
        this.f14079n = complexButton;
        complexButton.setPosition(743.0f, 21.0f);
        this.f14079n.setSize(247.0f, 93.0f);
        this.f14079n.setBackground(Game.f8589i.assetManager.getDrawable("ui-map-prestige-button-right"), 0.0f, 0.0f, 247.0f, 93.0f);
        this.f14079n.setIcon(Game.f8589i.assetManager.getDrawable("icon-joystick"), 21.0f, 19.0f, 48.0f, 48.0f);
        this.f14079n.setLabel(80.0f, 30.0f, 100.0f, 23.0f, 8);
        this.f14069d.addActor(this.f14079n);
        addLayer.getTable().setVisible(false);
    }

    public void postRender(float f) {
        if (this.f14081p) {
            float f2 = this.f14080o + f;
            this.f14080o = f2;
            if (f2 >= 1.0f) {
                this.f14080o = f2 - 1.0f;
                StringBuilder stringBuilder = f14065q;
                stringBuilder.setLength(0);
                stringBuilder.append("[#888888]").append(Game.f8589i.localeManager.i18n.get("daily_loot_next_in")).append("[] ");
                stringBuilder.append(StringFormatter.digestTime(Game.f8589i.dailyQuestManager.getSecondsTillNextDailyLoot()));
                this.f14075j.setText(stringBuilder);
            }
        }
    }

    public void show() {
        boolean z;
        this.f14067b.setText(Game.f8589i.localeManager.i18n.get("daily_loot"));
        this.f14074i.setText(Game.f8589i.localeManager.i18n.get("daily_loot_hint"));
        this.f14072g.clear();
        int dailyLootCurrentMonthIndex = Game.f8589i.dailyQuestManager.getDailyLootCurrentMonthIndex();
        int dailyLootCurrentDayIndex = Game.f8589i.dailyQuestManager.getDailyLootCurrentDayIndex();
        StringBuilder sb = new StringBuilder();
        String str = "month";
        sb.append(Game.f8589i.localeManager.i18n.get("month"));
        sb.append(": ");
        int i = dailyLootCurrentMonthIndex + 1;
        sb.append(i);
        int i2 = 24;
        Label label = new Label(sb.toString(), Game.f8589i.assetManager.getLabelStyle(24));
        label.setAlignment(16);
        this.f14072g.add((Table) label).top().right().expandX().fillX().row();
        DailyQuestManager dailyQuestManager = Game.f8589i.dailyQuestManager;
        int i3 = dailyQuestManager.dailyLootMinBonusPerMonth * dailyLootCurrentMonthIndex;
        int i4 = dailyQuestManager.dailyLootMaxBonusPerMonth * dailyLootCurrentMonthIndex;
        String str2 = "bonus";
        if (i4 > 0) {
            Label label2 = new Label("[#888888]" + Game.f8589i.localeManager.i18n.get("bonus") + ": [][#8BC34A]+" + i3 + " - " + i4 + "%[]", Game.f8589i.assetManager.getLabelStyle(21));
            label2.setAlignment(16);
            this.f14072g.add((Table) label2).top().right().row();
        }
        if (Game.f8589i.progressManager.isDoubleGainEnabled()) {
            Label label3 = new Label("[#FFC107]" + Game.f8589i.localeManager.i18n.get("double_gain_title") + ": x2[]", Game.f8589i.assetManager.getLabelStyle(21));
            label3.setAlignment(16);
            this.f14072g.add((Table) label3).top().right().row();
        }
        this.f14070e.clear();
        float f = 1.0f;
        this.f14070e.add().width(1.0f).height(32.0f).row();
        while (dailyLootCurrentMonthIndex <= i) {
            Table table = new Table();
            this.f14070e.add(table).expandX().fillX().padTop(16.0f).padBottom(8.0f).row();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Game.f8589i.localeManager.i18n.get(str));
            sb2.append(" ");
            int i5 = dailyLootCurrentMonthIndex + 1;
            sb2.append(i5);
            Label label4 = new Label(sb2.toString(), Game.f8589i.assetManager.getLabelStyle(i2));
            label4.setColor(MaterialColor.LIGHT_GREEN.P500);
            table.add((Table) label4).padLeft(40.0f);
            if (dailyLootCurrentMonthIndex != 0) {
                Label label5 = new Label(Game.f8589i.localeManager.i18n.get(str2) + ": +" + (Game.f8589i.dailyQuestManager.dailyLootMinBonusPerMonth * dailyLootCurrentMonthIndex) + "-" + (Game.f8589i.dailyQuestManager.dailyLootMaxBonusPerMonth * dailyLootCurrentMonthIndex) + "%", Game.f8589i.assetManager.getLabelStyle(i2));
                label5.setColor(f, f, f, 0.56f);
                table.add((Table) label5).padLeft(16.0f);
            }
            table.add().height(f).expandX().fillX();
            Table table2 = new Table();
            int i6 = 0;
            while (true) {
                Array<DailyQuestManager.DailyLootDayConfig> array = Game.f8589i.dailyQuestManager.dailyLootDayConfigs;
                if (i6 < array.size) {
                    final DailyQuestManager.DailyLootDayConfig dailyLootDayConfig = array.items[i6];
                    int i7 = i6 % 7;
                    if (i7 == 0) {
                        table2.row();
                    }
                    Group group = new Group();
                    group.setTransform(false);
                    String str3 = str;
                    table2.add((Table) group).size(128.0f, 140.0f);
                    ItemCell itemCell = new ItemCell();
                    final int count = dailyLootDayConfig.getCount(dailyLootCurrentMonthIndex);
                    itemCell.setItem(dailyLootDayConfig.item, count);
                    int i8 = i6 / 7;
                    itemCell.setColRow(i7, i8);
                    int i9 = i;
                    int i10 = (Game.f8589i.dailyQuestManager.dailyLootDayConfigs.size * dailyLootCurrentMonthIndex) + i6;
                    int i11 = dailyLootCurrentMonthIndex;
                    StringBuilder sb3 = new StringBuilder();
                    String str4 = str2;
                    sb3.append(i10 + 1);
                    sb3.append("");
                    itemCell.setCornerText(sb3.toString());
                    if (i10 < dailyLootCurrentDayIndex) {
                        z = true;
                    } else {
                        z = false;
                    }
                    itemCell.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.DailyLootOverlay.2
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                        public void clicked(InputEvent inputEvent, float f2, float f3) {
                            Game.f8589i.uiManager.itemDescriptionDialog.show(dailyLootDayConfig.item, count);
                        }
                    });
                    if (dailyLootCurrentDayIndex == i10) {
                        if (Game.f8589i.dailyQuestManager.isTodayDailyLootQuestCompleted()) {
                            z = true;
                        }
                        itemCell.setSelected(true);
                    }
                    group.addActor(itemCell);
                    if (z) {
                        Image image = new Image();
                        if ((i7 + i8) % 2 == 0) {
                            image.setDrawable(Game.f8589i.assetManager.getDrawable("item-cell-a"));
                        } else {
                            image.setDrawable(Game.f8589i.assetManager.getDrawable("item-cell-b"));
                        }
                        image.setSize(128.0f, 140.0f);
                        image.setColor(0.05f, 0.05f, 0.05f, 0.56f);
                        group.addActor(image);
                        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-check"));
                        image2.setColor(MaterialColor.LIGHT_GREEN.P500);
                        image2.setSize(64.0f, 64.0f);
                        image2.setPosition(32.0f, 38.0f);
                        group.addActor(image2);
                    }
                    i6++;
                    str = str3;
                    i = i9;
                    dailyLootCurrentMonthIndex = i11;
                    str2 = str4;
                }
            }
            this.f14070e.add(table2).row();
            dailyLootCurrentMonthIndex = i5;
            i = i;
            f = 1.0f;
            i2 = 24;
        }
        this.f14070e.add().width(1.0f).height(104.0f).row();
        int dailyLootDaysInRow = Game.f8589i.dailyQuestManager.getDailyLootDaysInRow();
        this.f14071f.clear();
        this.f14071f.add((Table) new Label(Game.f8589i.localeManager.i18n.get("days_in_row") + ":", Game.f8589i.assetManager.getLabelStyle(24)));
        Label label6 = new Label(" " + dailyLootDaysInRow, Game.f8589i.assetManager.getLabelStyle(30));
        label6.setColor(MaterialColor.LIGHT_BLUE.P300);
        this.f14071f.add((Table) label6);
        this.f14071f.add().height(1.0f).expandX().fillX();
        Game game = Game.f8589i;
        this.f14071f.add((Table) new Label(game.localeManager.i18n.format("daily_loot_days_in_row_hint", Integer.valueOf(game.dailyQuestManager.getDailyLootNextDaysInRowMilestone()), Integer.valueOf(Game.f8589i.dailyQuestManager.getDailyLootNextDaysInRowLegendariesCount())), Game.f8589i.assetManager.getLabelStyle(24)));
        this.f14073h.setText(Game.f8589i.localeManager.i18n.format("daily_loot_current_day_title", Integer.valueOf(dailyLootCurrentDayIndex + 1)));
        String dailyLootCurrentQuest = Game.f8589i.dailyQuestManager.getDailyLootCurrentQuest();
        if (dailyLootCurrentQuest.equals(DailyQuestManager.RESET_QUESTS_QUEST_ID)) {
            this.f14078m.setText("");
            this.f14077l.setText(Game.f8589i.localeManager.i18n.get("daily_loot_quest_reset_quests"));
        } else {
            BasicLevelQuestConfig regularQuestById = Game.f8589i.basicLevelManager.getRegularQuestById(dailyLootCurrentQuest);
            Label label7 = this.f14078m;
            label7.setText(Game.f8589i.localeManager.i18n.get("level") + ": " + regularQuestById.level.name);
            StringBuilder stringBuilder = f14065q;
            stringBuilder.setLength(0);
            stringBuilder.append(regularQuestById.getTitle(true, true));
            if (regularQuestById.getRequiredValue(Game.f8589i.gameValueManager.getSnapshot()) > 1) {
                stringBuilder.append(": [#8BC34A]").append(regularQuestById.formatValueForUi(regularQuestById.getRequiredValue(Game.f8589i.gameValueManager.getSnapshot()))).append("[]");
            }
            this.f14077l.setText(stringBuilder);
        }
        this.f14076k.setVisible(Game.f8589i.dailyQuestManager.isTodayDailyLootQuestCompleted());
        if (Game.f8589i.dailyQuestManager.isTodayDailyLootQuestCompleted()) {
            this.f14079n.setVisible(false);
        } else {
            this.f14079n.setVisible(true);
            if (dailyLootCurrentQuest.equals(DailyQuestManager.RESET_QUESTS_QUEST_ID)) {
                this.f14079n.setText(Game.f8589i.localeManager.i18n.get("quests_reset_button"));
                this.f14079n.setIcon(Game.f8589i.assetManager.getDrawable("icon-crown"));
            } else {
                this.f14079n.setText(Game.f8589i.localeManager.i18n.get("play"));
                this.f14079n.setIcon(Game.f8589i.assetManager.getDrawable("icon-joystick"));
            }
        }
        setVisible(true);
    }
}
