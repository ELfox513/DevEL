package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.DailyQuestManager;
import com.prineside.tdi2.managers.LeaderBoardManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.ItemCell;
import com.prineside.tdi2.p036ui.actors.LabelButton;
import com.prineside.tdi2.p036ui.actors.LimitedWidthLabel;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.WebView;
import com.prineside.tdi2.p036ui.shared.DailyQuestOverlay;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.UiUtils;
import java.util.Locale;
import net.bytebuddy.description.type.TypeDescription;
/* renamed from: com.prineside.tdi2.ui.shared.DailyQuestOverlay */
/* loaded from: classes2.dex */
public class DailyQuestOverlay {

    /* renamed from: G */
    public static final StringBuilder f14086G = new StringBuilder();

    /* renamed from: A */
    public Label f14087A;

    /* renamed from: B */
    public LabelButton f14088B;

    /* renamed from: C */
    public Label f14089C;

    /* renamed from: D */
    public ComplexButton f14090D;

    /* renamed from: E */
    public float f14091E;

    /* renamed from: F */
    public DailyQuestManager.DailyQuestLevel f14092F;

    /* renamed from: a */
    public final UiManager.UiLayer f14093a;

    /* renamed from: b */
    public final UiManager.UiLayer f14094b;

    /* renamed from: c */
    public Group f14095c;

    /* renamed from: d */
    public Label f14096d;

    /* renamed from: e */
    public Table f14097e;

    /* renamed from: f */
    public Label f14098f;

    /* renamed from: g */
    public Label f14099g;

    /* renamed from: h */
    public Group f14100h;

    /* renamed from: i */
    public Group f14101i;

    /* renamed from: j */
    public Group f14102j;

    /* renamed from: k */
    public Group f14103k;

    /* renamed from: l */
    public Label f14104l;

    /* renamed from: m */
    public Label f14105m;

    /* renamed from: n */
    public Label f14106n;

    /* renamed from: o */
    public ScrollPane f14107o;

    /* renamed from: p */
    public Image f14108p;

    /* renamed from: q */
    public Label f14109q;

    /* renamed from: r */
    public Label f14110r;

    /* renamed from: s */
    public Table f14111s;

    /* renamed from: t */
    public Table f14112t;

    /* renamed from: u */
    public Group[] f14113u;

    /* renamed from: v */
    public boolean f14114v;

    /* renamed from: w */
    public Label f14115w;

    /* renamed from: x */
    public Label f14116x;

    /* renamed from: y */
    public Label f14117y;

    /* renamed from: z */
    public Label f14118z;

    /* renamed from: com.prineside.tdi2.ui.shared.DailyQuestOverlay$5 */
    /* loaded from: classes2.dex */
    public class RunnableC27285 implements Runnable {
        public RunnableC27285() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m20217b() {
            DailyQuestOverlay.this.hide();
            GameStateSystem.deleteSavedGame();
            Game.f8589i.dailyQuestManager.startDailyLevel();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (GameStateSystem.savedGameExists()) {
                Game game = Game.f8589i;
                game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("saved_game_will_be_lost_confirm"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        DailyQuestOverlay.RunnableC27285.this.m20217b();
                    }
                });
                return;
            }
            DailyQuestOverlay.this.hide();
            Game.f8589i.dailyQuestManager.startDailyLevel();
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.DailyQuestOverlay$RankPrizesRow */
    /* loaded from: classes2.dex */
    public enum RankPrizesRow {
        FIRST,
        SECOND,
        THIRD,
        TOP_3,
        TOP_10,
        TOP_30
    }

    /* renamed from: f */
    public static /* synthetic */ float m20231f(DailyQuestOverlay dailyQuestOverlay, float f) {
        float f2 = dailyQuestOverlay.f14091E + f;
        dailyQuestOverlay.f14091E = f2;
        return f2;
    }

    public void hide() {
        setVisible(false);
    }

