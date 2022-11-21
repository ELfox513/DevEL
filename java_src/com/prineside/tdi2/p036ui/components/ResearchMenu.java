package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Research;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.ResearchManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.p036ui.components.ResearchMenu;
import com.prineside.tdi2.p036ui.shared.Dialog;
import com.prineside.tdi2.screens.ResearchesScreen;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.QuadDrawable;
import com.prineside.tdi2.utils.StringFormatter;
/* renamed from: com.prineside.tdi2.ui.components.ResearchMenu */
/* loaded from: classes2.dex */
public class ResearchMenu implements Disposable {

    /* renamed from: T */
    public static final Color f13540T = new Color(808464639);

    /* renamed from: U */
    public static final StringBuilder f13541U = new StringBuilder();

    /* renamed from: A */
    public final Image f13542A;

    /* renamed from: B */
    public final Label f13543B;

    /* renamed from: C */
    public final Image f13544C;

    /* renamed from: D */
    public final Label f13545D;

    /* renamed from: E */
    public final Label f13546E;

    /* renamed from: F */
    public final Image f13547F;

    /* renamed from: G */
    public final Label f13548G;

    /* renamed from: H */
    public float f13549H;

    /* renamed from: I */
    public ComplexButton f13550I;

    /* renamed from: J */
    public ComplexButton f13551J;

    /* renamed from: K */
    public ComplexButton f13552K;

    /* renamed from: L */
    public Color f13553L;

    /* renamed from: M */
    public Color f13554M;

    /* renamed from: N */
    public Color f13555N;

    /* renamed from: O */
    public boolean f13556O;

    /* renamed from: P */
    public boolean f13557P;

    /* renamed from: Q */
    public final _SideMenuListener f13558Q;

    /* renamed from: R */
    public final _ResearchesScreenListener f13559R;

    /* renamed from: S */
    public final _ResearchManagerListener f13560S;

    /* renamed from: a */
    public final SideMenu f13561a;

    /* renamed from: b */
    public final ResearchesScreen f13562b;

    /* renamed from: d */
    public final SideMenu.SideMenuContainer f13563d;

    /* renamed from: k */
    public boolean f13564k;

    /* renamed from: p */
    public final Label.LabelStyle f13565p;

    /* renamed from: q */
    public final Label.LabelStyle f13566q;

    /* renamed from: r */
    public final Label f13567r;

    /* renamed from: s */
    public final Label f13568s;

    /* renamed from: t */
    public final Label f13569t;

    /* renamed from: u */
    public final Label f13570u;

    /* renamed from: v */
    public final Group f13571v;

    /* renamed from: w */
    public final Group f13572w;

    /* renamed from: x */
    public final Group f13573x;

    /* renamed from: y */
    public final Group f13574y;

    /* renamed from: z */
    public final Image f13575z;

    /* renamed from: com.prineside.tdi2.ui.components.ResearchMenu$_ResearchManagerListener */
    /* loaded from: classes2.dex */
    public class _ResearchManagerListener extends ResearchManager.ResearchManagerListener.ResearchManagerListenerAdapter {
        public _ResearchManagerListener() {
        }

        @Override // com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener.ResearchManagerListenerAdapter, com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener
        public void researchCompleted(Research research) {
            ResearchMenu.this.m20398q();
        }

        @Override // com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener.ResearchManagerListenerAdapter, com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener
        public void researchStarted(Research research, long j) {
            ResearchMenu.this.m20398q();
        }

