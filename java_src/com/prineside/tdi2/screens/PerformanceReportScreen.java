package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.screens.PerformanceReportScreen;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PerformanceSurvey;
/* loaded from: classes2.dex */
public class PerformanceReportScreen extends Screen {

    /* renamed from: a */
    public final UiManager.UiLayer f11015a;

    /* renamed from: b */
    public final Label f11016b;

    /* renamed from: com.prineside.tdi2.screens.PerformanceReportScreen$2 */
    /* loaded from: classes2.dex */
    public class C21422 implements PerformanceSurvey.PerformanceSurveyListener {
        public C21422() {
        }

        @Override // com.prineside.tdi2.utils.PerformanceSurvey.PerformanceSurveyListener
        public void failed(final String str) {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.h0
                @Override // java.lang.Runnable
                public final void run() {
                    PerformanceReportScreen.C21422.this.m21158c(str);
                }
            });
        }

        @Override // com.prineside.tdi2.utils.PerformanceSurvey.PerformanceSurveyListener
        public void finished(final String str, final boolean z) {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.screens.g0
                @Override // java.lang.Runnable
                public final void run() {
                    PerformanceReportScreen.C21422.this.m21157d(str, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m21158c(String str) {
            PerformanceReportScreen.this.f11015a.getTable().clear();
            new Label("Error: " + str, Game.f8589i.assetManager.getLabelStyle(21)).setColor(MaterialColor.ORANGE.P500);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m21157d(String str, boolean z) {
            PerformanceReportScreen.this.m21161e(str);
            if (z) {
                PerformanceReportScreen.this.m21162d();
            }
        }
    }

    /* renamed from: d */
    public final void m21162d() {
        Game.f8589i.secretCodeManager.applyCode("4k0lop25gwpr1870ik09qkt0vimkjl");
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f11015a);
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void hide() {
        this.f11015a.getTable().setVisible(false);
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void show() {
        this.f11015a.getTable().setVisible(true);
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Color color = Game.f8589i.assetManager.getColor("menu_background");
        Gdx.f3119gl.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        Gdx.f3119gl.glClear(16640);
        if (Game.f8589i.settingsManager.isEscButtonJustPressed()) {
            PerformanceSurvey.stop();
            Game.f8589i.screenManager.goToMainMenu();
            return;
        }
        String str = PerformanceSurvey.currentAction;
        if (str != null) {
            this.f11016b.setText(str);
        }
    }

    /* renamed from: e */
    public final void m21161e(String str) {
        this.f11015a.getTable().clear();
        JsonValue.PrettyPrintSettings prettyPrintSettings = new JsonValue.PrettyPrintSettings();
        prettyPrintSettings.outputType = JsonWriter.OutputType.json;
        prettyPrintSettings.wrapNumericArrays = false;
        prettyPrintSettings.singleLineColumns = 80;
        String prettyPrint = new Json().prettyPrint(str, prettyPrintSettings);
        Table table = new Table();
        Label label = new Label("Thank you for participating! Click here to view global survey results", Game.f8589i.assetManager.getLabelStyle(24));
        label.setTouchable(Touchable.enabled);
        label.setColor(MaterialColor.LIGHT_BLUE.P500);
        label.addListener(new ClickListener() { // from class: com.prineside.tdi2.screens.PerformanceReportScreen.3
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                Gdx.f38302net.openURI("https://dev.prineside.com/performance_report/");
            }
        });
        table.add((Table) label).height(32.0f).padTop(64.0f).row();
        Label label2 = new Label(prettyPrint, new Label.LabelStyle(Game.f8589i.assetManager.getDebugFont(true), Color.WHITE));
        label2.setWrap(true);
        table.add((Table) label2).width(1080.0f).padTop(32.0f).padBottom(160.0f);
        this.f11015a.getTable().add((Table) new ScrollPane(table, Game.f8589i.assetManager.getScrollPaneStyle(0.0f))).grow();
    }

    public PerformanceReportScreen() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 100, "AboutScreen main");
        this.f11015a = addLayer;
        Game.f8589i.musicManager.stopMusic();
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.setAsInputHandler();
        Game.f8589i.uiManager.backButton.setVisible(true).setText(null).setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.PerformanceReportScreen.1
            @Override // java.lang.Runnable
            public void run() {
                PerformanceSurvey.stop();
                Game.f8589i.screenManager.goToMainMenu();
            }
        });
        Table table = new Table();
        Image image = new Image(Game.f8589i.assetManager.getDrawable("loading-icon"));
        image.setOrigin(24.0f, 24.0f);
        image.addAction(Actions.forever(Actions.rotateBy(180.0f, 1.0f)));
        table.add((Table) image).size(48.0f).padRight(12.0f);
        table.add((Table) new Label(Game.f8589i.localeManager.i18n.get("loading..."), Game.f8589i.assetManager.getLabelStyle(30)));
        table.row();
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f11016b = label;
        label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table.add();
        table.add((Table) label).width(10.0f).left();
        addLayer.getTable().add(table);
        PerformanceSurvey.execute(new C21422());
    }
}
