package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.MapPrestigeConfig;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.UiUtils;
/* renamed from: com.prineside.tdi2.ui.components.MapPrestigeOverlay */
/* loaded from: classes2.dex */
public class MapPrestigeOverlay implements Disposable {

    /* renamed from: A */
    public Label f13329A;

    /* renamed from: B */
    public Table f13330B;

    /* renamed from: C */
    public Label f13331C;

    /* renamed from: D */
    public Table f13332D;

    /* renamed from: E */
    public Table f13333E;

    /* renamed from: F */
    public Label f13334F;

    /* renamed from: G */
    public Label f13335G;

    /* renamed from: H */
    public QuadActor f13336H;

    /* renamed from: I */
    public Table f13337I;

    /* renamed from: J */
    public ComplexButton f13338J;

    /* renamed from: K */
    public MapPrestigeConfig f13339K;

    /* renamed from: a */
    public final UiManager.UiLayer f13340a;

    /* renamed from: b */
    public final UiManager.UiLayer f13341b;

    /* renamed from: d */
    public final Group f13342d;

    /* renamed from: k */
    public Image f13343k;
    public ListenerGroup<MapPrestigeOverlayListener> listeners;

    /* renamed from: p */
    public Image[] f13344p;

    /* renamed from: q */
    public Label f13345q;

    /* renamed from: r */
    public Table f13346r;

    /* renamed from: s */
    public Label f13347s;

    /* renamed from: t */
    public Table f13348t;

    /* renamed from: u */
    public Label f13349u;

    /* renamed from: v */
    public Table f13350v;

    /* renamed from: w */
    public Label f13351w;

    /* renamed from: x */
    public Table f13352x;

    /* renamed from: y */
    public Label f13353y;

    /* renamed from: z */
    public Table f13354z;

    /* renamed from: com.prineside.tdi2.ui.components.MapPrestigeOverlay$MapPrestigeOverlayListener */
    /* loaded from: classes2.dex */
    public interface MapPrestigeOverlayListener extends GameListener {
        void prestigeConfirmed();
    }

