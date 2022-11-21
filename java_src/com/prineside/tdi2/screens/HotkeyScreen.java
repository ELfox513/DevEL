package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.InputMultiplexer;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.utils.InputVoid;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class HotkeyScreen extends Screen {

    /* renamed from: j */
    public static final int[] f10695j;

    /* renamed from: a */
    public final UiManager.UiLayer f10696a;

    /* renamed from: b */
    public final UiManager.UiLayer f10697b;

    /* renamed from: c */
    public final UiManager.UiLayer f10698c;

    /* renamed from: d */
    public final UiManager.UiLayer f10699d;

    /* renamed from: e */
    public Table f10700e;

    /* renamed from: f */
    public Table f10701f;

    /* renamed from: g */
    public Label f10702g;

    /* renamed from: h */
    public IntArray f10703h;

    /* renamed from: i */
    public SettingsManager.HotkeyAction f10704i;

    static {
        int[] iArr = {129, 130, 59, 60, 57, 58};
        f10695j = iArr;
        Arrays.sort(iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m21313h() {
        m21308m(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m21311j(SettingsManager.HotkeyAction hotkeyAction) {
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        settingsManager.setHotKey(hotkeyAction, settingsManager.getDefaultHotKey(hotkeyAction));
        m21307n();
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f10696a);
        Game.f8589i.uiManager.removeLayer(this.f10697b);
        Game.f8589i.uiManager.removeLayer(this.f10699d);
        Game.f8589i.uiManager.removeLayer(this.f10698c);
    }

    @Override // com.prineside.tdi2.Screen
    public void draw(float f) {
        Color color = Game.f8589i.assetManager.getColor("menu_background");
        Gdx.f3119gl.glClearColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        Gdx.f3119gl.glClear(16640);
        if (Game.f8589i.settingsManager.isEscButtonJustPressed()) {
            m21314g();
        }
    }

    /* renamed from: g */
    public final void m21314g() {
        if (this.f10704i == null) {
            Game.f8589i.screenManager.goToSettingsScreen();
        } else {
            m21308m(false);
        }
    }

    /* renamed from: k */
    public final void m21310k(IntArray intArray) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < intArray.size; i++) {
            if (Arrays.binarySearch(f10695j, intArray.items[i]) >= 0) {
                if (stringBuilder.length != 0) {
                    stringBuilder.append(" + ");
                }
                String keys = Input.Keys.toString(intArray.items[i]);
                if (keys.startsWith("L-")) {
                    keys = keys.substring(2);
                }
                stringBuilder.append(keys);
            }
        }
        for (int i2 = 0; i2 < intArray.size; i2++) {
            if (Arrays.binarySearch(f10695j, intArray.items[i2]) < 0) {
                if (stringBuilder.length != 0) {
                    stringBuilder.append(" + ");
                }
                stringBuilder.append(Input.Keys.toString(intArray.items[i2]));
            }
        }
        this.f10702g.setText(stringBuilder);
    }

    /* renamed from: l */
    public final void m21312i(SettingsManager.HotkeyAction hotkeyAction) {
        this.f10703h.clear();
        m21310k(new IntArray(Game.f8589i.settingsManager.getHotKey(hotkeyAction)));
        this.f10698c.getTable().setVisible(true);
        this.f10699d.getTable().setVisible(true);
        this.f10704i = hotkeyAction;
        InputMultiplexer inputMultiplexer = new InputMultiplexer();
        inputMultiplexer.addProcessor(new InputAdapter() { // from class: com.prineside.tdi2.screens.HotkeyScreen.1

            /* renamed from: a */
            public IntArray f10705a = new IntArray();

            @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
            public boolean keyDown(int i) {
                if (i != 4 && i != 111) {
                    if (!this.f10705a.contains(i)) {
                        this.f10705a.add(i);
                    }
                    HotkeyScreen.this.f10703h.clear();
                    HotkeyScreen.this.f10703h.addAll(this.f10705a);
                    HotkeyScreen.this.m21310k(this.f10705a);
                    return true;
                }
                return false;
            }

            @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
            public boolean keyUp(int i) {
                this.f10705a.removeValue(i);
                HotkeyScreen hotkeyScreen = HotkeyScreen.this;
                hotkeyScreen.m21310k(hotkeyScreen.f10703h);
                return false;
            }
        });
        inputMultiplexer.addProcessor(Game.f8589i.uiManager.stage);
        Gdx.input.setInputProcessor(inputMultiplexer);
        Game.f8589i.uiManager.forwardButton.setVisible(true).setText(null).setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.n
            @Override // java.lang.Runnable
            public final void run() {
                HotkeyScreen.this.m21313h();
            }
        });
    }

    /* renamed from: m */
    public final void m21308m(boolean z) {
        if (z) {
            IntArray intArray = this.f10703h;
            if (intArray.size != 0) {
                Game.f8589i.settingsManager.setHotKey(this.f10704i, intArray.toArray());
            }
        }
        this.f10698c.getTable().setVisible(false);
        this.f10699d.getTable().setVisible(false);
        this.f10704i = null;
        Game.f8589i.uiManager.setAsInputHandler();
        Game.f8589i.uiManager.forwardButton.setVisible(false);
        m21307n();
    }

    /* renamed from: n */
    public final void m21307n() {
        SettingsManager.HotkeyAction[] hotkeyActionArr;
        this.f10701f.clear();
        for (final SettingsManager.HotkeyAction hotkeyAction : SettingsManager.HotkeyAction.values) {
            String hotkeyGroupTitle = Game.f8589i.settingsManager.getHotkeyGroupTitle(hotkeyAction);
            if (hotkeyGroupTitle != null) {
                Label label = new Label(hotkeyGroupTitle, Game.f8589i.assetManager.getLabelStyle(30));
                label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                this.f10701f.add((Table) label).height(64.0f).padTop(16.0f).row();
            }
            Group group = new Group();
            group.setTransform(false);
            group.setSize(800.0f, 48.0f);
            this.f10701f.add((Table) group).padBottom(4.0f).row();
            Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image.setSize(800.0f, 48.0f);
            image.setColor(0.0f, 0.0f, 0.0f, 0.21f);
            group.addActor(image);
            Label label2 = new Label(Game.f8589i.settingsManager.getHotKeyName(hotkeyAction), Game.f8589i.assetManager.getLabelStyle(24));
            label2.setPosition(10.0f, 0.0f);
            label2.setSize(200.0f, 48.0f);
            group.addActor(label2);
            StringBuilder stringBuilder = new StringBuilder();
            int[] hotKey = Game.f8589i.settingsManager.getHotKey(hotkeyAction);
            for (int i = 0; i < hotKey.length; i++) {
                if (i != 0) {
                    stringBuilder.append(" + ");
                }
                String keys = Input.Keys.toString(hotKey[i]);
                if (keys.startsWith("L-")) {
                    keys = keys.substring(2);
                }
                stringBuilder.append(keys);
            }
            RectButton rectButton = new RectButton(stringBuilder, Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.screens.l
                @Override // java.lang.Runnable
                public final void run() {
                    HotkeyScreen.this.m21312i(hotkeyAction);
                }
            });
            rectButton.setSize(192.0f, 48.0f);
            rectButton.setPosition(412.0f, 0.0f);
            group.addActor(rectButton);
            RectButton rectButton2 = new RectButton(Game.f8589i.localeManager.i18n.get("reset"), Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.screens.m
                @Override // java.lang.Runnable
                public final void run() {
                    HotkeyScreen.this.m21311j(hotkeyAction);
                }
            });
            rectButton2.setSize(192.0f, 48.0f);
            rectButton2.setPosition(608.0f, 0.0f);
            group.addActor(rectButton2);
            if (Game.f8589i.settingsManager.isDefaultHotKey(hotkeyAction)) {
                rectButton2.setEnabled(false);
            }
        }
        this.f10701f.add().height(128.0f).width(1.0f).row();
    }

    public HotkeyScreen() {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 100, "HotkeyScreen main");
        this.f10696a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 101, "HotkeyScreen gradient");
        this.f10697b = addLayer2;
        UiManager.UiLayer addLayer3 = Game.f8589i.uiManager.addLayer(mainUiLayer, 102, "HotkeyScreen hotkey tint");
        this.f10698c = addLayer3;
        UiManager.UiLayer addLayer4 = Game.f8589i.uiManager.addLayer(mainUiLayer, 103, "HotkeyScreen hotkey");
        this.f10699d = addLayer4;
        this.f10703h = new IntArray();
        this.f10704i = null;
        Game.f8589i.musicManager.continuePlayingMenuMusicTrack();
        Game.f8589i.uiManager.hideAllComponents();
        Game.f8589i.uiManager.setAsInputHandler();
        Game game = Game.f8589i;
        game.uiManager.screenTitle.setIcon(game.assetManager.getDrawable("icon-wrench")).setText(Game.f8589i.localeManager.i18n.get("hotkey_editor_title")).setVisible(true);
        Game.f8589i.uiManager.backButton.setVisible(true).setText(null).setClickHandler(new Runnable() { // from class: com.prineside.tdi2.screens.k
            @Override // java.lang.Runnable
            public final void run() {
                HotkeyScreen.this.m21314g();
            }
        });
        this.f10700e = new Table();
        ScrollPane scrollPane = new ScrollPane(this.f10700e, Game.f8589i.assetManager.getScrollPaneStyle(16.0f));
        scrollPane.setScrollingDisabled(true, false);
        addLayer.getTable().add((Table) scrollPane).expand().fill();
        Image image = new Image(Game.f8589i.assetManager.getDrawable("gradient-top"));
        Color color = Config.BACKGROUND_COLOR;
        image.setColor(color);
        addLayer2.getTable().setTouchable(Touchable.disabled);
        addLayer2.getTable().add((Table) image).expandX().fillX().height(128.0f).row();
        addLayer2.getTable().add().expand().fill().row();
        this.f10700e.add().height(128.0f).fillX().expandX().row();
        Table table = new Table();
        this.f10701f = table;
        this.f10700e.add(table).expandX().fillX();
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image2.setColor(color);
        image2.getColor().f3889a = 0.78f;
        addLayer3.getTable().add((Table) image2).expand().fill();
        addLayer3.getTable().setTouchable(Touchable.enabled);
        addLayer3.getTable().addListener(new InputVoid());
        addLayer3.getTable().setVisible(false);
        this.f10702g = new Label("ABC", Game.f8589i.assetManager.getLabelStyle(36));
        addLayer4.getTable().add((Table) this.f10702g);
        addLayer4.getTable().setVisible(false);
        m21307n();
    }
}
