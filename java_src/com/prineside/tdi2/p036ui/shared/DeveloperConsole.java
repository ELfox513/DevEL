package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.ScriptManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.screens.GameScreen;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.QuadDrawable;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
/* renamed from: com.prineside.tdi2.ui.shared.DeveloperConsole */
/* loaded from: classes2.dex */
public class DeveloperConsole implements Disposable {

    /* renamed from: B */
    public static final Color f14138B;

    /* renamed from: C */
    public static final Color f14139C;

    /* renamed from: D */
    public static final Color f14140D;

    /* renamed from: E */
    public static final Color f14141E;

    /* renamed from: F */
    public static final Color[] f14142F;

    /* renamed from: G */
    public static final Calendar f14143G;

    /* renamed from: H */
    public static final StringBuilder f14144H;

    /* renamed from: A */
    public final _LoggerListener f14145A;

    /* renamed from: a */
    public final UiManager.UiLayer f14146a;

    /* renamed from: b */
    public final UiManager.UiLayer f14147b;

    /* renamed from: d */
    public boolean f14148d;

    /* renamed from: k */
    public Table f14149k;

    /* renamed from: p */
    public Group f14150p;

    /* renamed from: q */
    public TextField f14151q;

    /* renamed from: r */
    public Table f14152r;

    /* renamed from: s */
    public ScrollPane f14153s;

    /* renamed from: t */
    public Array<LogLine> f14154t = new Array<>(LogLine.class);

    /* renamed from: u */
    public Label.LabelStyle f14155u;

    /* renamed from: v */
    public Label.LabelStyle f14156v;

    /* renamed from: w */
    public Label.LabelStyle f14157w;

    /* renamed from: x */
    public final CustomSettingsUI[] f14158x;

    /* renamed from: y */
    public int f14159y;

    /* renamed from: z */
    public final Array<String> f14160z;

    /* renamed from: com.prineside.tdi2.ui.shared.DeveloperConsole$CustomSettingsUI */
    /* loaded from: classes2.dex */
    public class CustomSettingsUI {

        /* renamed from: a */
        public TextFieldXPlatform f14174a;

        /* renamed from: b */
        public LabelToggleButton f14175b;

        public CustomSettingsUI() {
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.DeveloperConsole$LogLine */
    /* loaded from: classes2.dex */
    public class LogLine extends Table {

        /* renamed from: x0 */
        public Label f14178x0;

        /* renamed from: y0 */
        public Label f14179y0;

        /* renamed from: z0 */
        public Label f14180z0;

        public LogLine() {
            Label label = new Label("", DeveloperConsole.this.f14155u);
            this.f14180z0 = label;
            label.setTouchable(Touchable.enabled);
            this.f14180z0.setAlignment(10);
            add((LogLine) this.f14180z0).top().left().width(120.0f);
            Label label2 = new Label("", DeveloperConsole.this.f14156v);
            this.f14178x0 = label2;
            Touchable touchable = Touchable.disabled;
            label2.setTouchable(touchable);
            this.f14178x0.setAlignment(10);
            add((LogLine) this.f14178x0).top().left().width(200.0f);
            Label label3 = new Label("", DeveloperConsole.this.f14157w);
            this.f14179y0 = label3;
            label3.setTouchable(touchable);
            this.f14179y0.setAlignment(10);
            this.f14179y0.setWrap(true);
            add((LogLine) this.f14179y0).expandX().fill();
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.DeveloperConsole$_LoggerListener */
    /* loaded from: classes2.dex */
    public class _LoggerListener implements Logger.LoggerListener {
        public _LoggerListener() {
        }

        @Override // com.prineside.tdi2.Logger.LoggerListener
        public void newEntry(Logger.LogEntry logEntry) {
            Color color;
            if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_CONSOLE_DISABLED) == 0.0d) {
                DeveloperConsole developerConsole = DeveloperConsole.this;
                if (logEntry.entryType == Logger.EntryType.ERROR) {
                    color = DeveloperConsole.f14141E;
                } else {
                    color = DeveloperConsole.f14140D;
                }
                developerConsole.m20193q(logEntry, color);
            }
        }
    }

    /* renamed from: i */
    public static /* synthetic */ int m20201i(DeveloperConsole developerConsole) {
        int i = developerConsole.f14159y;
        developerConsole.f14159y = i + 1;
        return i;
    }

    /* renamed from: j */
    public static /* synthetic */ int m20200j(DeveloperConsole developerConsole) {
        int i = developerConsole.f14159y;
        developerConsole.f14159y = i - 1;
        return i;
    }

    public boolean isCustomSettingsVisible() {
        return this.f14150p.isVisible();
    }

    /* renamed from: s */
    public final int m20191s() {
        int round = MathUtils.round((float) Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_CONSOLE_LINE_COUNT));
        if (round <= 1) {
            return 100;
        }
        return round;
    }