    public MapPrestigeOverlay() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 175, "MapPrestigeOverlay overlay");
        this.f13340a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 176, "MapPrestigeOverlay main");
        this.f13341b = addLayer2;
        this.listeners = new ListenerGroup<>(MapPrestigeOverlayListener.class);
        this.f13344p = new Image[5];
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setColor(Config.BACKGROUND_COLOR);
        image.getColor().f3889a = 0.78f;
        addLayer.getTable().add((Table) image).expand().fill();
        addLayer.getTable().setTouchable(Touchable.enabled);
        addLayer.getTable().addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.MapPrestigeOverlay.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                MapPrestigeOverlay.this.m20466c(false);
            }
        });
        Group group = new Group();
        group.setOrigin(320.0f, 428.5f);
        addLayer2.getTable().add((Table) group).size(640.0f, 857.0f);
        Group group2 = new Group();
        this.f13342d = group2;
        group2.setOrigin(320.0f, 428.5f);
        group2.setSize(640.0f, 857.0f);
        group.addActor(group2);
        group2.addActor(new QuadActor(new Color(724249599), new float[]{0.0f, 0.0f, 0.0f, 857.0f, 640.0f, 844.0f, 640.0f, 10.0f}));
        QuadActor quadActor = new QuadActor(new Color(724249599), new float[]{0.0f, 3.0f, 0.0f, 187.0f, 252.0f, 190.0f, 249.0f, 0.0f});
        quadActor.setPosition(438.0f, 709.0f);
        group2.addActor(quadActor);
        QuadActor quadActor2 = new QuadActor(new Color(387389439), new float[]{0.0f, 3.0f, 0.0f, 176.0f, 239.0f, 179.0f, 236.0f, 0.0f});
        quadActor2.setPosition(444.0f, 714.0f);
        group2.addActor(quadActor2);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        this.f13343k = image2;
        image2.setSize(236.0f, 173.0f);
        this.f13343k.setPosition(444.0f, 717.0f);
        group2.addActor(this.f13343k);
        Label label = new Label(Game.f8589i.localeManager.i18n.get("gv_title_PRESTIGE_MODE"), Game.f8589i.assetManager.getLabelStyle(36));
        label.setPosition(40.0f, 785.0f);
        label.setSize(100.0f, 27.0f);
        group2.addActor(label);
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("map_prestige_description"), Game.f8589i.assetManager.getLabelStyle(21));
        label2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label2.setSize(100.0f, 16.0f);
        label2.setPosition(40.0f, 759.0f);
        group2.addActor(label2);
        for (int i = 0; i < 5; i++) {
            this.f13344p[i] = new Image(Game.f8589i.assetManager.getDrawable("icon-crown"));
            this.f13344p[i].setSize(32.0f, 32.0f);
            this.f13344p[i].setPosition((i * 36.0f) + 40.0f, 712.0f);
            this.f13342d.addActor(this.f13344p[i]);
        }
        Label label3 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13345q = label3;
        label3.setSize(100.0f, 18.0f);
        this.f13345q.setPosition(227.0f, 719.0f);
        Label label4 = this.f13345q;
        Color color = MaterialColor.LIGHT_BLUE.P300;
        label4.setColor(color);
        this.f13342d.addActor(this.f13345q);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image3.setColor(new Color(623191551));
        image3.setSize(640.0f, 493.0f);
        image3.setPosition(0.0f, 157.0f);
        this.f13342d.addActor(image3);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        image4.setSize(640.0f, 16.0f);
        image4.setPosition(0.0f, 634.0f);
        image4.setColor(0.0f, 0.0f, 0.0f, 0.14f);
        this.f13342d.addActor(image4);
        Image image5 = new Image(Game.f8589i.assetManager.getDrawable("gradient-bottom"));
        image5.setSize(640.0f, 16.0f);
        image5.setPosition(0.0f, 157.0f);
        image5.setColor(0.0f, 0.0f, 0.0f, 0.14f);
        this.f13342d.addActor(image5);
        Label label5 = new Label(Game.f8589i.localeManager.i18n.get("map_price"), Game.f8589i.assetManager.getLabelStyle(24));
        label5.setSize(100.0f, 56.0f);
        label5.setPosition(40.0f, 650.0f);
        this.f13342d.addActor(label5);
        Table table = new Table();
        this.f13346r = table;
        table.setPosition(300.0f, 650.0f);
        this.f13346r.setSize(300.0f, 56.0f);
        this.f13342d.addActor(this.f13346r);
        Image image6 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image6.setColor(0.0f, 0.0f, 0.0f, 0.07f);
        image6.setSize(640.0f, 56.0f);
        image6.setPosition(0.0f, 593.0f);
        this.f13342d.addActor(image6);
        Label label6 = new Label(Game.f8589i.localeManager.i18n.get("map_prestige_base_bonus"), Game.f8589i.assetManager.getLabelStyle(24));
        label6.setSize(100.0f, 56.0f);
        label6.setPosition(40.0f, 593.0f);
        label6.setColor(color);
        this.f13342d.addActor(label6);
        Table table2 = new Table();
        table2.setSize(300.0f, 56.0f);
        table2.setPosition(300.0f, 593.0f);
        this.f13342d.addActor(table2);
        table2.add().height(1.0f).expandX().fillX();
        Label label7 = new Label("50%", Game.f8589i.assetManager.getLabelStyle(24));
        label7.setColor(color);
        table2.add((Table) label7);
        Label label8 = new Label(Game.f8589i.localeManager.i18n.get("map_prestige_difficulty_bonus"), Game.f8589i.assetManager.getLabelStyle(24));
        this.f13347s = label8;
        label8.setSize(100.0f, 56.0f);
        this.f13347s.setPosition(40.0f, 537.0f);
        this.f13342d.addActor(this.f13347s);
        Table table3 = new Table();
        this.f13348t = table3;
        table3.setSize(300.0f, 56.0f);
        this.f13348t.setPosition(300.0f, 537.0f);
        this.f13342d.addActor(this.f13348t);
        Image image7 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image7.setColor(0.0f, 0.0f, 0.0f, 0.07f);
        image7.setSize(640.0f, 56.0f);
        image7.setPosition(0.0f, 481.0f);
        this.f13342d.addActor(image7);
        Label label9 = new Label(Game.f8589i.localeManager.i18n.get("map_prestige_no_abilities"), Game.f8589i.assetManager.getLabelStyle(24));
        this.f13349u = label9;
        label9.setSize(100.0f, 56.0f);
        this.f13349u.setPosition(40.0f, 481.0f);
        this.f13342d.addActor(this.f13349u);
        Table table4 = new Table();
        this.f13350v = table4;
        table4.setSize(300.0f, 56.0f);
        this.f13350v.setPosition(300.0f, 481.0f);
        this.f13342d.addActor(this.f13350v);
        Label label10 = new Label(Game.f8589i.localeManager.i18n.get("map_prestige_no_research"), Game.f8589i.assetManager.getLabelStyle(24));
        this.f13351w = label10;
        label10.setSize(100.0f, 56.0f);
        this.f13351w.setPosition(40.0f, 425.0f);
        this.f13342d.addActor(this.f13351w);
        Table table5 = new Table();
        this.f13352x = table5;
        table5.setSize(300.0f, 56.0f);
        this.f13352x.setPosition(300.0f, 425.0f);
        this.f13342d.addActor(this.f13352x);
        Image image8 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image8.setColor(0.0f, 0.0f, 0.0f, 0.07f);
        image8.setSize(640.0f, 56.0f);
        image8.setPosition(0.0f, 369.0f);
        this.f13342d.addActor(image8);
        Label label11 = new Label(Game.f8589i.localeManager.i18n.get("map_prestige_walkable_platforms"), Game.f8589i.assetManager.getLabelStyle(24));
        this.f13353y = label11;
        label11.setSize(100.0f, 56.0f);
        this.f13353y.setPosition(40.0f, 369.0f);
        this.f13342d.addActor(this.f13353y);
        Table table6 = new Table();
        this.f13354z = table6;
        table6.setSize(300.0f, 56.0f);
        this.f13354z.setPosition(300.0f, 369.0f);
        this.f13342d.addActor(this.f13354z);
        Label label12 = new Label(Game.f8589i.localeManager.i18n.get("map_prestige_no_bounty"), Game.f8589i.assetManager.getLabelStyle(24));
        this.f13329A = label12;
        label12.setSize(100.0f, 56.0f);
        this.f13329A.setPosition(40.0f, 313.0f);
        this.f13342d.addActor(this.f13329A);
        Table table7 = new Table();
        this.f13330B = table7;
        table7.setSize(300.0f, 56.0f);
        this.f13330B.setPosition(300.0f, 313.0f);
        this.f13342d.addActor(this.f13330B);
        Image image9 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image9.setColor(0.0f, 0.0f, 0.0f, 0.07f);
        image9.setSize(640.0f, 56.0f);
        image9.setPosition(0.0f, 257.0f);
        this.f13342d.addActor(image9);
        Label label13 = new Label(Game.f8589i.localeManager.i18n.get("map_prestige_no_miners"), Game.f8589i.assetManager.getLabelStyle(24));
        this.f13331C = label13;
        label13.setSize(100.0f, 56.0f);
        this.f13331C.setPosition(40.0f, 257.0f);
        this.f13342d.addActor(this.f13331C);
        Table table8 = new Table();
        this.f13332D = table8;
        table8.setSize(300.0f, 56.0f);
        this.f13332D.setPosition(300.0f, 257.0f);
        this.f13342d.addActor(this.f13332D);
        Label label14 = new Label(Game.f8589i.localeManager.i18n.get("score"), Game.f8589i.assetManager.getLabelStyle(24));
        label14.setPosition(40.0f, 215.0f);
        label14.setSize(100.0f, 18.0f);
        this.f13342d.addActor(label14);
        Table table9 = new Table();
        this.f13333E = table9;
        table9.setSize(250.0f, 34.0f);
        this.f13333E.setPosition(231.0f, 207.0f);
        this.f13342d.addActor(this.f13333E);
        Label label15 = new Label("", Game.f8589i.assetManager.getLabelStyle(36));
        this.f13334F = label15;
        label15.setSize(71.0f, 27.0f);
        this.f13334F.setPosition(529.0f, 208.0f);
        this.f13334F.setAlignment(16);
        this.f13342d.addActor(this.f13334F);
        Label label16 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13335G = label16;
        label16.setSize(71.0f, 19.0f);
        this.f13335G.setAlignment(16);
        this.f13335G.setPosition(529.0f, 178.0f);
        this.f13335G.setColor(color);
        this.f13342d.addActor(this.f13335G);
        QuadActor quadActor3 = new QuadActor(new Color(0.0f, 0.0f, 0.0f, 0.28f), new float[]{0.0f, 0.0f, 0.0f, 20.0f, 442.0f, 20.0f, 439.0f, 0.0f});
        quadActor3.setPosition(39.0f, 178.0f);
        this.f13342d.addActor(quadActor3);
        QuadActor quadActor4 = new QuadActor(MaterialColor.LIGHT_BLUE.P500, new float[]{0.0f, 0.0f, 0.0f, 20.0f, 442.0f, 20.0f, 439.0f, 0.0f});
        this.f13336H = quadActor4;
        quadActor4.setPosition(39.0f, 178.0f);
        this.f13342d.addActor(this.f13336H);
        Label label17 = new Label(Game.f8589i.localeManager.i18n.get("map_prestige_total"), Game.f8589i.assetManager.getLabelStyle(30));
        label17.setSize(71.0f, 22.0f);
        label17.setPosition(40.0f, 105.0f);
        this.f13342d.addActor(label17);
        Table table10 = new Table();
        this.f13337I = table10;
        table10.setPosition(228.0f, 95.0f);
        this.f13337I.setSize(372.0f, 45.0f);
        this.f13342d.addActor(this.f13337I);
        ComplexButton complexButton = new ComplexButton(Game.f8589i.localeManager.i18n.get("back"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.MapPrestigeOverlay.2
            @Override // java.lang.Runnable
            public void run() {
                MapPrestigeOverlay.this.m20466c(false);
            }
        });
        complexButton.setSize(255.0f, 93.0f);
        complexButton.setBackground(Game.f8589i.assetManager.getDrawable("ui-map-prestige-button-left"), 0.0f, 0.0f, 255.0f, 93.0f);
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-triangle-left"), 18.0f, 19.0f, 48.0f, 48.0f);
        complexButton.setLabel(77.0f, 30.0f, 100.0f, 23.0f, 8);
        complexButton.setPosition(-13.0f, -9.0f);
        this.f13342d.addActor(complexButton);
        ComplexButton complexButton2 = new ComplexButton(Game.f8589i.localeManager.i18n.get("sell_button"), Game.f8589i.assetManager.getLabelStyle(30), new Runnable() { // from class: com.prineside.tdi2.ui.components.MapPrestigeOverlay.3
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.uiManager.dialog.showConfirm(Game.f8589i.localeManager.i18n.format("map_prestige_confirm", Integer.valueOf(MapPrestigeOverlay.this.f13339K.getFinalPrestigeTokens())), new Runnable() { // from class: com.prineside.tdi2.ui.components.MapPrestigeOverlay.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Game.f8589i.userMapManager.prestigeSellMap(MapPrestigeOverlay.this.f13339K);
                        MapPrestigeOverlay mapPrestigeOverlay = MapPrestigeOverlay.this;
                        mapPrestigeOverlay.show(mapPrestigeOverlay.f13339K);
                        MapPrestigeOverlay.this.listeners.begin();
                        for (int i2 = 0; i2 < MapPrestigeOverlay.this.listeners.size(); i2++) {
                            MapPrestigeOverlay.this.listeners.get(i2).prestigeConfirmed();
                        }
                        MapPrestigeOverlay.this.listeners.end();
                    }
                });
                Game.f8589i.uiManager.dialog.makeConfirmButtonDisabled(2);
            }
        });
        this.f13338J = complexButton2;
        complexButton2.setSize(247.0f, 93.0f);
        this.f13338J.setBackground(Game.f8589i.assetManager.getDrawable("ui-map-prestige-button-right"), 0.0f, 0.0f, 247.0f, 93.0f);
        this.f13338J.setIcon(Game.f8589i.assetManager.getDrawable("icon-dollar"), 21.0f, 19.0f, 48.0f, 48.0f);
        this.f13338J.setLabel(80.0f, 30.0f, 100.0f, 23.0f, 8);
        this.f13338J.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, MaterialColor.GREY.P800);
        this.f13338J.setPosition(407.0f, -9.0f);
        this.f13342d.addActor(this.f13338J);
    }

    /* renamed from: c */
    public final void m20466c(boolean z) {
        if (z) {
            UiUtils.bouncyShowOverlay(this.f13340a.getTable(), this.f13341b.getTable(), this.f13342d);
        } else {
            UiUtils.bouncyHideOverlay(this.f13340a.getTable(), this.f13341b.getTable(), this.f13342d);
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13340a);
        Game.f8589i.uiManager.removeLayer(this.f13341b);
    }

    public void show(MapPrestigeConfig mapPrestigeConfig) {
        Logger.log("MapPrestigeOverlay", mapPrestigeConfig.describe());
        this.f13339K = mapPrestigeConfig;
        UserMap userMap = Game.f8589i.userMapManager.getUserMap(mapPrestigeConfig.userMapId);
        int totalBonus = mapPrestigeConfig.getTotalBonus();
        int crownsCount = mapPrestigeConfig.getCrownsCount();
        boolean z = false;
        if (userMap != null) {
            this.f13343k.setVisible(true);
            this.f13343k.setDrawable(new TextureRegionDrawable(userMap.map.getPreview().getTextureRegion()));
        } else {
            this.f13343k.setVisible(false);
            Logger.error("MapPrestigeOverlay", "user map " + mapPrestigeConfig.userMapId + " not found for preview");
        }
        int i = 0;
        while (true) {
            Image[] imageArr = this.f13344p;
            if (i >= imageArr.length) {
                break;
            }
            int i2 = i + 1;
            if (crownsCount >= i2) {
                imageArr[i].setColor(MaterialColor.LIGHT_BLUE.P500);
            } else {
                imageArr[i].setColor(0.0f, 0.0f, 0.0f, 0.56f);
            }
            i = i2;
        }
        Label label = this.f13345q;
        label.setText(totalBonus + "%");
        this.f13346r.clear();
        this.f13346r.add().height(1.0f).expandX().fillX();
        this.f13346r.add((Table) new Image(Game.f8589i.assetManager.getDrawable("icon-crown"))).size(32.0f).padRight(12.0f);
        this.f13346r.add((Table) new Label(((int) mapPrestigeConfig.mapPrice) + "", Game.f8589i.assetManager.getLabelStyle(24)));
        Label label2 = new Label("." + ((int) StrictMath.round((mapPrestigeConfig.mapPrice % 1.0d) * 1000.0d)), Game.f8589i.assetManager.getLabelStyle(21));
        label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f13346r.add((Table) label2).padLeft(4.0f);
        Label label3 = this.f13347s;
        label3.setText(Game.f8589i.localeManager.i18n.get("map_prestige_difficulty_bonus") + " (" + mapPrestigeConfig.averageDifficulty + "%)");
        if (mapPrestigeConfig.getDifficultyBonus() == 0) {
            this.f13347s.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        } else {
            this.f13347s.setColor(MaterialColor.LIGHT_BLUE.P300);
        }
        this.f13348t.clear();
        this.f13348t.add().height(1.0f).expandX().fillX();
        Label label4 = new Label(mapPrestigeConfig.getDifficultyBonus() + "%", Game.f8589i.assetManager.getLabelStyle(24));
        label4.setColor(MaterialColor.LIGHT_BLUE.P500);
        this.f13348t.add((Table) label4);
        if (mapPrestigeConfig.getDifficultyBonus() < 50) {
            Label label5 = new Label("/ 50%", Game.f8589i.assetManager.getLabelStyle(21));
            label5.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            this.f13348t.add((Table) label5).padLeft(6.0f);
        }
        this.f13350v.clear();
        this.f13350v.add().height(1.0f).expandX().fillX();
        Label label6 = new Label("10%", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13350v.add((Table) label6);
        if (mapPrestigeConfig.noAbilities) {
            Label label7 = this.f13349u;
            Color color = MaterialColor.LIGHT_BLUE.P300;
            label7.setColor(color);
            label6.setColor(color);
        } else {
            this.f13349u.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            label6.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        }
        this.f13352x.clear();
        this.f13352x.add().height(1.0f).expandX().fillX();
        Label label8 = new Label("40%", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13352x.add((Table) label8);
        if (mapPrestigeConfig.noResearch) {
            Label label9 = this.f13351w;
            Color color2 = MaterialColor.LIGHT_BLUE.P300;
            label9.setColor(color2);
            label8.setColor(color2);
        } else {
            this.f13351w.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            label8.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        }
        this.f13354z.clear();
        this.f13354z.add().height(1.0f).expandX().fillX();
        Label label10 = new Label("10%", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13354z.add((Table) label10);
        if (mapPrestigeConfig.walkablePlatforms) {
            Label label11 = this.f13353y;
            Color color3 = MaterialColor.LIGHT_BLUE.P300;
            label11.setColor(color3);
            label10.setColor(color3);
        } else {
            this.f13353y.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            label10.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        }
        this.f13330B.clear();
        this.f13330B.add().height(1.0f).expandX().fillX();
        Label label12 = new Label("20%", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13330B.add((Table) label12);
        if (mapPrestigeConfig.noBounty) {
            Label label13 = this.f13329A;
            Color color4 = MaterialColor.LIGHT_BLUE.P300;
            label13.setColor(color4);
            label12.setColor(color4);
        } else {
            this.f13329A.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            label12.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        }
        this.f13332D.clear();
        this.f13332D.add().height(1.0f).expandX().fillX();
        Label label14 = new Label("20%", Game.f8589i.assetManager.getLabelStyle(24));
        this.f13332D.add((Table) label14);
        if (mapPrestigeConfig.noMiners) {
            Label label15 = this.f13331C;
            Color color5 = MaterialColor.LIGHT_BLUE.P300;
            label15.setColor(color5);
            label14.setColor(color5);
        } else {
            this.f13331C.setColor(1.0f, 1.0f, 1.0f, 0.28f);
            label14.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        }
        float maxPrestigeScore = ((float) mapPrestigeConfig.score) / mapPrestigeConfig.getMaxPrestigeScore();
        if (maxPrestigeScore > 1.0f) {
            maxPrestigeScore = 1.0f;
        }
        float f = 439.0f * maxPrestigeScore;
        this.f13336H.setVertexPositions(new float[]{0.0f, 0.0f, 0.0f, 20.0f, f + 3.0f, 20.0f, f, 0.0f});
        int round = StrictMath.round(maxPrestigeScore * 100.0f);
        Label label16 = this.f13334F;
        label16.setText("x" + (round / 100) + "." + ((round % 100) / 10) + (round % 10));
        Label label17 = this.f13335G;
        StringBuilder sb = new StringBuilder();
        sb.append("=");
        sb.append(totalBonus);
        sb.append("%");
        label17.setText(sb.toString());
        this.f13333E.clear();
        this.f13333E.add().height(1.0f).expandX().fillX();
        Label label18 = new Label(StringFormatter.commaSeparatedNumber(mapPrestigeConfig.score), Game.f8589i.assetManager.getLabelStyle(24));
        Color color6 = MaterialColor.LIGHT_BLUE.P300;
        label18.setColor(color6);
        this.f13333E.add((Table) label18);
        this.f13333E.add((Table) new Label("/ " + ((Object) StringFormatter.commaSeparatedNumber(mapPrestigeConfig.getMaxPrestigeScore())), Game.f8589i.assetManager.getLabelStyle(21))).padLeft(12.0f);
        this.f13337I.clear();
        this.f13337I.add().height(1.0f).expandX().fillX();
        Label label19 = new Label(((int) mapPrestigeConfig.mapPrice) + "." + StrictMath.round((mapPrestigeConfig.mapPrice % 1.0d) * 1000.0d) + " + " + totalBonus + "% = ", Game.f8589i.assetManager.getLabelStyle(24));
        label19.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f13337I.add((Table) label19);
        this.f13337I.add((Table) new Image(Game.f8589i.assetManager.getDrawable("prestige-token"))).size(48.0f);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(mapPrestigeConfig.getFinalPrestigeTokens());
        sb2.append("");
        Label label20 = new Label(sb2.toString(), Game.f8589i.assetManager.getLabelStyle(36));
        label20.setColor(color6);
        this.f13337I.add((Table) label20).padLeft(8.0f);
        if (mapPrestigeConfig.getFinalPrestigeTokens() > 0 && Game.f8589i.userMapManager.getUserMap(mapPrestigeConfig.userMapId) != null) {
            z = true;
        }
        this.f13338J.setEnabled(z);
        m20466c(true);
    }
}