    public void show(DailyQuestManager.DailyQuestLevel dailyQuestLevel) {
        String str;
        setVisible(true);
        this.f14115w.setText(Game.f8589i.localeManager.i18n.get("leaderboard"));
        this.f14116x.setText(Game.f8589i.localeManager.i18n.get("sign_in_to_get_ranked"));
        this.f14117y.setText(Game.f8589i.localeManager.i18n.get("daily_quest"));
        this.f14118z.setText(Game.f8589i.localeManager.i18n.get("complete_daily_quest_for_rewards"));
        this.f14087A.setText(Game.f8589i.localeManager.i18n.get("get_ranked_daily_to_win_more"));
        this.f14088B.setText(Game.f8589i.localeManager.i18n.get("rules"));
        this.f14089C.setText(Game.f8589i.localeManager.i18n.get("all_time_top_players"));
        this.f14090D.setText(Game.f8589i.localeManager.i18n.get("play"));
        this.f14092F = dailyQuestLevel;
        Logger.log("DailyQuestOverlay", "fallback: " + String.valueOf(dailyQuestLevel.isLocalFallback));
        Logger.log("DailyQuestOverlay", "name: " + String.valueOf(dailyQuestLevel.getLevelName()));
        Logger.log("DailyQuestOverlay", "date: " + String.valueOf(dailyQuestLevel.forDate));
        Image image = this.f14108p;
        AssetManager assetManager = Game.f8589i.assetManager;
        if (dailyQuestLevel.wasCompleted()) {
            str = "checkbox-checked";
        } else {
            str = "checkbox";
        }
        image.setDrawable(assetManager.getDrawable(str));
        this.f14109q.setText(dailyQuestLevel.getQuestName());
        m20219r();
        this.f14111s.clearChildren();
        Array<ItemStack> questRewards = dailyQuestLevel.getQuestRewards();
        for (int i = 0; i < questRewards.size; i++) {
            final ItemStack itemStack = questRewards.get(i);
            ItemCell itemCell = new ItemCell();
            itemCell.setTouchable(Touchable.enabled);
            itemCell.setItem(itemStack);
            itemCell.setColRow(i, 0);
            itemCell.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.DailyQuestOverlay.6
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    Game.f8589i.uiManager.itemDescriptionDialog.show(itemStack.getItem(), itemStack.getCount());
                }
            });
            this.f14111s.add((Table) itemCell).size(128.0f, 140.0f);
        }
        if (dailyQuestLevel.isLocalFallback) {
            this.f14103k.setVisible(true);
            this.f14102j.setVisible(false);
        } else {
            this.f14103k.setVisible(false);
            this.f14102j.setVisible(true);
            m20220q(Game.f8589i.localeManager.i18n.get("first_short"), this.f14113u[RankPrizesRow.FIRST.ordinal()], dailyQuestLevel.prizesFirstPlace);
            m20220q(Game.f8589i.localeManager.i18n.get("second_short"), this.f14113u[RankPrizesRow.SECOND.ordinal()], dailyQuestLevel.prizesSecondPlace);
            m20220q(Game.f8589i.localeManager.i18n.get("third_short"), this.f14113u[RankPrizesRow.THIRD.ordinal()], dailyQuestLevel.prizesThirdPlace);
            m20220q(Game.f8589i.localeManager.i18n.format("top_percent", "3"), this.f14113u[RankPrizesRow.TOP_3.ordinal()], dailyQuestLevel.prizesTop3Percent);
            m20220q(Game.f8589i.localeManager.i18n.format("top_percent", "10"), this.f14113u[RankPrizesRow.TOP_10.ordinal()], dailyQuestLevel.prizesTop10Percent);
            m20220q(Game.f8589i.localeManager.i18n.format("top_percent", "30"), this.f14113u[RankPrizesRow.TOP_30.ordinal()], dailyQuestLevel.prizesTop30Percent);
        }
        Game.f8589i.leaderBoardManager.getSkillPointLeaderboards(new ObjectRetriever<LeaderBoardManager.SkillPointsLeaderboardsResult>() { // from class: com.prineside.tdi2.ui.shared.DailyQuestOverlay.7
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(LeaderBoardManager.SkillPointsLeaderboardsResult skillPointsLeaderboardsResult) {
                DailyQuestOverlay.this.f14112t.clearChildren();
                if (skillPointsLeaderboardsResult.success) {
                    if (skillPointsLeaderboardsResult.player != null) {
                        DailyQuestOverlay.this.f14110r.setText(skillPointsLeaderboardsResult.player.score);
                    }
                    int i2 = 0;
                    while (true) {
                        Array<LeaderBoardManager.LeaderboardsEntry> array = skillPointsLeaderboardsResult.entries;
                        if (i2 >= array.size) {
                            return;
                        }
                        LeaderBoardManager.LeaderboardsEntry leaderboardsEntry = array.get(i2);
                        Group group = new Group();
                        group.setTransform(false);
                        DailyQuestOverlay.this.f14112t.add((Table) group).size(320.0f, 24.0f).row();
                        LimitedWidthLabel limitedWidthLabel = new LimitedWidthLabel(leaderboardsEntry.nickname, 21, 21, 240.0f);
                        limitedWidthLabel.setPosition(0.0f, 0.0f);
                        limitedWidthLabel.setSize(100.0f, 24.0f);
                        group.addActor(limitedWidthLabel);
                        Table table = new Table();
                        table.setPosition(160.0f, 0.0f);
                        table.setSize(160.0f, 24.0f);
                        group.addActor(table);
                        table.add().height(32.0f).expandX().fillX();
                        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-skill-point"));
                        Color color = MaterialColor.CYAN.P500;
                        image2.setColor(color);
                        table.add((Table) image2).size(24.0f, 24.0f).padRight(8.0f);
                        Label label = new Label(StringFormatter.commaSeparatedNumber(leaderboardsEntry.score), Game.f8589i.assetManager.getLabelStyle(21));
                        label.setColor(color);
                        table.add((Table) label).height(24.0f);
                        i2++;
                    }
                } else {
                    DailyQuestOverlay.this.f14110r.setText("-");
                    Label label2 = new Label(Game.f8589i.localeManager.i18n.get("failed_to_load"), Game.f8589i.assetManager.getLabelStyle(21));
                    label2.setColor(MaterialColor.ORANGE.P500);
                    DailyQuestOverlay.this.f14112t.add((Table) label2);
                }
            }
        });
        setLeaderBoardDate(Game.f8589i.dailyQuestManager.getCurrentDayDate());
    }

    public DailyQuestOverlay() {
        RankPrizesRow[] values;
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SHARED_COMPONENTS;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 110, "DailyQuestOverlay tint", true);
        this.f14093a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 111, "DailyQuestOverlay main");
        this.f14094b = addLayer2;
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(Config.BACKGROUND_COLOR);
        image.getColor().f3889a = 0.78f;
        addLayer.getTable().add((Table) image).expand().fill();
        addLayer.getTable().setTouchable(Touchable.enabled);
        addLayer.getTable().addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.DailyQuestOverlay.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                DailyQuestOverlay.this.hide();
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
            }
        });
        Group group = new Group();
        group.setTransform(false);
        group.setOrigin(650.0f, 488.5f);
        addLayer2.getTable().add((Table) group).size(1300.0f, 977.0f);
        Group group2 = new Group() { // from class: com.prineside.tdi2.ui.shared.DailyQuestOverlay.2
            @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
            public void act(float f) {
                super.act(f);
                if (DailyQuestOverlay.this.f14114v) {
                    DailyQuestOverlay.m20231f(DailyQuestOverlay.this, f);
                    if (DailyQuestOverlay.this.f14091E >= 1.0f) {
                        DailyQuestOverlay.this.f14091E = 0.0f;
                        DailyQuestOverlay.this.m20219r();
                    }
                }
            }
        };
        this.f14095c = group2;
        group2.setTransform(true);
        this.f14095c.setOrigin(650.0f, 488.5f);
        this.f14095c.setSize(1300.0f, 977.0f);
        group.addActor(this.f14095c);
        QuadActor quadActor = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.28f), new float[]{16.0f, 26.0f, 16.0f, 952.0f, 546.0f, 961.0f, 546.0f, 0.0f});
        quadActor.setSize(546.0f, 961.0f);
        this.f14095c.addActor(quadActor);
        QuadActor quadActor2 = new QuadActor(new Color(791621631), new float[]{0.0f, 32.0f, 0.0f, 970.0f, 530.0f, 977.0f, 530.0f, 19.0f});
        quadActor2.setSize(530.0f, 977.0f);
        this.f14095c.addActor(quadActor2);
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f14115w = label;
        label.setPosition(40.0f, 914.0f);
        this.f14115w.setSize(100.0f, 23.0f);
        this.f14095c.addActor(this.f14115w);
        Label label2 = new Label("2019-04-26 (" + Game.f8589i.localeManager.i18n.get("in_progress").toLowerCase(Locale.ENGLISH) + ")", Game.f8589i.assetManager.getLabelStyle(21));
        this.f14096d = label2;
        label2.setPosition(40.0f, 882.0f);
        this.f14096d.setSize(100.0f, 16.0f);
        this.f14096d.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14095c.addActor(this.f14096d);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image2.setPosition(0.0f, 198.0f);
        image2.setSize(530.0f, 662.0f);
        image2.setColor(new Color(724249599));
        this.f14095c.addActor(image2);
        this.f14097e = new Table();
        ScrollPane scrollPane = new ScrollPane(this.f14097e);
        this.f14107o = scrollPane;
        scrollPane.setPosition(0.0f, 198.0f);
        this.f14107o.setSize(530.0f, 662.0f);
        this.f14095c.addActor(this.f14107o);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image3.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        image3.setPosition(0.0f, 850.0f);
        image3.setSize(530.0f, 10.0f);
        Touchable touchable = Touchable.disabled;
        image3.setTouchable(touchable);
        this.f14095c.addActor(image3);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("gradient-bottom"));
        image4.setColor(0.0f, 0.0f, 0.0f, 0.28f);
        image4.setPosition(0.0f, 198.0f);
        image4.setSize(530.0f, 10.0f);
        image4.setTouchable(touchable);
        this.f14095c.addActor(image4);
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14099g = label3;
        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14099g.setPosition(40.0f, 157.0f);
        this.f14099g.setSize(100.0f, 16.0f);
        this.f14095c.addActor(this.f14099g);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image5.setSize(530.0f, 64.0f);
        image5.setPosition(0.0f, 69.0f);
        image5.setColor(new Color(673720575));
        this.f14095c.addActor(image5);
        Group group3 = new Group();
        this.f14101i = group3;
        group3.setTransform(false);
        this.f14101i.setSize(530.0f, 64.0f);
        this.f14101i.setPosition(0.0f, 69.0f);
        this.f14101i.setVisible(false);
        this.f14095c.addActor(this.f14101i);
        Label label4 = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f14116x = label4;
        label4.setPosition(40.0f, 0.0f);
        this.f14116x.setSize(100.0f, 64.0f);
        this.f14101i.addActor(this.f14116x);
        Group group4 = new Group();
        this.f14100h = group4;
        group4.setTransform(false);
        this.f14100h.setSize(530.0f, 64.0f);
        this.f14100h.setPosition(0.0f, 69.0f);
        this.f14100h.setVisible(false);
        this.f14095c.addActor(this.f14100h);
        Label label5 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14104l = label5;
        label5.setPosition(40.0f, 0.0f);
        this.f14104l.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14104l.setSize(50.0f, 64.0f);
        this.f14104l.setAlignment(1);
        this.f14100h.addActor(this.f14104l);
        LimitedWidthLabel limitedWidthLabel = new LimitedWidthLabel("", 30, 24, 280.0f);
        this.f14105m = limitedWidthLabel;
        limitedWidthLabel.setPosition(122.0f, 0.0f);
        this.f14105m.setSize(100.0f, 64.0f);
        this.f14100h.addActor(this.f14105m);
        Label label6 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14106n = label6;
        label6.setAlignment(16);
        this.f14106n.setPosition(390.0f, 0.0f);
        this.f14106n.setSize(100.0f, 64.0f);
        this.f14100h.addActor(this.f14106n);
        Table table = new Table();
        table.setPosition(312.0f, 149.0f);
        table.setSize(177.0f, 32.0f);
        this.f14095c.addActor(table);
        table.add().height(32.0f).expandX().fillX();
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("icon-skill-point"));
        Color color = MaterialColor.CYAN.P500;
        image6.setColor(color);
        table.add((Table) image6).size(32.0f, 32.0f).padRight(8.0f);
        Label label7 = new Label("-", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14110r = label7;
        label7.setColor(color);
        table.add((Table) this.f14110r).height(32.0f);
        QuadActor quadActor3 = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.28f), new float[]{25.0f, 0.0f, 25.0f, 970.0f, 717.0f, 956.0f, 725.0f, 27.0f});
        quadActor3.setPosition(570.0f, 0.0f);
        quadActor3.setSize(725.0f, 970.0f);
        this.f14095c.addActor(quadActor3);
        QuadActor quadActor4 = new QuadActor(new Color(791621631), new float[]{0.0f, 19.0f, 0.0f, 977.0f, 710.0f, 967.0f, 710.0f, 42.0f});
        quadActor4.setSize(710.0f, 977.0f);
        quadActor4.setPosition(570.0f, 0.0f);
        this.f14095c.addActor(quadActor4);
        Group group5 = new Group();
        group5.setTransform(false);
        group5.setPosition(570.0f, 0.0f);
        group5.setSize(710.0f, 977.0f);
        this.f14095c.addActor(group5);
        Image image7 = new Image(Game.f8589i.assetManager.getDrawable("icon-exclamation-triangle"));
        image7.setSize(64.0f, 64.0f);
        image7.setPosition(40.0f, 882.0f);
        group5.addActor(image7);
        Table table2 = new Table();
        table2.setPosition(128.0f, 882.0f);
        table2.setSize(500.0f, 64.0f);
        group5.addActor(table2);
        Label label8 = new Label("", Game.f8589i.assetManager.getLabelStyle(36));
        this.f14117y = label8;
        table2.add((Table) label8).left().padRight(16.0f);
        Label label9 = new Label("00:00:00", Game.f8589i.assetManager.getLabelStyle(21));
        this.f14098f = label9;
        label9.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table2.add((Table) this.f14098f).expand().padTop(8.0f).left();
        Image image8 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image8.setPosition(0.0f, 796.0f);
        image8.setSize(710.0f, 64.0f);
        image8.setColor(new Color(623191551));
        group5.addActor(image8);
        Image image9 = new Image();
        this.f14108p = image9;
        image9.setPosition(40.0f, 808.0f);
        this.f14108p.setSize(40.0f, 40.0f);
        group5.addActor(this.f14108p);
        Label label10 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14109q = label10;
        label10.setPosition(96.0f, 796.0f);
        this.f14109q.setSize(100.0f, 64.0f);
        group5.addActor(this.f14109q);
        Label label11 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14118z = label11;
        label11.setPosition(40.0f, 732.0f);
        this.f14118z.setSize(100.0f, 64.0f);
        group5.addActor(this.f14118z);
        Table table3 = new Table();
        this.f14111s = table3;
        table3.setSize(710.0f, 140.0f);
        this.f14111s.setPosition(0.0f, 587.0f);
        group5.addActor(this.f14111s);
        Group group6 = new Group();
        this.f14103k = group6;
        group6.setTransform(false);
        this.f14103k.setSize(710.0f, 796.0f);
        this.f14103k.setVisible(false);
        Group group7 = this.f14103k;
        Touchable touchable2 = Touchable.childrenOnly;
        group7.setTouchable(touchable2);
        group5.addActor(this.f14103k);
        Group group8 = new Group();
        this.f14102j = group8;
        group8.setTransform(false);
        this.f14102j.setSize(710.0f, 796.0f);
        this.f14102j.setVisible(false);
        this.f14102j.setTouchable(touchable2);
        group5.addActor(this.f14102j);
        Label label12 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f14087A = label12;
        label12.setPosition(40.0f, 506.0f);
        this.f14087A.setSize(100.0f, 64.0f);
        this.f14102j.addActor(this.f14087A);
        LabelButton labelButton = new LabelButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.DailyQuestOverlay.3
            @Override // java.lang.Runnable
            public void run() {
                Gdx.f38302net.openURI(Config.DAILY_QUEST_RULES_WIKI_URL);
            }
        });
        this.f14088B = labelButton;
        labelButton.setPosition(510.0f, 506.0f);
        this.f14088B.setSize(160.0f, 64.0f);
        this.f14088B.setAlignment(16);
        this.f14102j.addActor(this.f14088B);
        this.f14113u = new Group[RankPrizesRow.values().length];
        float f = 458.0f;
        for (RankPrizesRow rankPrizesRow : RankPrizesRow.values()) {
            Image image10 = new Image(Game.f8589i.assetManager.getDrawable("gradient-left"));
            image10.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            image10.setPosition(0.0f, f);
            image10.setSize(710.0f, 48.0f);
            this.f14102j.addActor(image10);
            Group group9 = new Group();
            this.f14113u[rankPrizesRow.ordinal()] = group9;
            group9.setTransform(false);
            group9.setPosition(0.0f, f);
            group9.setSize(48.0f, 710.0f);
            this.f14102j.addActor(group9);
            f -= 52.0f;
        }
        Label label13 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f14089C = label13;
        label13.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f14089C.setPosition(40.0f, 157.0f);
        this.f14089C.setSize(100.0f, 16.0f);
        group5.addActor(this.f14089C);
        Table table4 = new Table();
        this.f14112t = table4;
        table4.setPosition(40.0f, 68.0f);
        this.f14112t.setSize(320.0f, 72.0f);
        group5.addActor(this.f14112t);
        PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.DailyQuestOverlay.4
            @Override // java.lang.Runnable
            public void run() {
                DailyQuestOverlay.this.hide();
            }
        }, MaterialColor.LIGHT_BLUE.P500, MaterialColor.LIGHT_BLUE.P400, MaterialColor.LIGHT_BLUE.P600);
        paddedImageButton.setPosition(1228.0f, 914.0f);
        paddedImageButton.setSize(96.0f, 96.0f);
        paddedImageButton.setIconPosition(16.0f, 16.0f);
        paddedImageButton.setIconSize(64.0f, 64.0f);
        this.f14095c.addActor(paddedImageButton);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(30), new RunnableC27285());
        this.f14090D = complexButton;
        complexButton.setPosition(1063.0f, 65.0f);
        this.f14090D.setSize(235.0f, 92.0f);
        this.f14090D.setBackground(Game.f8589i.assetManager.getDrawable("ui-daily-quest-play-button"), 0.0f, 0.0f, 235.0f, 92.0f);
        this.f14090D.setIcon(Game.f8589i.assetManager.getDrawable("icon-joystick"), 29.0f, 26.0f, 48.0f, 48.0f);
        this.f14090D.setLabel(90.0f, 11.0f, 100.0f, 82.0f, 8);
        this.f14095c.addActor(this.f14090D);
        this.f14093a.getTable().setVisible(false);
        this.f14094b.getTable().setVisible(false);
    }

    /* renamed from: r */
    public final void m20219r() {
        DailyQuestManager.DailyQuestLevel dailyQuestLevel = this.f14092F;
        if (dailyQuestLevel == null) {
            return;
        }
        int timestampSeconds = dailyQuestLevel.endTimestamp - Game.getTimestampSeconds();
        if (timestampSeconds < 0) {
            Game.f8589i.dailyQuestManager.getCurrentDayLevel(new ObjectRetriever<DailyQuestManager.DailyQuestLevel>() { // from class: com.prineside.tdi2.ui.shared.DailyQuestOverlay.8
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(DailyQuestManager.DailyQuestLevel dailyQuestLevel2) {
                    DailyQuestOverlay.this.show(dailyQuestLevel2);
                }
            });
            return;
        }
        this.f14098f.setText(StringFormatter.digestTime(timestampSeconds));
        this.f14098f.setVisible(true);
    }

    public void setLeaderBoardDate(String str) {
        String str2;
        this.f14097e.clearChildren();
        Image image = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
        image.setOrigin(32.0f, 32.0f);
        image.addAction(Actions.forever(Actions.rotateBy(90.0f, 1.0f)));
        this.f14097e.add((Table) image).size(64.0f, 64.0f);
        if (str.equals(Game.f8589i.dailyQuestManager.getCurrentDayDate())) {
            str2 = str + " (" + Game.f8589i.localeManager.i18n.get("in_progress") + ")";
        } else {
            str2 = str;
        }
        this.f14096d.setText(str2);
        Game.f8589i.dailyQuestManager.getLeaderboards(str, new ObjectRetriever<DailyQuestManager.DailyQuestLeaderboards>() { // from class: com.prineside.tdi2.ui.shared.DailyQuestOverlay.9
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(DailyQuestManager.DailyQuestLeaderboards dailyQuestLeaderboards) {
                DailyQuestOverlay.this.f14097e.clearChildren();
                if (dailyQuestLeaderboards.success) {
                    boolean z = false;
                    int i = 0;
                    float f = 0.0f;
                    while (true) {
                        Array<LeaderBoardManager.LeaderboardsEntry> array = dailyQuestLeaderboards.entries;
                        if (i >= array.size) {
                            break;
                        }
                        final LeaderBoardManager.LeaderboardsEntry leaderboardsEntry = array.get(i);
                        Group group = new Group();
                        group.setTransform(z);
                        group.setSize(530.0f, 64.0f);
                        DailyQuestOverlay.this.f14097e.add((Table) group).row();
                        f += 64.0f;
                        if (i % 2 == 0) {
                            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                            image2.setColor(new Color(623191551));
                            image2.setSize(530.0f, 64.0f);
                            group.addActor(image2);
                        }
                        i++;
                        Label label = new Label(String.valueOf(i), Game.f8589i.assetManager.getLabelStyle(24));
                        label.setPosition(40.0f, 0.0f);
                        label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        label.setSize(40.0f, 64.0f);
                        label.setAlignment(1);
                        group.addActor(label);
                        Image image3 = new Image();
                        if (leaderboardsEntry.hasProfilePicture) {
                            AssetManager assetManager = Game.f8589i.assetManager;
                            image3.setDrawable(new TextureRegionDrawable(assetManager.loadWebTexture(Config.AVATAR_WEB_TEXTURES_URL + leaderboardsEntry.playerId + "-32.png")));
                        } else {
                            image3.setDrawable(Game.f8589i.assetManager.getDrawable("icon-user"));
                            image3.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                        }
                        image3.setPosition(92.0f, 16.0f);
                        image3.setSize(32.0f, 32.0f);
                        group.addActor(image3);
                        LimitedWidthLabel limitedWidthLabel = new LimitedWidthLabel(leaderboardsEntry.nickname, 30, 24, 240.0f);
                        if (leaderboardsEntry.nickname.equals(Game.f8589i.authManager.getNickname())) {
                            limitedWidthLabel.setColor(MaterialColor.GREEN.P500);
                        } else {
                            int i2 = leaderboardsEntry.rank;
                            if (i2 == 1) {
                                limitedWidthLabel.setColor(MaterialColor.AMBER.P500);
                            } else if (i2 == 2) {
                                limitedWidthLabel.setColor(MaterialColor.AMBER.P300);
                            } else if (i2 == 3) {
                                limitedWidthLabel.setColor(MaterialColor.AMBER.P100);
                            }
                        }
                        limitedWidthLabel.setPosition(140.0f, 0.0f);
                        limitedWidthLabel.setSize(100.0f, 64.0f);
                        limitedWidthLabel.setTouchable(Touchable.enabled);
                        limitedWidthLabel.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.DailyQuestOverlay.9.1
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                            public void clicked(InputEvent inputEvent, float f2, float f3) {
                                WebView webView = Game.f8589i.uiManager.getWebBrowser().webView;
                                webView.loadUrl(Net.HttpMethods.GET, Config.XDX_VIEW_PLAYER_PROFILE_URL + leaderboardsEntry.playerId, null);
                                Game.f8589i.uiManager.getWebBrowser().setVisible(true);
                                Game.f8589i.uiManager.leaderboardsOverlay.hide();
                            }
                        });
                        group.addActor(limitedWidthLabel);
                        Label label2 = new Label(StringFormatter.commaSeparatedNumber(leaderboardsEntry.score), Game.f8589i.assetManager.getLabelStyle(24));
                        label2.setAlignment(16);
                        label2.setPosition(390.0f, 0.0f);
                        label2.setSize(100.0f, 64.0f);
                        group.addActor(label2);
                        z = false;
                    }
                    if (f < DailyQuestOverlay.this.f14107o.getHeight()) {
                        DailyQuestOverlay.this.f14097e.add().size(530.0f, DailyQuestOverlay.this.f14107o.getHeight() - f);
                    }
                    DailyQuestManager.LeaderboardsRank leaderboardsRank = dailyQuestLeaderboards.player;
                    if (leaderboardsRank == null) {
                        DailyQuestOverlay.this.f14100h.setVisible(false);
                        DailyQuestOverlay.this.f14101i.setVisible(true);
                        DailyQuestOverlay.this.f14099g.setText(Game.f8589i.localeManager.i18n.get("your_rank"));
                        return;
                    }
                    int i3 = leaderboardsRank.rank;
                    if (i3 == 1) {
                        Label label3 = DailyQuestOverlay.this.f14099g;
                        label3.setText(Game.f8589i.localeManager.i18n.get("your_rank") + " - " + Game.f8589i.localeManager.i18n.get("leader") + "!");
                    } else {
                        int ceil = MathUtils.ceil((i3 / leaderboardsRank.total) * 100.0f);
                        if (ceil < 0) {
                            ceil = 0;
                        }
                        if (ceil > 100) {
                            ceil = 100;
                        }
                        DailyQuestOverlay.f14086G.setLength(0);
                        DailyQuestOverlay.f14086G.append(Game.f8589i.localeManager.i18n.get("your_rank"));
                        DailyQuestOverlay.f14086G.append(" - ");
                        DailyQuestOverlay.f14086G.append(Game.f8589i.localeManager.i18n.format("top_percent", Integer.valueOf(ceil)));
                        DailyQuestOverlay.this.f14099g.setText(DailyQuestOverlay.f14086G);
                    }
                    DailyQuestOverlay.this.f14105m.setText(Game.f8589i.authManager.getNickname());
                    Label label4 = DailyQuestOverlay.this.f14104l;
                    int i4 = dailyQuestLeaderboards.player.rank;
                    label4.setText(i4 == 0 ? TypeDescription.Generic.OfWildcardType.SYMBOL : String.valueOf(i4));
                    DailyQuestOverlay.this.f14106n.setText(StringFormatter.commaSeparatedNumber(dailyQuestLeaderboards.player.score));
                    DailyQuestOverlay.this.f14100h.setVisible(true);
                    DailyQuestOverlay.this.f14101i.setVisible(false);
                    return;
                }
                Label label5 = new Label(Game.f8589i.localeManager.i18n.get("failed_to_load"), Game.f8589i.assetManager.getLabelStyle(24));
                label5.setWrap(true);
                label5.setColor(MaterialColor.ORANGE.P500);
                label5.setAlignment(1);
                DailyQuestOverlay.this.f14097e.add((Table) label5).width(400.0f);
            }
        });
    }

    public void setVisible(boolean z) {
        if (z) {
            UiUtils.bouncyShowOverlay(this.f14093a.getTable(), this.f14094b.getTable(), this.f14095c);
        } else {
            UiUtils.bouncyHideOverlay(this.f14093a.getTable(), this.f14094b.getTable(), this.f14095c);
        }
        this.f14114v = z;
    }

    /* renamed from: q */
    public final void m20220q(CharSequence charSequence, Group group, Array<ItemStack> array) {
        group.clear();
        Actor label = new Label(charSequence, Game.f8589i.assetManager.getLabelStyle(24));
        label.setPosition(40.0f, 0.0f);
        label.setSize(100.0f, 48.0f);
        group.addActor(label);
        Table table = new Table();
        table.setPosition(140.0f, 0.0f);
        table.setSize(570.0f, 48.0f);
        group.addActor(table);
        for (int i = 0; i < array.size; i++) {
            table.add((Table) array.get(i).getItem().generateIcon(32.0f, false)).size(32.0f, 32.0f).padRight(6.0f);
            table.add((Table) new Label("x" + ((Object) StringFormatter.commaSeparatedNumber(array.get(i).getCount())), Game.f8589i.assetManager.getLabelStyle(21))).padRight(20.0f);
        }
        table.add().height(48.0f).expandX().fillX();
    }
}