    /* renamed from: t */
    public final void m20190t() {
        this.f14153s.fling(0.3f, 0.0f, -1000000.0f);
    }

    public void toggleVisible() {
        setVisible(!this.f14148d);
    }

    static {
        Color color = MaterialColor.BLUE_GREY.P300;
        f14138B = color;
        f14139C = MaterialColor.BLUE_GREY.P500;
        f14140D = Color.WHITE;
        Color color2 = MaterialColor.RED.P300;
        f14141E = color2;
        f14142F = new Color[]{MaterialColor.BLUE.P300, color, MaterialColor.GREEN.P300, MaterialColor.PURPLE.P300, MaterialColor.YELLOW.P300, MaterialColor.LIGHT_BLUE.P300, MaterialColor.GREY.P300, MaterialColor.CYAN.P300, MaterialColor.ORANGE.P300, MaterialColor.INDIGO.P300, color2, MaterialColor.TEAL.P300, MaterialColor.AMBER.P300, MaterialColor.PINK.P300, MaterialColor.LIME.P300, MaterialColor.LIGHT_GREEN.P300, MaterialColor.DEEP_PURPLE.P300, MaterialColor.DEEP_ORANGE.P300, MaterialColor.BROWN.P300};
        f14143G = new GregorianCalendar();
        f14144H = new StringBuilder();
    }