        @Override // com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener.ResearchManagerListenerAdapter, com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener
        public void researchesUpdated() {
            ResearchMenu.this.m20398q();
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.ResearchMenu$_ResearchesScreenListener */
    /* loaded from: classes2.dex */
    public class _ResearchesScreenListener extends ResearchesScreen.ResearchesScreenListener.ResearchesScreenListenerAdapter {
        public _ResearchesScreenListener() {
        }

        @Override // com.prineside.tdi2.screens.ResearchesScreen.ResearchesScreenListener.ResearchesScreenListenerAdapter, com.prineside.tdi2.screens.ResearchesScreen.ResearchesScreenListener
        public void selectedResearchChanged() {
            if (ResearchMenu.this.f13562b.selectedResearch == null) {
                ResearchMenu.this.m20400o(false);
                return;
            }
            ResearchMenu.this.m20400o(true);
            ResearchMenu.this.m20398q();
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.ResearchMenu$_SideMenuListener */
    /* loaded from: classes2.dex */
    public class _SideMenuListener extends SideMenu.SideMenuListener.SideMenuListenerAdapter {
        public _SideMenuListener() {
        }

        @Override // com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener.SideMenuListenerAdapter, com.prineside.tdi2.p036ui.actors.SideMenu.SideMenuListener
        public void offscreenChanged() {
            ResearchMenu.this.m20398q();
        }
    }

    public ResearchMenu(SideMenu sideMenu, final ResearchesScreen researchesScreen) {
        Color color = Color.WHITE;
        this.f13553L = color;
        this.f13554M = color;
        this.f13555N = color;
        this.f13556O = false;
        this.f13557P = false;
        this.f13558Q = new _SideMenuListener();
        this.f13559R = new _ResearchesScreenListener();
        this.f13560S = new _ResearchManagerListener();
        this.f13561a = sideMenu;
        this.f13562b = researchesScreen;
        this.f13566q = new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), new Color(1.0f, 1.0f, 1.0f, 0.28f));
        this.f13565p = new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color);
        SideMenu.SideMenuContainer createContainer = sideMenu.createContainer();
        this.f13563d = createContainer;
        createContainer.hide();
        Label label = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(36), color));
        this.f13567r = label;
        label.setSize(520.0f, 26.0f);
        label.setPosition(40.0f, 903.0f);
        createContainer.addActor(label);
        Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        this.f13568s = label2;
        label2.setSize(440.0f, 60.0f);
        label2.setPosition(40.0f, 835.0f);
        label2.setWrap(true);
        label2.setAlignment(10);
        createContainer.addActor(label2);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color2 = MaterialColor.AMBER.P500;
        Label label3 = new Label("L1", new Label.LabelStyle(font, color2));
        this.f13569t = label3;
        label3.setSize(520.0f, 26.0f);
        label3.setPosition(40.0f, 903.0f);
        label3.setAlignment(16);
        createContainer.addActor(label3);
        Label label4 = new Label("/ 10", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f13570u = label4;
        label4.setSize(520.0f, 26.0f);
        label4.setPosition(40.0f, 867.0f);
        label4.setAlignment(16);
        label4.setColor(color2);
        float f = 0.56f;
        label4.getColor().mul(1.0f, 1.0f, 1.0f, 0.56f);
        createContainer.addActor(label4);
        Group group = new Group();
        this.f13571v = group;
        group.setTransform(false);
        group.setTouchable(Touchable.disabled);
        group.setSize(600.0f, 825.0f);
        createContainer.addActor(group);
        this.f13550I = new ComplexButton(Game.f8589i.localeManager.i18n.get("reset_branch").toUpperCase(), Game.f8589i.localeManager.i18n.get("reset_branch").length() > 14 ? Game.f8589i.assetManager.getLabelStyle(24) : Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.ResearchMenu.1
            @Override // java.lang.Runnable
            public void run() {
                Game game = Game.f8589i;
                game.uiManager.dialog.showConfirm(game.localeManager.i18n.format("reset_research_branch_for_accelerators", Integer.valueOf(game.researchManager.getResetStarResearchesAcceleratorPrice())), new Runnable() { // from class: com.prineside.tdi2.ui.components.ResearchMenu.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Game.f8589i.researchManager.resetStarResearches();
                        ResearchMenu.this.m20398q();
                        researchesScreen.updateStarsCount();
                    }
                });
            }
        });
        ComplexButton complexButton = new ComplexButton(Game.f8589i.localeManager.i18n.get("reset").toUpperCase(), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.v
            @Override // java.lang.Runnable
            public final void run() {
                ResearchMenu.this.m20401n(researchesScreen);
            }
        });
        this.f13551J = complexButton;
        int i = 2;
        ComplexButton[] complexButtonArr = {this.f13550I, complexButton};
        int i2 = 0;
        while (i2 < i) {
            ComplexButton complexButton2 = complexButtonArr[i2];
            Color color3 = Color.WHITE;
            complexButton2.setIconLabelColors(color3, color3, color3, new Color(1.0f, 1.0f, 1.0f, f));
            complexButton2.setLabel(74.0f, 0.0f, 184.0f, 64.0f, 16);
            complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-restart"), 274.0f, 12.0f, 40.0f, 40.0f);
            complexButton2.setBackground(new QuadDrawable(new QuadActor(color3, new float[]{0.0f, 0.0f, 22.0f, 64.0f, 338.0f, 64.0f, 338.0f, 0.0f})), 0.0f, 0.0f, 338.0f, 64.0f);
            complexButton2.setBackgroundColors(MaterialColor.ORANGE.P800.cpy().mul(1.0f, 1.0f, 1.0f, f), MaterialColor.ORANGE.P900.cpy().mul(1.0f, 1.0f, 1.0f, f), MaterialColor.ORANGE.P700.cpy().mul(1.0f, 1.0f, 1.0f, f), MaterialColor.GREY.P800);
            complexButton2.setSize(338.0f, 64.0f);
            complexButton2.setPosition(222.0f, 146.0f);
            this.f13563d.addActor(complexButton2);
            i2++;
            i = 2;
            f = 0.56f;
        }
        Group group2 = new Group();
        this.f13572w = group2;
        group2.setTransform(false);
        group2.setTouchable(Touchable.enabled);
        group2.setSize(338.0f, 80.0f);
        group2.setPosition(40.0f, 40.0f);
        this.f13563d.addActor(group2);
        group2.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.ResearchMenu.2

            /* renamed from: com.prineside.tdi2.ui.components.ResearchMenu$2$1 */
            /* loaded from: classes2.dex */
            public class RunnableC26131 implements Runnable {
                public RunnableC26131() {
                }

                /* renamed from: b */
                public static /* synthetic */ void m20394b(ResearchesScreen researchesScreen) {
                    try {
                        Game.f8589i.researchManager.tryStartResearching(researchesScreen.selectedResearch, false, null);
                        Game.f8589i.researchManager.startResearching(researchesScreen.selectedResearch, true);
                    } catch (ResearchManager.StartResearchingException e) {
                        e.printStackTrace();
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Research research = researchesScreen.selectedResearch;
                        if (research != null) {
                            Game.f8589i.researchManager.tryStartResearching(research, false, null);
                            Research research2 = researchesScreen.selectedResearch;
                            if (research2.type == ResearchType.DEVELOPER_MODE) {
                                Game game = Game.f8589i;
                                Dialog dialog = game.uiManager.dialog;
                                String str = game.localeManager.i18n.get("enable_developer_mode_confirm");
                                final ResearchesScreen researchesScreen = researchesScreen;
                                dialog.showConfirm(str, new Runnable() { // from class: com.prineside.tdi2.ui.components.y
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ResearchMenu.C26122.RunnableC26131.m20394b(ResearchesScreen.this);
                                    }
                                });
                                Table table = new Table();
                                Game.f8589i.uiManager.dialog.getHintTable().add(table).grow();
                                Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                                image.setColor(0.0f, 0.0f, 0.0f, 0.78f);
                                image.setFillParent(true);
                                table.addActor(image);
                                Label label = new Label(Game.f8589i.localeManager.i18n.get("enable_developer_mode_disclaimer"), Game.f8589i.assetManager.getLabelStyle(30));
                                label.setWrap(true);
                                table.add((Table) label).pad(20.0f).grow();
                            } else {
                                Game.f8589i.researchManager.startResearching(research2, true);
                            }
                        }
                        ResearchMenu.this.m20398q();
                    } catch (ResearchManager.StartResearchingException e) {
                        ResearchMenu.this.m20399p(e);
                    }
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f2, float f3, int i3, int i4) {
                if (i3 == -1) {
                    ResearchMenu.this.f13556O = true;
                    ResearchMenu.this.m20397r();
                }
                return super.touchDown(inputEvent, f2, f3, i3, i4);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f2, float f3, int i3, int i4) {
                if (i3 == -1) {
                    ResearchMenu.this.f13556O = false;
                    ResearchMenu.this.m20397r();
                }
                super.touchUp(inputEvent, f2, f3, i3, i4);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f2, float f3) {
                if (researchesScreen.selectedResearch != null) {
                    Research currentResearching = Game.f8589i.researchManager.getCurrentResearching();
                    Research research = researchesScreen.selectedResearch;
                    if (currentResearching == research) {
                        Game game = Game.f8589i;
                        if (!Game.f8589i.progressManager.removeAccelerators(game.progressManager.countAcceleratorsNeeded((int) (game.researchManager.getMillisToResearchingEnd() / 1000)))) {
                            Game game2 = Game.f8589i;
                            game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("not_enough_accelerators"));
                            return;
                        }
                        Game.f8589i.researchManager.finishCurrentResearch();
                    } else if (research.isMaxNormalLevel() && researchesScreen.selectedResearch.type == ResearchType.DEVELOPER_MODE) {
                        Game game3 = Game.f8589i;
                        game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("disable_developer_mode_hint"));
                    } else {
                        final RunnableC26131 runnableC26131 = new RunnableC26131();
                        if (GameStateSystem.savedGameExists()) {
                            try {
                                Research research2 = researchesScreen.selectedResearch;
                                if (research2 != null) {
                                    Game.f8589i.researchManager.tryStartResearching(research2, false, null);
                                    Game game4 = Game.f8589i;
                                    game4.uiManager.dialog.showConfirm(game4.localeManager.i18n.get("saved_game_will_be_lost_confirm"), new Runnable() { // from class: com.prineside.tdi2.ui.components.ResearchMenu.2.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            GameStateSystem.deleteSavedGame();
                                            runnableC26131.run();
                                        }
                                    });
                                    return;
                                }
                                return;
                            } catch (ResearchManager.StartResearchingException e) {
                                ResearchMenu.this.m20399p(e);
                                return;
                            }
                        }
                        runnableC26131.run();
                    }
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f2, float f3, int i3, Actor actor) {
                super.enter(inputEvent, f2, f3, i3, actor);
                if (i3 == -1) {
                    ResearchMenu.this.f13557P = true;
                    ResearchMenu.this.m20397r();
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f2, float f3, int i3, Actor actor) {
                super.exit(inputEvent, f2, f3, i3, actor);
                if (i3 == -1) {
                    ResearchMenu.this.f13557P = false;
                    ResearchMenu.this.m20397r();
                }
            }
        });
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-upgrade-button"));
        this.f13575z = image;
        image.setSize(338.0f, 80.0f);
        group2.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-research"));
        this.f13542A = image2;
        image2.setSize(40.0f, 40.0f);
        image2.setPosition(20.0f, 20.0f);
        group2.addActor(image2);
        String str = Game.f8589i.localeManager.i18n.get("do_research");
        ResourcePack.ResourcePackBitmapFont font2 = Game.f8589i.assetManager.getFont(30);
        Color color4 = Color.WHITE;
        Label label5 = new Label(str, new Label.LabelStyle(font2, color4));
        this.f13543B = label5;
        label5.setPosition(80.0f, 0.0f);
        label5.setSize(100.0f, 80.0f);
        group2.addActor(label5);
        Group group3 = new Group();
        this.f13573x = group3;
        group3.setTransform(false);
        this.f13563d.addActor(group3);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("icon-clock"));
        this.f13544C = image3;
        image3.setSize(24.0f, 24.0f);
        image3.setPosition(120.0f, 50.0f);
        Touchable touchable = Touchable.disabled;
        image3.setTouchable(touchable);
        group3.addActor(image3);
        Label label6 = new Label("30:00:00", new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color4));
        this.f13545D = label6;
        label6.setSize(112.0f, 24.0f);
        label6.setPosition(152.0f, 50.0f);
        label6.setAlignment(8);
        label6.setTouchable(touchable);
        group3.addActor(label6);
        ComplexButton complexButton3 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(30), null);
        this.f13552K = complexButton3;
        complexButton3.setSize(180.0f, 80.0f);
        this.f13552K.setPosition(380.0f, 40.0f);
        this.f13552K.setBackground(new QuadDrawable(new QuadActor(color4, new float[]{0.0f, 0.0f, 26.0f, 80.0f, 180.0f, 80.0f, 180.0f, 0.0f})), 0.0f, 0.0f, 180.0f, 80.0f);
        this.f13552K.setBackgroundColors(MaterialColor.BLUE_GREY.P700, MaterialColor.BLUE_GREY.P800, MaterialColor.BLUE_GREY.P600, MaterialColor.GREY.P900);
        this.f13552K.setIcon(Game.f8589i.assetManager.getDrawable("research-token"), 64.0f, 8.0f, 64.0f, 64.0f);
        this.f13552K.setIconLabelShadowEnabled(true);
        this.f13563d.addActor(this.f13552K);
        Group group4 = new Group();
        this.f13574y = group4;
        group4.setTransform(false);
        this.f13563d.addActor(group4);
        Label label7 = new Label("for", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color4));
        label7.setSize(70.0f, 80.0f);
        label7.setPosition(378.0f, 40.0f);
        label7.setAlignment(1);
        group4.addActor(label7);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-time-accelerator"));
        image4.setSize(40.0f, 40.0f);
        image4.setPosition(455.0f, 60.0f);
        Color color5 = MaterialColor.YELLOW.P500;
        image4.setColor(color5);
        group4.addActor(image4);
        Label label8 = new Label("100", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color5));
        this.f13546E = label8;
        label8.setSize(60.0f, 80.0f);
        label8.setPosition(500.0f, 40.0f);
        label8.setColor(color5);
        group4.addActor(label8);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image5.setColor(new Color(522133503));
        image5.setSize(520.0f, 8.0f);
        image5.setPosition(40.0f, 140.0f);
        group4.addActor(image5);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f13547F = image6;
        image6.setColor(MaterialColor.LIGHT_GREEN.P500);
        image6.setSize(520.0f, 8.0f);
        image6.setPosition(40.0f, 140.0f);
        group4.addActor(image6);
        Label label9 = new Label(Game.f8589i.localeManager.i18n.get("researching..."), new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color4));
        label9.setPosition(40.0f, 160.0f);
        label9.setSize(200.0f, 30.0f);
        group4.addActor(label9);
        Image image7 = new Image(Game.f8589i.assetManager.getDrawable("icon-clock"));
        image7.setSize(32.0f, 32.0f);
        image7.setPosition(420.0f, 159.0f);
        group4.addActor(image7);
        Label label10 = new Label("00:30", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color4));
        this.f13548G = label10;
        label10.setPosition(510.0f, 160.0f);
        label10.setSize(50.0f, 30.0f);
        label10.setAlignment(16);
        group4.addActor(label10);
        group4.setVisible(false);
        sideMenu.addListener(this.f13558Q);
        researchesScreen.addListener(this.f13559R);
        Game.f8589i.researchManager.addListener(this.f13560S);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m20401n(ResearchesScreen researchesScreen) {
        try {
            final Research research = researchesScreen.selectedResearch;
            int resetForAcceleratorsState = research.resetForAcceleratorsState();
            if (resetForAcceleratorsState == 0) {
                Array<ItemStack> array = new Array<>(ItemStack.class);
                array.addAll(research.getCumulativePrice(0, research.installedLevel, true));
                Game game = Game.f8589i;
                game.uiManager.dialog.showConfirm(game.localeManager.i18n.format("reset_research_confirm", Integer.valueOf(research.getResetPrice())), new Runnable() { // from class: com.prineside.tdi2.ui.components.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        ResearchMenu.this.m20402m(research);
                    }
                });
                Game.f8589i.uiManager.dialog.setItemsHintForVisibleDialog(array);
                return;
            }
            String str = null;
            if (resetForAcceleratorsState != 1) {
                if (resetForAcceleratorsState != 4) {
                    if (resetForAcceleratorsState == 5) {
                        str = Game.f8589i.localeManager.i18n.get("reset_research_unavailable_NOT_ENOUGH_ACCELERATORS") + " (<@time-accelerator>[#FFC107]" + research.getResetPrice() + "[])";
                    }
                } else {
                    str = Game.f8589i.localeManager.i18n.get("reset_research_unavailable_STAR_BRANCH");
                }
            } else {
                str = Game.f8589i.localeManager.i18n.get("reset_research_unavailable_HAS_CHILD");
            }
            if (str == null) {
                str = Game.f8589i.localeManager.i18n.get("reset_research_unavailable_NOT_SUITABLE");
            }
            Game game2 = Game.f8589i;
            game2.uiManager.dialog.showAlert(game2.assetManager.replaceRegionAliasesWithChars(str));
        } catch (Exception e) {
            Logger.error("ResearchMenu", "failed to reset", e);
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f13561a.removeListener(this.f13558Q);
        this.f13562b.removeListener(this.f13559R);
        Game.f8589i.researchManager.removeListener(this.f13560S);
    }

    public void draw(float f) {
        if (this.f13562b.selectedResearch != null && Game.f8589i.researchManager.getCurrentResearching() == this.f13562b.selectedResearch) {
            float f2 = this.f13549H + f;
            this.f13549H = f2;
            if (f2 > 1.0f) {
                m20396s();
                this.f13549H = 0.0f;
            }
        }
    }

    /* renamed from: o */
    public final void m20400o(boolean z) {
        if (this.f13564k != z) {
            this.f13564k = z;
            if (z) {
                this.f13563d.show();
                m20398q();
                return;
            }
            this.f13563d.hide();
        }
    }

    /* renamed from: p */
    public final void m20399p(ResearchManager.StartResearchingException startResearchingException) {
        StringBuilder stringBuilder = f13541U;
        int i = 0;
        stringBuilder.setLength(0);
        stringBuilder.append(Game.f8589i.localeManager.i18n.get("cant_start_research")).append(":\n");
        while (true) {
            Array<ResearchManager.StartResearchFailReason> array = startResearchingException.reasons;
            if (i >= array.size || i == 2) {
                break;
            }
            f13541U.append(Game.f8589i.localeManager.i18n.get("start_research_fail_reason_" + array.get(i).name())).append("\n");
            i++;
        }
        Game.f8589i.uiManager.dialog.showAlert(f13541U);
    }

    /* JADX WARN: Removed duplicated region for block: B:180:0x0772  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b3  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20398q() {
        /*
            Method dump skipped, instructions count: 2485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.p036ui.components.ResearchMenu.m20398q():void");
    }

    /* renamed from: r */
    public final void m20397r() {
        if (this.f13556O) {
            this.f13575z.setColor(this.f13555N);
        } else if (this.f13557P) {
            this.f13575z.setColor(this.f13554M);
        } else {
            this.f13575z.setColor(this.f13553L);
        }
    }

    /* renamed from: s */
    public final void m20396s() {
        Research currentResearching = Game.f8589i.researchManager.getCurrentResearching();
        if (currentResearching == null) {
            return;
        }
        Game game = Game.f8589i;
        int countAcceleratorsNeeded = game.progressManager.countAcceleratorsNeeded((int) (game.researchManager.getMillisToResearchingEnd() / 1000));
        StringBuilder stringBuilder = f13541U;
        stringBuilder.setLength(0);
        stringBuilder.append(countAcceleratorsNeeded);
        this.f13546E.setText(stringBuilder);
        int millisToResearchingEnd = (int) (Game.f8589i.researchManager.getMillisToResearchingEnd() / 1000);
        this.f13547F.setWidth((1.0f - (millisToResearchingEnd / currentResearching.levels[currentResearching.installedLevel].researchDuration)) * 520.0f);
        this.f13548G.setText(StringFormatter.digestTime(millisToResearchingEnd));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m20403l(Research research) {
        GameStateSystem.deleteSavedGame();
        Game.f8589i.researchManager.resetResearchForAccelerators(research);
        m20398q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m20402m(final Research research) {
        if (GameStateSystem.savedGameExists()) {
            Game game = Game.f8589i;
            game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("saved_game_will_be_lost_confirm"), new Runnable() { // from class: com.prineside.tdi2.ui.components.x
                @Override // java.lang.Runnable
                public final void run() {
                    ResearchMenu.this.m20403l(research);
                }
            });
            return;
        }
        Game.f8589i.researchManager.resetResearchForAccelerators(research);
        m20398q();
    }

    /* renamed from: k */
    public final float m20404k(Array<GameValueManager.GameValueEffect> array, Group group, float f) {
        Array.ArrayIterator<GameValueManager.GameValueEffect> it = array.iterator();
        boolean z = true;
        while (it.hasNext()) {
            GameValueManager.GameValueEffect next = it.next();
            StringBuilder title = Game.f8589i.gameValueManager.getTitle(next.type);
            GameValueManager.ValueUnits units = Game.f8589i.gameValueManager.getUnits(next.type);
            if (!z) {
                f -= 4.0f;
            }
            f -= 52.0f;
            if (units == GameValueManager.ValueUnits.BOOLEAN) {
                if (title.length() > 50) {
                    title.setLength(50);
                    title.append("...");
                }
                Actor image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image.setSize(600.0f, 52.0f);
                image.setPosition(0.0f, f);
                image.setColor(f13540T);
                group.addActor(image);
                Actor label = new Label(title, this.f13565p);
                label.setSize(600.0f, 52.0f);
                label.setPosition(40.0f, f);
                label.setColor(MaterialColor.GREEN.P500);
                group.addActor(label);
            } else {
                if (title.length() > 35) {
                    title.setLength(35);
                    title.append("...");
                }
                Actor image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image2.setSize(455.0f, 52.0f);
                Color color = f13540T;
                image2.setColor(color);
                image2.setPosition(0.0f, f);
                group.addActor(image2);
                Actor image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image3.setColor(color);
                image3.setSize(141.0f, 52.0f);
                image3.setPosition(459.0f, f);
                group.addActor(image3);
                Actor label2 = new Label(title, this.f13565p);
                label2.setSize(410.0f, 52.0f);
                label2.setPosition(40.0f, f);
                label2.setColor(Color.WHITE);
                group.addActor(label2);
                Label label3 = new Label(Game.f8589i.gameValueManager.formatEffectValue(next.delta, units), this.f13565p);
                label3.setSize(101.0f, 52.0f);
                label3.setPosition(459.0f, f);
                label3.setAlignment(16);
                label3.setColor(MaterialColor.GREEN.P500);
                group.addActor(label3);
            }
            z = false;
        }
        return f;
    }
}