    public DeveloperConsole() {
        Color color;
        boolean z;
        SettingsManager.CustomValueType[] customValueTypeArr = SettingsManager.CustomValueType.values;
        this.f14158x = new CustomSettingsUI[customValueTypeArr.length];
        this.f14159y = -1;
        this.f14160z = new Array<>();
        C27351 c27351 = null;
        this.f14145A = new _LoggerListener();
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.OVERLAY;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 9001, "DeveloperConsole main");
        this.f14147b = addLayer;
        this.f14146a = Game.f8589i.uiManager.addLayer(mainUiLayer, 9001, "DeveloperConsole toggle button");
        this.f14155u = new Label.LabelStyle(Game.f8589i.assetManager.getDebugFont(false), new Color(1.0f, 1.0f, 1.0f, 0.56f));
        BitmapFont debugFont = Game.f8589i.assetManager.getDebugFont(false);
        Color color2 = Color.WHITE;
        this.f14156v = new Label.LabelStyle(debugFont, color2);
        this.f14157w = new Label.LabelStyle(Game.f8589i.assetManager.getDebugFont(false), color2);
        addLayer.getTable().setBackground(new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(new Color(640825548)));
        WidgetGroup widgetGroup = new WidgetGroup();
        widgetGroup.setTransform(false);
        addLayer.getTable().add((Table) widgetGroup).expand().fill();
        Table table = new Table();
        this.f14152r = table;
        widgetGroup.addActor(table);
        Group group = new Group();
        this.f14150p = group;
        group.setTransform(false);
        this.f14150p.setSize(560.0f, 400.0f);
        this.f14150p.setPosition(0.0f, (((Game.f8589i.settingsManager.getScaledViewportHeight() - 132.0f) - 60.0f) - 60.0f) - 400.0f);
        this.f14150p.setVisible(false);
        widgetGroup.addActor(this.f14150p);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setSize(560.0f, 400.0f);
        image.setColor(0.0f, 0.0f, 0.0f, 0.78f);
        this.f14150p.addActor(image);
        Table table2 = new Table();
        String str = "blank";
        TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(Game.f8589i.assetManager.getFont(21, false), color2, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.BLUE.P500), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(MaterialColor.GREY.P900));
        float f = 2.0f;
        textFieldStyle.cursor.setMinWidth(2.0f);
        Drawable drawable = textFieldStyle.background;
        drawable.setLeftWidth(drawable.getLeftWidth() + 5.0f);
        Drawable drawable2 = textFieldStyle.background;
        drawable2.setRightWidth(drawable2.getRightWidth() + 5.0f);
        int length = customValueTypeArr.length;
        int i = 0;
        while (i < length) {
            final SettingsManager.CustomValueType customValueType = customValueTypeArr[i];
            final CustomSettingsUI customSettingsUI = new CustomSettingsUI();
            this.f14158x[customValueType.ordinal()] = customSettingsUI;
            String name = customValueType.name();
            if (Game.f8589i.settingsManager.getCustomValue(customValueType) != 0.0d) {
                z = true;
            } else {
                z = false;
            }
            LabelToggleButton labelToggleButton = new LabelToggleButton(name, z, 21, 24.0f, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.shared.DeveloperConsole.1
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(Boolean bool) {
                    if (bool.booleanValue()) {
                        Game.f8589i.settingsManager.setCustomValue(customValueType, 1.0d);
                    } else {
                        Game.f8589i.settingsManager.setCustomValue(customValueType, 0.0d);
                    }
                    TextFieldXPlatform textFieldXPlatform = customSettingsUI.f14174a;
                    textFieldXPlatform.setText(Game.f8589i.settingsManager.getCustomValue(customValueType) + "");
                }
            });
            customSettingsUI.f14175b = labelToggleButton;
            table2.add(labelToggleButton).size(460.0f, 24.0f).padBottom(f);
            TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(Game.f8589i.settingsManager.getCustomValue(customValueType) + "", textFieldStyle);
            customSettingsUI.f14174a = textFieldXPlatform;
            textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.DeveloperConsole.2
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    boolean z2;
                    try {
                        double doubleValue = Double.valueOf(customSettingsUI.f14174a.getText()).doubleValue();
                        Game.f8589i.settingsManager.setCustomValue(customValueType, doubleValue);
                        LabelToggleButton labelToggleButton2 = customSettingsUI.f14175b;
                        if (doubleValue != 0.0d) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        labelToggleButton2.setEnabled(z2);
                    } catch (Exception unused) {
                    }
                }
            });
            table2.add((Table) customSettingsUI.f14174a).size(80.0f, 24.0f).padBottom(2.0f).row();
            i++;
            str = str;
            c27351 = null;
            f = 2.0f;
        }
        String str2 = str;
        ScrollPane scrollPane = new ScrollPane(table2);
        scrollPane.setSize(540.0f, 400.0f);
        scrollPane.setPosition(10.0f, 0.0f);
        this.f14150p.addActor(scrollPane);
        ComplexButton complexButton = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.DeveloperConsole.3
            @Override // java.lang.Runnable
            public void run() {
                DeveloperConsole developerConsole = DeveloperConsole.this;
                developerConsole.setCustomSettingsVisible(!developerConsole.isCustomSettingsVisible());
            }
        });
        Color color3 = Color.WHITE;
        complexButton.setBackground(new QuadDrawable(new QuadActor(color3, new float[]{0.0f, 0.0f, 0.0f, 48.0f, 80.0f, 48.0f, 72.0f, 0.0f})), 0.0f, 0.0f, 80.0f, 48.0f);
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-tools"), 24.0f, 8.0f, 32.0f, 32.0f);
        Color color4 = MaterialColor.DEEP_ORANGE.P800;
        Color color5 = MaterialColor.DEEP_ORANGE.P900;
        Color color6 = MaterialColor.DEEP_ORANGE.P700;
        Color color7 = Color.BLACK;
        complexButton.setBackgroundColors(color4, color5, color6, color7);
        complexButton.setSize(80.0f, 48.0f);
        complexButton.setPosition(0.0f, ((Game.f8589i.settingsManager.getScaledViewportHeight() - 132.0f) - 60.0f) - 48.0f);
        widgetGroup.addActor(complexButton);
        ComplexButton complexButton2 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.DeveloperConsole.4
            @Override // java.lang.Runnable
            public void run() {
                Game.f8589i.uiManager.itemCreationOverlay.show();
                DeveloperConsole.this.setVisible(false);
            }
        });
        complexButton2.setBackground(new QuadDrawable(new QuadActor(color3, new float[]{0.0f, 0.0f, 0.0f, 48.0f, 80.0f, 48.0f, 72.0f, 0.0f})), 0.0f, 0.0f, 80.0f, 48.0f);
        complexButton2.setIcon(Game.f8589i.assetManager.getDrawable("icon-backpack"), 24.0f, 8.0f, 32.0f, 32.0f);
        complexButton2.setBackgroundColors(MaterialColor.LIGHT_GREEN.P800, MaterialColor.LIGHT_GREEN.P900, MaterialColor.LIGHT_GREEN.P700, color7);
        complexButton2.setSize(80.0f, 48.0f);
        complexButton2.setPosition(0.0f, (Game.f8589i.settingsManager.getScaledViewportHeight() - 132.0f) + 12.0f);
        widgetGroup.addActor(complexButton2);
        this.f14149k = new Table();
        ScrollPane scrollPane2 = new ScrollPane(this.f14149k, Game.f8589i.assetManager.getScrollPaneStyle(16.0f));
        this.f14153s = scrollPane2;
        this.f14152r.add((Table) scrollPane2).expand().fill().row();
        Drawable tint = new TextureRegionDrawable(Game.f8589i.assetManager.getTextureRegion(str2)).tint(new Color(1.0f, 1.0f, 1.0f, 1.0f));
        tint.setMinWidth(3.0f);
        TextField.TextFieldStyle textFieldStyle2 = new TextField.TextFieldStyle(Game.f8589i.assetManager.getFont(24, false), color3, tint, new TextureRegionDrawable(Game.f8589i.assetManager.getTextureRegion(str2)).tint(new Color(0.1f, 0.25f, 0.35f, 1.0f)), new TextureRegionDrawable(Game.f8589i.assetManager.getTextureRegion(str2)).tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)));
        textFieldStyle2.background.setLeftWidth(textFieldStyle.background.getLeftWidth() + 6.0f);
        textFieldStyle2.background.setRightWidth(textFieldStyle.background.getRightWidth() + 6.0f);
        TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform("", textFieldStyle2);
        this.f14151q = textFieldXPlatform2;
        this.f14152r.add((Table) textFieldXPlatform2).expandX().fillX().height(64.0f).padTop(8.0f).row();
        this.f14151q.addListener(new InputListener() { // from class: com.prineside.tdi2.ui.shared.DeveloperConsole.5
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean keyTyped(InputEvent inputEvent, char c) {
                if (c != '\r' && c != '\n') {
                    if (inputEvent.getKeyCode() == 19) {
                        if (DeveloperConsole.this.f14160z.size == 0) {
                            return false;
                        }
                        DeveloperConsole.m20201i(DeveloperConsole.this);
                        if (DeveloperConsole.this.f14159y >= DeveloperConsole.this.f14160z.size) {
                            DeveloperConsole developerConsole = DeveloperConsole.this;
                            developerConsole.f14159y = developerConsole.f14160z.size - 1;
                        }
                        DeveloperConsole.this.f14151q.setText((String) DeveloperConsole.this.f14160z.get(DeveloperConsole.this.f14159y));
                        DeveloperConsole.this.f14151q.setCursorPosition(9999);
                    } else if (inputEvent.getKeyCode() != 20 || DeveloperConsole.this.f14160z.size == 0) {
                        return false;
                    } else {
                        DeveloperConsole.m20200j(DeveloperConsole.this);
                        if (DeveloperConsole.this.f14159y < 0) {
                            DeveloperConsole.this.f14159y = 0;
                        }
                        DeveloperConsole.this.f14151q.setText((String) DeveloperConsole.this.f14160z.get(DeveloperConsole.this.f14159y));
                        DeveloperConsole.this.f14151q.setCursorPosition(9999);
                    }
                    return false;
                }
                DeveloperConsole.this.m20189u();
                Gdx.input.setOnscreenKeyboardVisible(true);
                return false;
            }
        });
        Game.f8589i.addScreenResizeListener(new Game.ScreenResizeListener.ScreenResizeListenerAdapter() { // from class: com.prineside.tdi2.ui.shared.DeveloperConsole.6
            @Override // com.prineside.tdi2.Game.ScreenResizeListener.ScreenResizeListenerAdapter, com.prineside.tdi2.Game.ScreenResizeListener
            public void resize(int i2, int i3) {
                if (i2 <= 0 || i3 <= 0) {
                    return;
                }
                DeveloperConsole.this.m20188v();
            }

            @Override // com.prineside.tdi2.Game.ScreenResizeListener.ScreenResizeListenerAdapter, com.prineside.tdi2.Game.ScreenResizeListener
            public void visibleDisplayFrameChanged() {
                DeveloperConsole.this.m20188v();
            }
        });
        Array<Logger.LogEntry> log = Logger.getLog(m20191s(), false);
        for (int i2 = log.size - 1; i2 >= 0; i2--) {
            Logger.LogEntry logEntry = log.get(i2);
            if (log.get(i2).entryType == Logger.EntryType.ERROR) {
                color = f14141E;
            } else {
                color = f14140D;
            }
            m20193q(logEntry, color);
        }
        Logger.addListener(this.f14145A);
        ComplexButton complexButton3 = new ComplexButton("", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.ui.shared.DeveloperConsole.7
            @Override // java.lang.Runnable
            public void run() {
                DeveloperConsole developerConsole = DeveloperConsole.this;
                developerConsole.setVisible(!developerConsole.f14148d);
            }
        });
        complexButton3.setBackground(new QuadDrawable(new QuadActor(Color.WHITE, new float[]{0.0f, 0.0f, 0.0f, 48.0f, 80.0f, 48.0f, 72.0f, 0.0f})), 0.0f, 0.0f, 80.0f, 48.0f);
        complexButton3.setIcon(Game.f8589i.assetManager.getDrawable("icon-terminal"), 24.0f, 8.0f, 32.0f, 32.0f);
        complexButton3.setBackgroundColors(MaterialColor.BLUE_GREY.P700, MaterialColor.BLUE_GREY.P800, MaterialColor.BLUE_GREY.P600, Color.BLACK);
        this.f14146a.getTable().add((Table) complexButton3).expand().top().left().size(80.0f, 48.0f).padTop(132.0f);
        setVisible(false);
        m20188v();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f14147b);
        Game.f8589i.uiManager.removeLayer(this.f14146a);
        Logger.removeListener(this.f14145A);
    }

    /* renamed from: p */
    public final LogLine m20194p(Date date, String str, String str2, Color color, final String str3) {
        LogLine logLine;
        String str4;
        if (this.f14154t.size >= m20191s()) {
            logLine = this.f14154t.removeIndex(0);
            this.f14154t.add(logLine);
            this.f14149k.getCells().removeValue(this.f14149k.getCell(logLine), true);
            this.f14149k.invalidate();
        } else {
            logLine = new LogLine();
            this.f14154t.add(logLine);
        }
        if (date != null) {
            Calendar calendar = f14143G;
            calendar.setTime(date);
            int i = calendar.get(11);
            int i2 = calendar.get(12);
            int i3 = calendar.get(13);
            StringBuilder stringBuilder = f14144H;
            stringBuilder.setLength(0);
            if (i < 10) {
                stringBuilder.append('0');
            }
            stringBuilder.append(i).append(':');
            if (i2 < 10) {
                stringBuilder.append('0');
            }
            stringBuilder.append(i2).append(':');
            if (i3 < 10) {
                stringBuilder.append('0');
            }
            stringBuilder.append(i3);
            logLine.f14180z0.setText(stringBuilder);
            logLine.f14180z0.setVisible(true);
        } else {
            logLine.f14180z0.setVisible(false);
        }
        if (str != null) {
            if (str.length() > 20) {
                str4 = str.substring(0, 20) + "...";
            } else {
                str4 = str;
            }
            logLine.f14178x0.setColor(m20192r(str));
            logLine.f14178x0.setText(str4);
            logLine.f14178x0.setVisible(true);
        } else {
            logLine.f14178x0.setVisible(false);
        }
        if (str2 != null && str2.contains("\n")) {
            logLine.f14179y0.setText(str2.split("\n")[0]);
        } else {
            logLine.f14179y0.setText(str2);
        }
        logLine.f14179y0.setColor(color);
        logLine.f14180z0.clearListeners();
        if (str3 != null) {
            logLine.f14180z0.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.DeveloperConsole.8
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    Gdx.app.getClipboard().setContents(str3);
                    Game.f8589i.uiManager.notifications.add("Copied to the clipboard!", null, null, null);
                }
            });
        }
        this.f14149k.add(logLine).expandX().fill().pad(2.0f).row();
        return logLine;
    }

    /* renamed from: q */
    public final void m20193q(Logger.LogEntry logEntry, Color color) {
        boolean z;
        boolean z2 = true;
        if (this.f14153s.getScrollPercentY() > 0.99f) {
            z = true;
        } else {
            z = false;
        }
        String[] split = logEntry.message.split("\n");
        int length = split.length;
        int i = 0;
        while (i < length) {
            String str = split[i];
            if (z2) {
                m20194p(logEntry.date, logEntry.tag, str, color, logEntry.message);
            } else {
                m20194p(null, null, str, color, logEntry.message);
            }
            i++;
            z2 = false;
        }
        Throwable th = logEntry.throwable;
        if (th != null) {
            m20194p(null, null, th.getMessage(), f14139C, logEntry.throwable.getMessage());
        }
        try {
            this.f14153s.layout();
            if (z) {
                m20190t();
            }
        } catch (Exception unused) {
            Gdx.app.error("DeveloperConsole", "failed to layout log scroll pane");
            this.f14149k.clearChildren();
            this.f14154t.clear();
        }
    }

    public void setCustomSettingsVisible(boolean z) {
        SettingsManager.CustomValueType[] customValueTypeArr;
        boolean z2;
        this.f14150p.setVisible(z);
        if (z) {
            for (SettingsManager.CustomValueType customValueType : SettingsManager.CustomValueType.values) {
                CustomSettingsUI customSettingsUI = this.f14158x[customValueType.ordinal()];
                double customValue = Game.f8589i.settingsManager.getCustomValue(customValueType);
                customSettingsUI.f14174a.setText(customValue + "");
                LabelToggleButton labelToggleButton = customSettingsUI.f14175b;
                if (customValue != 0.0d) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                labelToggleButton.setEnabled(z2);
            }
        }
    }

    public void setVisible(boolean z) {
        ScriptManager.ScriptEnvironment scriptEnvironment;
        String str;
        this.f14148d = z;
        this.f14147b.getTable().setVisible(z);
        if (z) {
            try {
                this.f14153s.getStage().setScrollFocus(this.f14153s);
                this.f14151q.getStage().setKeyboardFocus(this.f14151q);
            } catch (Exception unused) {
            }
            Gdx.input.setOnscreenKeyboardVisible(true);
            m20190t();
        } else {
            try {
                this.f14151q.getStage().unfocusAll();
            } catch (Exception unused2) {
            }
            this.f14151q.setText("");
            Gdx.input.setOnscreenKeyboardVisible(false);
            setCustomSettingsVisible(false);
        }
        ScriptManager scriptManager = Game.f8589i.scriptManager;
        if (scriptManager != null && (scriptEnvironment = scriptManager.global) != null) {
            if (z) {
                str = "DeveloperConsoleShow";
            } else {
                str = "DeveloperConsoleHide";
            }
            scriptEnvironment.triggerEvent(str);
        }
    }

    /* renamed from: u */
    public final void m20189u() {
        String trim = this.f14151q.getText().trim();
        if (trim.length() == 0) {
            return;
        }
        Logger.LogEntry logEntry = new Logger.LogEntry();
        logEntry.tag = "";
        logEntry.message = "> " + trim;
        m20193q(logEntry, f14138B);
        if (Game.f8589i.screenManager.getCurrentScreen() instanceof GameScreen) {
            ((GameScreen) Game.f8589i.screenManager.getCurrentScreen()).f10670S.script.runScriptAction(trim);
        } else {
            Game.f8589i.scriptManager.global.executeLua(trim, "console");
        }
        this.f14151q.setText("");
        this.f14159y = -1;
        this.f14160z.insert(0, trim);
        Array<String> array = this.f14160z;
        if (array.size > 100) {
            array.pop();
        }
    }

    /* renamed from: v */
    public final void m20188v() {
        Rectangle visibleDisplayFrame = Game.f8589i.getVisibleDisplayFrame();
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() / Gdx.graphics.getHeight();
        this.f14152r.setPosition((visibleDisplayFrame.f5523x * scaledViewportHeight) + 8.0f, (visibleDisplayFrame.f5524y * scaledViewportHeight) + 8.0f);
        this.f14152r.setSize((visibleDisplayFrame.width * scaledViewportHeight) - 16.0f, (visibleDisplayFrame.height * scaledViewportHeight) - 16.0f);
        m20190t();
    }

    /* renamed from: r */
    public final Color m20192r(String str) {
        int length = str.length();
        long j = 0;
        for (int i = 0; i < length; i++) {
            j += str.charAt(i);
        }
        Color[] colorArr = f14142F;
        return colorArr[(int) (j % colorArr.length)];
    }
}
