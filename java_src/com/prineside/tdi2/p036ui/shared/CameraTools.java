package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.List;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.CameraController;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.InterpolationType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.LabelButton;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.p036ui.actors.LinearChartActor;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.screens.GameScreen;
import com.prineside.tdi2.screens.MapEditorScreen;
import com.prineside.tdi2.screens.ResearchesScreen;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.PMath;
import java.io.StringWriter;
import java.util.Comparator;
import java.util.Iterator;
import p218x1.C7221i;
/* renamed from: com.prineside.tdi2.ui.shared.CameraTools */
/* loaded from: classes2.dex */
public class CameraTools {

    /* renamed from: a */
    public final UiManager.UiLayer f13962a;

    /* renamed from: b */
    public Array<UiManager.UiLayer> f13963b;

    /* renamed from: c */
    public Table f13964c;

    /* renamed from: d */
    public Vector2 f13965d;

    /* renamed from: e */
    public float f13966e;

    /* renamed from: f */
    public float f13967f;

    /* renamed from: g */
    public float f13968g;

    /* renamed from: h */
    public float f13969h;

    /* renamed from: i */
    public Label f13970i;

    /* renamed from: j */
    public Label f13971j;

    /* renamed from: k */
    public Label f13972k;

    /* renamed from: l */
    public TextField.TextFieldStyle f13973l;

    /* renamed from: m */
    public SelectBox.SelectBoxStyle f13974m;

    /* renamed from: n */
    public Table f13975n;

    /* renamed from: o */
    public Table f13976o;

    /* renamed from: p */
    public Table f13977p;

    /* renamed from: q */
    public Group f13978q;

    /* renamed from: r */
    public Image f13979r;

    /* renamed from: s */
    public Image f13980s;

    /* renamed from: t */
    public int f13981t;

    /* renamed from: u */
    public Scenario[] f13982u;

    /* renamed from: v */
    public boolean f13983v;

    /* renamed from: w */
    public boolean f13984w;

    /* renamed from: x */
    public int f13985x;

    /* renamed from: com.prineside.tdi2.ui.shared.CameraTools$18 */
    /* loaded from: classes2.dex */
    public class RunnableC269518 implements Runnable {
        public RunnableC269518() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Game.f8589i.uiManager.getTextInput(new Input.TextInputListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.18.1
                @Override // com.badlogic.gdx.Input.TextInputListener
                public void canceled() {
                }

                @Override // com.badlogic.gdx.Input.TextInputListener
                public void input(final String str) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.18.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                CameraTools.this.f13982u[CameraTools.this.f13981t] = Scenario.fromJson(new JsonReader().parse(str));
                                CameraTools.this.updateScenarioMenu();
                            } catch (Exception e) {
                                Logger.error("CameraTools", "failed to load scenario from json: " + str, e);
                                Game game = Game.f8589i;
                                game.uiManager.notifications.add("Failed to load scenario from JSON", game.assetManager.getDrawable("icon-times"), MaterialColor.ORANGE.P800, StaticSoundType.FAIL);
                            }
                        }
                    });
                }
            }, "Load from JSON", "", "Paste scenario JSON here");
        }
    }

    /* renamed from: com.prineside.tdi2.ui.shared.CameraTools$Scenario */
    /* loaded from: classes2.dex */
    public static class Scenario {

        /* renamed from: a */
        public static Vector3 f14057a = new Vector3();

        /* renamed from: b */
        public static Comparator<Keyframe> f14058b = new Comparator<Keyframe>() { // from class: com.prineside.tdi2.ui.shared.CameraTools.Scenario.1
            @Override // java.util.Comparator
            public int compare(Keyframe keyframe, Keyframe keyframe2) {
                return C7221i.m2085a(keyframe.frame, keyframe2.frame);
            }
        };
        public String name = "CS";
        public int fps = 4;
        public int length = 40;
        public int startFrame = 0;
        public Array<Keyframe> keyframes = new Array<>(true, 1, Keyframe.class);

        /* renamed from: com.prineside.tdi2.ui.shared.CameraTools$Scenario$Keyframe */
        /* loaded from: classes2.dex */
        public static class Keyframe {
            public int frame;

            /* renamed from: iX */
            public InterpolationType f14059iX;

            /* renamed from: iY */
            public InterpolationType f14060iY;

            /* renamed from: iZ */
            public InterpolationType f14061iZ;

            /* renamed from: x */
            public float f14062x;

            /* renamed from: y */
            public float f14063y;

            /* renamed from: z */
            public float f14064z;

            public static Keyframe fromJson(JsonValue jsonValue) {
                Keyframe keyframe = new Keyframe();
                keyframe.frame = jsonValue.getInt("f");
                float f = jsonValue.getFloat("x", Float.NaN);
                keyframe.f14062x = f;
                if (!Float.isNaN(f)) {
                    try {
                        keyframe.f14059iX = InterpolationType.valueOf(jsonValue.getString("iX"));
                    } catch (Exception unused) {
                    }
                }
                float f2 = jsonValue.getFloat("y", Float.NaN);
                keyframe.f14063y = f2;
                if (!Float.isNaN(f2)) {
                    try {
                        keyframe.f14060iY = InterpolationType.valueOf(jsonValue.getString("iY"));
                    } catch (Exception unused2) {
                    }
                }
                float f3 = jsonValue.getFloat("z", Float.NaN);
                keyframe.f14064z = f3;
                if (!Float.isNaN(f3)) {
                    try {
                        keyframe.f14061iZ = InterpolationType.valueOf(jsonValue.getString("iZ"));
                    } catch (Exception unused3) {
                    }
                }
                return keyframe;
            }

            public void toJson(Json json) {
                json.writeValue("f", Integer.valueOf(this.frame));
                if (!Float.isNaN(this.f14062x)) {
                    json.writeValue("x", Float.valueOf(this.f14062x));
                    json.writeValue("iX", this.f14059iX.name());
                }
                if (!Float.isNaN(this.f14063y)) {
                    json.writeValue("y", Float.valueOf(this.f14063y));
                    json.writeValue("iY", this.f14060iY.name());
                }
                if (!Float.isNaN(this.f14064z)) {
                    json.writeValue("z", Float.valueOf(this.f14064z));
                    json.writeValue("iZ", this.f14061iZ.name());
                }
            }

            public Keyframe() {
                InterpolationType interpolationType = InterpolationType.linear;
                this.f14059iX = interpolationType;
                this.f14060iY = interpolationType;
                this.f14061iZ = interpolationType;
            }
        }

        public double getDuration() {
            double d = this.length;
            double d2 = this.fps;
            Double.isNaN(d);
            Double.isNaN(d2);
            return d / d2;
        }

        public Keyframe getKeyframe(int i) {
            int i2 = 0;
            while (true) {
                Array<Keyframe> array = this.keyframes;
                if (i2 < array.size) {
                    Keyframe[] keyframeArr = array.items;
                    if (keyframeArr[i2].frame == i) {
                        return keyframeArr[i2];
                    }
                    i2++;
                } else {
                    return null;
                }
            }
        }

        public static Scenario fromJson(JsonValue jsonValue) {
            Scenario scenario = new Scenario();
            scenario.name = jsonValue.getString("name");
            scenario.fps = jsonValue.getInt("fps");
            scenario.length = jsonValue.getInt("length");
            scenario.startFrame = jsonValue.getInt("startFrame", 0);
            try {
                Iterator<JsonValue> iterator2 = jsonValue.get("keyframes").iterator2();
                while (iterator2.hasNext()) {
                    scenario.keyframes.add(Keyframe.fromJson(iterator2.next()));
                }
                scenario.keyframes.sort(f14058b);
            } catch (Exception unused) {
            }
            return scenario;
        }

        public Vector3 calculate(float f) {
            int i;
            Keyframe keyframe;
            Keyframe keyframe2;
            Keyframe keyframe3;
            Keyframe keyframe4;
            Keyframe keyframe5;
            float f2;
            Keyframe keyframe6;
            float f3;
            int i2 = this.length;
            int i3 = this.fps;
            if (f > i2 / i3) {
                f = i2 / i3;
            }
            int i4 = (int) (i3 * f);
            f14057a.f5533x = Float.NaN;
            int i5 = this.keyframes.size;
            while (true) {
                i5--;
                i = 0;
                keyframe = null;
                if (i5 >= 0) {
                    keyframe2 = this.keyframes.items[i5];
                    if (keyframe2.frame <= i4 && !Float.isNaN(keyframe2.f14062x)) {
                        break;
                    }
                } else {
                    keyframe2 = null;
                    i5 = 0;
                    break;
                }
            }
            float f4 = 1.0f;
            if (keyframe2 != null) {
                while (true) {
                    i5++;
                    Array<Keyframe> array = this.keyframes;
                    if (i5 < array.size) {
                        keyframe6 = array.items[i5];
                        if (keyframe6.frame > i4 && !Float.isNaN(keyframe6.f14062x)) {
                            break;
                        }
                    } else {
                        keyframe6 = null;
                        break;
                    }
                }
                if (keyframe6 == null) {
                    f14057a.f5533x = keyframe2.f14062x;
                } else {
                    int i6 = keyframe2.frame;
                    int i7 = keyframe6.frame;
                    if (i6 == i7) {
                        f3 = 1.0f;
                    } else {
                        int i8 = this.fps;
                        float f5 = i6 / i8;
                        f3 = (f - f5) / ((i7 / i8) - f5);
                    }
                    f14057a.f5533x = InterpolationType.getObject(keyframe6.f14059iX).apply(keyframe2.f14062x, keyframe6.f14062x, f3);
                }
            }
            f14057a.f5534y = Float.NaN;
            int i9 = this.keyframes.size - 1;
            while (true) {
                if (i9 >= 0) {
                    keyframe3 = this.keyframes.items[i9];
                    if (keyframe3.frame <= i4 && !Float.isNaN(keyframe3.f14063y)) {
                        break;
                    }
                    i9--;
                } else {
                    keyframe3 = null;
                    i9 = 0;
                    break;
                }
            }
            if (keyframe3 != null) {
                while (true) {
                    i9++;
                    Array<Keyframe> array2 = this.keyframes;
                    if (i9 < array2.size) {
                        keyframe5 = array2.items[i9];
                        if (keyframe5.frame > i4 && !Float.isNaN(keyframe5.f14063y)) {
                            break;
                        }
                    } else {
                        keyframe5 = null;
                        break;
                    }
                }
                if (keyframe5 == null) {
                    f14057a.f5534y = keyframe3.f14063y;
                } else {
                    int i10 = keyframe3.frame;
                    int i11 = keyframe5.frame;
                    if (i10 == i11) {
                        f2 = 1.0f;
                    } else {
                        int i12 = this.fps;
                        float f6 = i10 / i12;
                        f2 = (f - f6) / ((i11 / i12) - f6);
                    }
                    f14057a.f5534y = InterpolationType.getObject(keyframe5.f14060iY).apply(keyframe3.f14063y, keyframe5.f14063y, f2);
                }
            }
            f14057a.f5535z = Float.NaN;
            int i13 = this.keyframes.size - 1;
            while (true) {
                if (i13 >= 0) {
                    keyframe4 = this.keyframes.items[i13];
                    if (keyframe4.frame <= i4 && !Float.isNaN(keyframe4.f14064z)) {
                        i = i13;
                        break;
                    }
                    i13--;
                } else {
                    keyframe4 = null;
                    break;
                }
            }
            if (keyframe4 != null) {
                while (true) {
                    i++;
                    Array<Keyframe> array3 = this.keyframes;
                    if (i >= array3.size) {
                        break;
                    }
                    Keyframe keyframe7 = array3.items[i];
                    if (keyframe7.frame > i4 && !Float.isNaN(keyframe7.f14064z)) {
                        keyframe = keyframe7;
                        break;
                    }
                }
                if (keyframe == null) {
                    f14057a.f5535z = keyframe4.f14064z;
                } else {
                    int i14 = keyframe4.frame;
                    int i15 = keyframe.frame;
                    if (i14 != i15) {
                        int i16 = this.fps;
                        float f7 = i14 / i16;
                        f4 = (f - f7) / ((i15 / i16) - f7);
                    }
                    f14057a.f5535z = InterpolationType.getObject(keyframe.f14061iZ).apply(keyframe4.f14064z, keyframe.f14064z, f4);
                }
            }
            return f14057a;
        }

        public void toJson(Json json) {
            json.writeValue("name", this.name);
            json.writeValue("fps", Integer.valueOf(this.fps));
            json.writeValue("length", Integer.valueOf(this.length));
            json.writeValue("startFrame", Integer.valueOf(this.startFrame));
            json.writeArrayStart("keyframes");
            for (int i = 0; i < this.keyframes.size; i++) {
                json.writeObjectStart();
                this.keyframes.items[i].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
        }

        public void removeKeyframe(int i) {
            Keyframe keyframe = getKeyframe(i);
            if (keyframe != null) {
                this.keyframes.removeValue(keyframe, true);
            }
        }

        public Keyframe setKeyframe(int i, float f, InterpolationType interpolationType, float f2, InterpolationType interpolationType2, float f3, InterpolationType interpolationType3) {
            if (Float.isNaN(f) && Float.isNaN(f2) && Float.isNaN(f3)) {
                removeKeyframe(i);
                return null;
            }
            Keyframe keyframe = getKeyframe(i);
            if (keyframe == null) {
                keyframe = new Keyframe();
                keyframe.frame = i;
                this.keyframes.add(keyframe);
                this.keyframes.sort(f14058b);
            }
            keyframe.f14062x = f;
            keyframe.f14059iX = interpolationType;
            keyframe.f14063y = f2;
            keyframe.f14060iY = interpolationType2;
            keyframe.f14064z = f3;
            keyframe.f14061iZ = interpolationType3;
            return keyframe;
        }

        public void setKeyframeX(int i, float f, InterpolationType interpolationType) {
            Keyframe keyframe = getKeyframe(i);
            if (interpolationType == null) {
                if (keyframe == null) {
                    interpolationType = InterpolationType.linear;
                } else {
                    interpolationType = keyframe.f14059iX;
                }
            }
            InterpolationType interpolationType2 = interpolationType;
            if (keyframe == null) {
                setKeyframe(i, f, interpolationType2, Float.NaN, null, Float.NaN, null);
            } else {
                setKeyframe(i, f, interpolationType2, keyframe.f14063y, keyframe.f14060iY, keyframe.f14064z, keyframe.f14061iZ);
            }
        }

        public void setKeyframeY(int i, float f, InterpolationType interpolationType) {
            Keyframe keyframe = getKeyframe(i);
            if (interpolationType == null) {
                if (keyframe == null) {
                    interpolationType = InterpolationType.linear;
                } else {
                    interpolationType = keyframe.f14060iY;
                }
            }
            InterpolationType interpolationType2 = interpolationType;
            if (keyframe == null) {
                setKeyframe(i, Float.NaN, null, f, interpolationType2, Float.NaN, null);
            } else {
                setKeyframe(i, keyframe.f14062x, keyframe.f14059iX, f, interpolationType2, keyframe.f14064z, keyframe.f14061iZ);
            }
        }

        public void setKeyframeZ(int i, float f, InterpolationType interpolationType) {
            Keyframe keyframe = getKeyframe(i);
            if (interpolationType == null) {
                if (keyframe == null) {
                    interpolationType = InterpolationType.linear;
                } else {
                    interpolationType = keyframe.f14061iZ;
                }
            }
            InterpolationType interpolationType2 = interpolationType;
            if (keyframe == null) {
                setKeyframe(i, Float.NaN, null, Float.NaN, null, f, interpolationType2);
            } else {
                setKeyframe(i, keyframe.f14062x, keyframe.f14059iX, keyframe.f14063y, keyframe.f14060iY, f, interpolationType2);
            }
        }
    }

    public Scenario getSelectedScenario() {
        return this.f13982u[this.f13981t];
    }

    public boolean isVisible() {
        return this.f13962a.getTable().isVisible();
    }

    /* renamed from: x */
    public final boolean m20241x() {
        return Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.CAMERA_TOOLS_ENABLED) != 0.0d;
    }

    public CameraTools() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 9002, "DeveloperConsole camera tools");
        this.f13962a = addLayer;
        this.f13963b = new Array<>(UiManager.UiLayer.class);
        this.f13965d = new Vector2();
        this.f13966e = 300.0f;
        this.f13967f = 100.0f;
        this.f13968g = 1.0f;
        this.f13969h = 50.0f;
        this.f13982u = new Scenario[9];
        this.f13984w = true;
        this.f13985x = 0;
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.1
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
                CameraTools.this.m20240y();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                CameraTools.this.m20240y();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
            }
        });
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(21, false);
        Color color = Color.WHITE;
        TextureRegionDrawable textureRegionDrawable = new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
        TextureRegionDrawable textureRegionDrawable2 = new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
        Color color2 = MaterialColor.BLUE.P500;
        Drawable tint = textureRegionDrawable2.tint(color2);
        TextureRegionDrawable textureRegionDrawable3 = new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
        Color color3 = MaterialColor.GREY.P900;
        TextField.TextFieldStyle textFieldStyle = new TextField.TextFieldStyle(font, color, textureRegionDrawable, tint, textureRegionDrawable3.tint(color3));
        this.f13973l = textFieldStyle;
        textFieldStyle.cursor.setMinWidth(2.0f);
        Drawable drawable = this.f13973l.background;
        drawable.setLeftWidth(drawable.getLeftWidth() + 5.0f);
        Drawable drawable2 = this.f13973l.background;
        drawable2.setRightWidth(drawable2.getRightWidth() + 5.0f);
        List.ListStyle listStyle = new List.ListStyle(Game.f8589i.assetManager.getFont(21), color, color, Game.f8589i.assetManager.getDrawable("blank").tint(MaterialColor.LIGHT_BLUE.P800));
        Drawable drawable3 = listStyle.selection;
        drawable3.setLeftWidth(drawable3.getLeftWidth() + 5.0f);
        Drawable drawable4 = listStyle.selection;
        drawable4.setRightWidth(drawable4.getRightWidth() + 5.0f);
        SelectBox.SelectBoxStyle selectBoxStyle = new SelectBox.SelectBoxStyle(Game.f8589i.assetManager.getFont(21), color, Game.f8589i.assetManager.getDrawable("blank").tint(color3), new ScrollPane.ScrollPaneStyle(Game.f8589i.assetManager.getDrawable("blank").tint(color3), Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)), Game.f8589i.assetManager.getDrawable("blank"), Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)), Game.f8589i.assetManager.getDrawable("blank")), listStyle);
        this.f13974m = selectBoxStyle;
        Drawable drawable5 = selectBoxStyle.background;
        drawable5.setLeftWidth(drawable5.getLeftWidth() + 10.0f);
        Drawable drawable6 = this.f13974m.background;
        drawable6.setRightWidth(drawable6.getRightWidth() + 10.0f);
        Table table = new Table();
        table.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(640825565)));
        addLayer.getTable().add(table).width(800.0f);
        Table table2 = new Table();
        table.add(table2).pad(10.0f).expandX().fillX();
        Table table3 = new Table();
        table2.add(table3).top().left().expandX().fillX();
        Table table4 = new Table();
        table3.add(table4).top().left().row();
        table4.add((Table) new Label("UI layers", Game.f8589i.assetManager.getLabelStyle(24)));
        LabelButton labelButton = new LabelButton("Toggle all", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.2
            @Override // java.lang.Runnable
            public void run() {
                if (CameraTools.this.f13963b.size == 0) {
                    int i = 0;
                    while (true) {
                        Array<UiManager.UiLayer>[] arrayArr = Game.f8589i.uiManager.layers;
                        if (i >= arrayArr.length) {
                            break;
                        }
                        Array<UiManager.UiLayer> array = arrayArr[i];
                        for (int i2 = 0; i2 < array.size; i2++) {
                            UiManager.UiLayer uiLayer = array.items[i2];
                            if (uiLayer != CameraTools.this.f13962a && uiLayer.getTable().isVisible()) {
                                uiLayer.getTable().setVisible(false);
                                CameraTools.this.f13963b.add(uiLayer);
                            }
                        }
                        i++;
                    }
                } else {
                    for (int i3 = 0; i3 < CameraTools.this.f13963b.size; i3++) {
                        ((UiManager.UiLayer[]) CameraTools.this.f13963b.items)[i3].getTable().setVisible(true);
                    }
                    CameraTools.this.f13963b.clear();
                }
                CameraTools.this.update();
            }
        });
        labelButton.setAlignment(16);
        table4.add((Table) labelButton).padLeft(10.0f);
        Table table5 = new Table();
        table5.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)));
        table3.add(table5).fillX().expandX().height(250.0f).padTop(5.0f);
        this.f13964c = new Table();
        ScrollPane scrollPane = new ScrollPane(this.f13964c, Game.f8589i.assetManager.getScrollPaneStyle(10.0f));
        scrollPane.setScrollingDisabled(true, false);
        table5.add((Table) scrollPane).expand().fill().pad(5.0f).row();
        TextField.TextFieldStyle textFieldStyle2 = new TextField.TextFieldStyle(Game.f8589i.assetManager.getFont(21, false), color, new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(color2), new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(new Color(0.0f, 0.0f, 0.0f, 0.56f)));
        textFieldStyle2.cursor.setMinWidth(2.0f);
        Drawable drawable7 = textFieldStyle2.background;
        drawable7.setLeftWidth(drawable7.getLeftWidth() + 5.0f);
        Drawable drawable8 = textFieldStyle2.background;
        drawable8.setRightWidth(drawable8.getRightWidth() + 5.0f);
        Table table6 = new Table();
        table2.add(table6).padLeft(10.0f).top().left().row();
        Table table7 = new Table();
        table6.add(table7).top().left().row();
        table7.add((Table) new Label("Cam controller", Game.f8589i.assetManager.getLabelStyle(24)));
        Table table8 = new Table();
        table8.setBackground(Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.28f)));
        table6.add(table8).fillX().top().left().padTop(5.0f);
        Table table9 = new Table();
        table8.add(table9).expand().fill().pad(5.0f).row();
        Label label = new Label("Max velocity", Game.f8589i.assetManager.getLabelStyle(21));
        label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table9.add((Table) label).top().left().padRight(10.0f);
        final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(String.valueOf(MathUtils.round(this.f13966e * 10.0f) / 10.0f), textFieldStyle2);
        textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.3
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                try {
                    CameraTools.this.f13966e = Float.valueOf(textFieldXPlatform.getText()).floatValue();
                    if (CameraTools.this.f13966e < 0.0f) {
                        CameraTools.this.f13966e = 0.0f;
                    }
                } catch (Exception unused) {
                }
            }
        });
        table9.add((Table) textFieldXPlatform).left().size(120.0f, 24.0f).row();
        Label label2 = new Label("Acceleration", Game.f8589i.assetManager.getLabelStyle(21));
        label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table9.add((Table) label2).top().left().padRight(10.0f);
        final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform(String.valueOf(MathUtils.round(this.f13967f * 10.0f) / 10.0f), textFieldStyle2);
        textFieldXPlatform2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.4
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                try {
                    CameraTools.this.f13967f = Float.valueOf(textFieldXPlatform2.getText()).floatValue();
                    if (CameraTools.this.f13967f < 0.0f) {
                        CameraTools.this.f13967f = 0.0f;
                    }
                } catch (Exception unused) {
                }
            }
        });
        table9.add((Table) textFieldXPlatform2).left().size(120.0f, 24.0f).row();
        Label label3 = new Label("Decay", Game.f8589i.assetManager.getLabelStyle(21));
        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table9.add((Table) label3).top().left().padRight(10.0f);
        final TextFieldXPlatform textFieldXPlatform3 = new TextFieldXPlatform(String.valueOf(MathUtils.round(this.f13967f * 10.0f) / 10.0f), textFieldStyle2);
        textFieldXPlatform3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.5
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                try {
                    CameraTools.this.f13969h = Float.valueOf(textFieldXPlatform3.getText()).floatValue();
                    if (CameraTools.this.f13969h < 0.0f) {
                        CameraTools.this.f13969h = 0.0f;
                    }
                } catch (Exception unused) {
                }
            }
        });
        table9.add((Table) textFieldXPlatform3).left().size(120.0f, 24.0f).row();
        Label label4 = new Label("Zoom speed", Game.f8589i.assetManager.getLabelStyle(21));
        label4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table9.add((Table) label4).top().left().padRight(10.0f);
        final TextFieldXPlatform textFieldXPlatform4 = new TextFieldXPlatform(String.valueOf(MathUtils.round(this.f13968g * 100.0f) / 100.0f), textFieldStyle2);
        textFieldXPlatform4.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.6
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                try {
                    CameraTools.this.f13968g = Float.valueOf(textFieldXPlatform4.getText()).floatValue();
                    if (CameraTools.this.f13968g < 0.0f) {
                        CameraTools.this.f13968g = 0.0f;
                    }
                } catch (Exception unused) {
                }
            }
        });
        table9.add((Table) textFieldXPlatform4).left().size(120.0f, 24.0f).row();
        Label label5 = new Label("pos", Game.f8589i.assetManager.getLabelStyle(21));
        label5.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table9.add((Table) label5).top().left().padTop(10.0f).padRight(10.0f);
        Label label6 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f13970i = label6;
        table9.add((Table) label6).top().left().padTop(10.0f).row();
        Label label7 = new Label("zoom", Game.f8589i.assetManager.getLabelStyle(21));
        label7.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table9.add((Table) label7).top().left().padTop(10.0f).padRight(10.0f);
        Label label8 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f13971j = label8;
        table9.add((Table) label8).top().left().padTop(10.0f).row();
        Label label9 = new Label("velocity", Game.f8589i.assetManager.getLabelStyle(21));
        label9.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table9.add((Table) label9).top().left().padRight(10.0f);
        Label label10 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f13972k = label10;
        table9.add((Table) label10).top().left().row();
        table9.add((Table) new LabelButton("Stop", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.7
            @Override // java.lang.Runnable
            public void run() {
                CameraTools.this.f13965d.f5527x = 0.0f;
                CameraTools.this.f13965d.f5528y = 0.0f;
            }
        })).colspan(2).top().left().row();
        Table table10 = new Table();
        this.f13975n = table10;
        table2.add(table10).colspan(2).fillX().expandX();
        addLayer.getTable().setVisible(false);
        String str = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS).get("cameraTools", null);
        if (str != null) {
            JsonValue parse = new JsonReader().parse(str);
            this.f13981t = parse.getInt("selectedScenarioIdx", 0);
            this.f13983v = parse.getBoolean("loopScenario", false);
            this.f13984w = parse.getBoolean("drawScenarioOnMap", false);
            JsonValue jsonValue = parse.get("loadedScenarios");
            if (jsonValue != null) {
                Iterator<JsonValue> iterator2 = jsonValue.iterator2();
                while (iterator2.hasNext()) {
                    JsonValue next = iterator2.next();
                    try {
                        this.f13982u[next.getInt("idx")] = Scenario.fromJson(next.get("scenario"));
                    } catch (Exception e) {
                        Logger.error("CameraTools", "failed to load scenario", e);
                    }
                }
            }
        }
        update();
    }

    /* renamed from: A */
    public final void m20266A() {
        Table table;
        Scenario selectedScenario = getSelectedScenario();
        if (selectedScenario != null && (table = this.f13977p) != null) {
            table.clearChildren();
            Group group = new Group();
            this.f13978q = group;
            group.setTransform(false);
            int i = selectedScenario.length * 16;
            int i2 = GL20.GL_SRC_ALPHA;
            if (i >= 770) {
                i2 = i;
            }
            float f = i2;
            this.f13977p.add((Table) this.f13978q).size(f, 120.0f).padLeft(5.0f).padRight(5.0f).row();
            for (int i3 = 0; i3 <= selectedScenario.length; i3 += selectedScenario.fps) {
                Label label = new Label(String.valueOf(i3), Game.f8589i.assetManager.getLabelStyle(21));
                label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                label.setPosition((i3 * 16) - 1.0f, 96.0f);
                label.setSize(2.0f, 24.0f);
                label.setAlignment(1);
                this.f13978q.addActor(label);
            }
            for (int i4 = 0; i4 < 3; i4++) {
                Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                if (i4 % 2 == 0) {
                    image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                } else {
                    image.setColor(0.0f, 0.0f, 0.0f, 0.14f);
                }
                image.setSize(f, 24.0f);
                image.setPosition(0.0f, ((2 - i4) * 24) + 24);
                this.f13978q.addActor(image);
            }
            if (selectedScenario.startFrame != 0) {
                Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image2.setSize(selectedScenario.startFrame * 16, 72.0f);
                image2.setPosition(0.0f, 24.0f);
                image2.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                this.f13978q.addActor(image2);
            }
            if (i2 > i) {
                Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image3.setSize(i2 - i, 72.0f);
                image3.setPosition(i, 24.0f);
                image3.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                this.f13978q.addActor(image3);
            }
            for (int i5 = 0; i5 <= selectedScenario.length; i5++) {
                Image image4 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image4.setSize(1.0f, 72.0f);
                image4.setPosition(i5 * 16, 24.0f);
                image4.setColor(1.0f, 1.0f, 1.0f, 0.07f);
                this.f13978q.addActor(image4);
            }
            for (int i6 = 0; i6 <= selectedScenario.length; i6 += selectedScenario.fps) {
                Image image5 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
                image5.setSize(2.0f, 72.0f);
                float f2 = i6 * 16;
                image5.setPosition(f2, 24.0f);
                image5.setColor(1.0f, 1.0f, 1.0f, 0.14f);
                this.f13978q.addActor(image5);
                Label label2 = new Label(":" + String.valueOf(i6 / selectedScenario.fps), Game.f8589i.assetManager.getLabelStyle(21));
                label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                label2.setPosition(f2 - 1.0f, 0.0f);
                label2.setSize(2.0f, 24.0f);
                label2.setAlignment(1);
                this.f13978q.addActor(label2);
            }
            int i7 = 0;
            while (true) {
                Array<Scenario.Keyframe> array = selectedScenario.keyframes;
                if (i7 >= array.size) {
                    break;
                }
                Scenario.Keyframe keyframe = array.items[i7];
                if (!Float.isNaN(keyframe.f14062x)) {
                    Image image6 = new Image(Game.f8589i.assetManager.getDrawable("small-circle"));
                    image6.setColor(MaterialColor.RED.P300);
                    image6.setSize(12.0f, 12.0f);
                    image6.setPosition((keyframe.frame * 16) - 6.0f, 76.0f);
                    this.f13978q.addActor(image6);
                }
                if (!Float.isNaN(keyframe.f14063y)) {
                    Image image7 = new Image(Game.f8589i.assetManager.getDrawable("small-circle"));
                    image7.setColor(MaterialColor.GREEN.P300);
                    image7.setSize(12.0f, 12.0f);
                    image7.setPosition((keyframe.frame * 16) - 6.0f, 52.0f);
                    this.f13978q.addActor(image7);
                }
                if (!Float.isNaN(keyframe.f14064z)) {
                    Image image8 = new Image(Game.f8589i.assetManager.getDrawable("small-circle"));
                    image8.setColor(MaterialColor.BLUE.P300);
                    image8.setSize(12.0f, 12.0f);
                    image8.setPosition((keyframe.frame * 16) - 6.0f, 28.0f);
                    this.f13978q.addActor(image8);
                }
                i7++;
            }
            this.f13978q.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.21
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f3, float f4) {
                    CameraTools.this.f13985x = MathUtils.round(f3 / 16.0f);
                    CameraTools.this.m20265B();
                }
            });
            int i8 = this.f13985x;
            if (i8 < 0) {
                this.f13985x = 0;
            } else {
                int i9 = selectedScenario.length;
                if (i8 > i9) {
                    this.f13985x = i9;
                }
            }
            Image image9 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            this.f13979r = image9;
            image9.setSize(2.0f, 96.0f);
            this.f13979r.setPosition(0.0f, 0.0f);
            this.f13979r.setColor(MaterialColor.ORANGE.P300);
            this.f13978q.addActor(this.f13979r);
            Image image10 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            this.f13980s = image10;
            image10.setSize(4.0f, 72.0f);
            this.f13980s.setColor(0.0f, 1.0f, 1.0f, 0.78f);
            this.f13978q.addActor(this.f13980s);
            m20239z();
            return;
        }
        this.f13979r = null;
    }

    /* renamed from: B */
    public final void m20265B() {
        Table table;
        boolean z;
        String valueOf;
        InterpolationType interpolationType;
        boolean z2;
        String valueOf2;
        InterpolationType interpolationType2;
        boolean z3;
        InterpolationType interpolationType3;
        final Scenario selectedScenario = getSelectedScenario();
        if (selectedScenario != null && (table = this.f13976o) != null) {
            table.clearChildren();
            Table table2 = new Table();
            this.f13976o.add(table2).expandX().fillX().row();
            table2.add((Table) new Label("Frame: " + this.f13985x, Game.f8589i.assetManager.getLabelStyle(21))).height(24.0f);
            table2.add().height(1.0f).expandX().fillX();
            table2.add((Table) new RectButton("Clear", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.22
                @Override // java.lang.Runnable
                public void run() {
                    selectedScenario.removeKeyframe(CameraTools.this.f13985x);
                    CameraTools.this.m20266A();
                }
            })).size(96.0f, 24.0f).padLeft(16.0f);
            table2.add((Table) new RectButton("Cam -> Frame", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.23
                @Override // java.lang.Runnable
                public void run() {
                    CameraController m20242w = CameraTools.this.m20242w();
                    if (m20242w != null) {
                        Scenario.Keyframe keyframe = selectedScenario.getKeyframe(CameraTools.this.f13985x);
                        if (keyframe != null) {
                            Scenario scenario = selectedScenario;
                            int i = CameraTools.this.f13985x;
                            Vector3 vector3 = m20242w.camera.position;
                            scenario.setKeyframe(i, vector3.f5533x, keyframe.f14059iX, vector3.f5534y, keyframe.f14060iY, (float) m20242w.zoom, keyframe.f14061iZ);
                        } else {
                            Scenario scenario2 = selectedScenario;
                            int i2 = CameraTools.this.f13985x;
                            Vector3 vector32 = m20242w.camera.position;
                            float f = vector32.f5533x;
                            InterpolationType interpolationType4 = InterpolationType.linear;
                            scenario2.setKeyframe(i2, f, interpolationType4, vector32.f5534y, interpolationType4, (float) m20242w.zoom, interpolationType4);
                        }
                        CameraTools.this.m20266A();
                        CameraTools.this.m20265B();
                    }
                }
            })).size(160.0f, 24.0f).padLeft(16.0f);
            table2.add((Table) new RectButton("Frame -> Cam (calculate)", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.24
                @Override // java.lang.Runnable
                public void run() {
                    float f;
                    float f2;
                    double d;
                    CameraController m20242w = CameraTools.this.m20242w();
                    Scenario selectedScenario2 = CameraTools.this.getSelectedScenario();
                    if (m20242w != null && selectedScenario2 != null) {
                        Vector3 calculate = selectedScenario2.calculate(CameraTools.this.f13985x / selectedScenario2.fps);
                        if (Float.isNaN(calculate.f5533x)) {
                            f = m20242w.camera.position.f5533x;
                        } else {
                            f = calculate.f5533x;
                        }
                        if (Float.isNaN(calculate.f5534y)) {
                            f2 = m20242w.camera.position.f5534y;
                        } else {
                            f2 = calculate.f5534y;
                        }
                        m20242w.lookAt(f, f2);
                        if (Float.isNaN(calculate.f5535z)) {
                            d = m20242w.zoom;
                        } else {
                            d = calculate.f5535z;
                        }
                        m20242w.setZoom(d);
                    }
                }
            })).size(256.0f, 24.0f).padLeft(16.0f);
            table2.add().height(1.0f).expandX().fillX();
            final Scenario.Keyframe keyframe = selectedScenario.getKeyframe(this.f13985x);
            Table table3 = new Table();
            this.f13976o.add(table3).fillX().expandX().padTop(8.0f);
            Label label = new Label("x", Game.f8589i.assetManager.getLabelStyle(21));
            Color color = MaterialColor.RED.P300;
            label.setColor(color);
            table3.add((Table) label);
            if (keyframe != null && !Float.isNaN(keyframe.f14062x)) {
                z = false;
            } else {
                z = true;
            }
            String str = "";
            if (z) {
                valueOf = "";
            } else {
                valueOf = String.valueOf(keyframe.f14062x);
            }
            final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(valueOf, this.f13973l);
            textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.25
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        selectedScenario.setKeyframeX(CameraTools.this.f13985x, Float.valueOf(textFieldXPlatform.getText()).floatValue(), null);
                        CameraTools.this.m20266A();
                    } catch (Exception unused) {
                    }
                }
            });
            table3.add((Table) textFieldXPlatform).size(96.0f, 24.0f).padLeft(8.0f);
            TextureRegionDrawable drawable = Game.f8589i.assetManager.getDrawable("icon-times");
            Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.26
                @Override // java.lang.Runnable
                public void run() {
                    selectedScenario.setKeyframeX(CameraTools.this.f13985x, Float.NaN, null);
                    CameraTools.this.updateScenarioMenu();
                }
            };
            Color color2 = MaterialColor.RED.P500;
            Color color3 = MaterialColor.RED.P800;
            PaddedImageButton paddedImageButton = new PaddedImageButton(drawable, runnable, color2, color, color3);
            paddedImageButton.setIconPosition(4.0f, 4.0f);
            paddedImageButton.setIconSize(16.0f, 16.0f);
            table3.add((Table) paddedImageButton).size(24.0f).padLeft(8.0f);
            if (keyframe == null || (interpolationType = keyframe.f14059iX) == null) {
                interpolationType = InterpolationType.linear;
            }
            final SelectBox selectBox = new SelectBox(this.f13974m);
            InterpolationType[] interpolationTypeArr = InterpolationType.values;
            selectBox.setItems(interpolationTypeArr);
            selectBox.setSelected(interpolationType);
            selectBox.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.27
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    float f;
                    Scenario scenario = selectedScenario;
                    int i = CameraTools.this.f13985x;
                    Scenario.Keyframe keyframe2 = keyframe;
                    if (keyframe2 == null) {
                        f = Float.NaN;
                    } else {
                        f = keyframe2.f14062x;
                    }
                    scenario.setKeyframeX(i, f, (InterpolationType) selectBox.getSelected());
                    CameraTools.this.m20265B();
                }
            });
            table3.add((Table) selectBox).size(128.0f, 24.0f).padLeft(8.0f);
            Group group = new Group();
            group.setTransform(false);
            table3.add((Table) group).size(256.0f, 16.0f).padBottom(4.0f).padTop(4.0f).padLeft(8.0f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image.setColor(1.0f, 1.0f, 1.0f, 0.14f);
            image.setSize(256.0f, 16.0f);
            group.addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("small-circle"));
            image2.setSize(16.0f, 16.0f);
            image2.addAction(Actions.forever(Actions.sequence(Actions.moveTo(0.0f, 0.0f), Actions.moveTo(240.0f, 0.0f, 1.5f, InterpolationType.getObject(interpolationType)))));
            group.addActor(image2);
            LinearChartActor linearChartActor = new LinearChartActor();
            linearChartActor.setChart(interpolationType);
            linearChartActor.setColor(color, new Color(0.0f, 0.0f, 0.0f, 0.28f));
            table3.add((Table) linearChartActor).size(128.0f, 24.0f).padLeft(8.0f);
            table3.add().height(1.0f).expandX().fillX().row();
            Label label2 = new Label("y", Game.f8589i.assetManager.getLabelStyle(21));
            Color color4 = MaterialColor.GREEN.P300;
            label2.setColor(color4);
            table3.add((Table) label2);
            if (keyframe != null && !Float.isNaN(keyframe.f14063y)) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z2) {
                valueOf2 = "";
            } else {
                valueOf2 = String.valueOf(keyframe.f14063y);
            }
            final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform(valueOf2, this.f13973l);
            textFieldXPlatform2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.28
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        selectedScenario.setKeyframeY(CameraTools.this.f13985x, Float.valueOf(textFieldXPlatform2.getText()).floatValue(), null);
                        CameraTools.this.m20266A();
                    } catch (Exception unused) {
                    }
                }
            });
            table3.add((Table) textFieldXPlatform2).size(96.0f, 24.0f).padLeft(8.0f);
            PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.29
                @Override // java.lang.Runnable
                public void run() {
                    selectedScenario.setKeyframeY(CameraTools.this.f13985x, Float.NaN, null);
                    CameraTools.this.updateScenarioMenu();
                }
            }, color2, color, color3);
            paddedImageButton2.setIconPosition(4.0f, 4.0f);
            paddedImageButton2.setIconSize(16.0f, 16.0f);
            table3.add((Table) paddedImageButton2).size(24.0f).padLeft(8.0f);
            if (keyframe == null || (interpolationType2 = keyframe.f14060iY) == null) {
                interpolationType2 = InterpolationType.linear;
            }
            final SelectBox selectBox2 = new SelectBox(this.f13974m);
            selectBox2.setItems(interpolationTypeArr);
            selectBox2.setSelected(interpolationType2);
            selectBox2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.30
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    float f;
                    Scenario scenario = selectedScenario;
                    int i = CameraTools.this.f13985x;
                    Scenario.Keyframe keyframe2 = keyframe;
                    if (keyframe2 == null) {
                        f = Float.NaN;
                    } else {
                        f = keyframe2.f14063y;
                    }
                    scenario.setKeyframeY(i, f, (InterpolationType) selectBox2.getSelected());
                    CameraTools.this.m20265B();
                }
            });
            table3.add((Table) selectBox2).size(128.0f, 24.0f).padLeft(8.0f);
            Group group2 = new Group();
            group2.setTransform(false);
            table3.add((Table) group2).size(256.0f, 16.0f).padBottom(4.0f).padTop(4.0f).padLeft(8.0f);
            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image3.setColor(1.0f, 1.0f, 1.0f, 0.14f);
            image3.setSize(256.0f, 16.0f);
            group2.addActor(image3);
            Image image4 = new Image(Game.f8589i.assetManager.getDrawable("small-circle"));
            image4.setSize(16.0f, 16.0f);
            image4.addAction(Actions.forever(Actions.sequence(Actions.moveTo(0.0f, 0.0f), Actions.moveTo(240.0f, 0.0f, 1.5f, InterpolationType.getObject(interpolationType2)))));
            group2.addActor(image4);
            LinearChartActor linearChartActor2 = new LinearChartActor();
            linearChartActor2.setChart(interpolationType2);
            linearChartActor2.setColor(color4, new Color(0.0f, 0.0f, 0.0f, 0.28f));
            table3.add((Table) linearChartActor2).size(128.0f, 24.0f).padLeft(8.0f);
            table3.add().height(1.0f).expandX().fillX().row();
            Label label3 = new Label("z", Game.f8589i.assetManager.getLabelStyle(21));
            Color color5 = MaterialColor.BLUE.P300;
            label3.setColor(color5);
            table3.add((Table) label3);
            if (keyframe != null && !Float.isNaN(keyframe.f14064z)) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (!z3) {
                str = String.valueOf(keyframe.f14064z);
            }
            final TextFieldXPlatform textFieldXPlatform3 = new TextFieldXPlatform(str, this.f13973l);
            textFieldXPlatform3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.31
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        selectedScenario.setKeyframeZ(CameraTools.this.f13985x, Float.valueOf(textFieldXPlatform3.getText()).floatValue(), null);
                        CameraTools.this.m20266A();
                    } catch (Exception unused) {
                    }
                }
            });
            table3.add((Table) textFieldXPlatform3).size(96.0f, 24.0f).padLeft(8.0f);
            PaddedImageButton paddedImageButton3 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.32
                @Override // java.lang.Runnable
                public void run() {
                    selectedScenario.setKeyframeZ(CameraTools.this.f13985x, Float.NaN, null);
                    CameraTools.this.updateScenarioMenu();
                }
            }, color2, color, color3);
            paddedImageButton3.setIconPosition(4.0f, 4.0f);
            paddedImageButton3.setIconSize(16.0f, 16.0f);
            table3.add((Table) paddedImageButton3).size(24.0f).padLeft(8.0f);
            if (keyframe == null || (interpolationType3 = keyframe.f14061iZ) == null) {
                interpolationType3 = InterpolationType.linear;
            }
            final SelectBox selectBox3 = new SelectBox(this.f13974m);
            selectBox3.setItems(interpolationTypeArr);
            selectBox3.setSelected(interpolationType3);
            selectBox3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.33
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    float f;
                    Scenario scenario = selectedScenario;
                    int i = CameraTools.this.f13985x;
                    Scenario.Keyframe keyframe2 = keyframe;
                    if (keyframe2 == null) {
                        f = Float.NaN;
                    } else {
                        f = keyframe2.f14064z;
                    }
                    scenario.setKeyframeZ(i, f, (InterpolationType) selectBox3.getSelected());
                    CameraTools.this.m20265B();
                }
            });
            table3.add((Table) selectBox3).size(128.0f, 24.0f).padLeft(8.0f);
            Group group3 = new Group();
            group3.setTransform(false);
            table3.add((Table) group3).size(256.0f, 16.0f).padBottom(4.0f).padTop(4.0f).padLeft(8.0f);
            Image image5 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            image5.setColor(1.0f, 1.0f, 1.0f, 0.14f);
            image5.setSize(256.0f, 16.0f);
            group3.addActor(image5);
            Image image6 = new Image(Game.f8589i.assetManager.getDrawable("small-circle"));
            image6.setSize(16.0f, 16.0f);
            image6.addAction(Actions.forever(Actions.sequence(Actions.moveTo(0.0f, 0.0f), Actions.moveTo(240.0f, 0.0f, 1.5f, InterpolationType.getObject(interpolationType3)))));
            group3.addActor(image6);
            LinearChartActor linearChartActor3 = new LinearChartActor();
            linearChartActor3.setChart(interpolationType3);
            linearChartActor3.setColor(color5, new Color(0.0f, 0.0f, 0.0f, 0.28f));
            table3.add((Table) linearChartActor3).size(128.0f, 24.0f).padLeft(8.0f);
            table3.add().height(1.0f).expandX().fillX().row();
        }
    }

    public void postRender(float f) {
        boolean z;
        boolean z2;
        float f2;
        double d;
        Vector3 vector3;
        double d2;
        Scenario.Keyframe keyframe;
        CameraController cameraController;
        float f3;
        Color color;
        Color color2;
        Color color3;
        Color color4;
        if (!m20241x()) {
            return;
        }
        if (Game.f8589i.uiManager.stage.getKeyboardFocus() == null && Gdx.input.isKeyJustPressed(139)) {
            setVisible(!isVisible());
        }
        if (isVisible() && Gdx.input.isKeyJustPressed(66)) {
            Game.f8589i.uiManager.stage.unfocusAll();
        }
        CameraController m20242w = m20242w();
        if (Gdx.input.isKeyPressed(129)) {
            if (m20242w != null) {
                if (Gdx.input.isKeyPressed(21)) {
                    this.f13965d.f5527x -= this.f13967f * f;
                    z = true;
                } else {
                    z = false;
                }
                if (Gdx.input.isKeyPressed(22)) {
                    this.f13965d.f5527x += this.f13967f * f;
                    z = true;
                }
                if (Gdx.input.isKeyPressed(19)) {
                    this.f13965d.f5528y += this.f13967f * f;
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (Gdx.input.isKeyPressed(20)) {
                    this.f13965d.f5528y -= this.f13967f * f;
                    z2 = true;
                }
                if (Gdx.input.isKeyPressed(76)) {
                    f2 = this.f13968g * f;
                } else {
                    f2 = 0.0f;
                }
                if (Gdx.input.isKeyPressed(75)) {
                    f2 = (-this.f13968g) * f;
                }
            } else {
                z = false;
                z2 = false;
                f2 = 0.0f;
            }
            if (Gdx.input.isKeyJustPressed(8)) {
                setSelectedScenarioIdx(0, true);
            } else if (Gdx.input.isKeyJustPressed(9)) {
                setSelectedScenarioIdx(1, true);
            } else if (Gdx.input.isKeyJustPressed(10)) {
                setSelectedScenarioIdx(2, true);
            } else if (Gdx.input.isKeyJustPressed(11)) {
                setSelectedScenarioIdx(3, true);
            } else if (Gdx.input.isKeyJustPressed(12)) {
                setSelectedScenarioIdx(4, true);
            }
        } else {
            z = false;
            z2 = false;
            f2 = 0.0f;
        }
        if (Gdx.input.isKeyJustPressed(69)) {
            Scenario selectedScenario = getSelectedScenario();
            if (selectedScenario != null && m20242w != null) {
                m20242w.playScenario(selectedScenario, 0.0f, this.f13983v);
            } else if (selectedScenario == null) {
                Game.f8589i.uiManager.notifications.add("Camera scenario is not loaded", null, null, null);
            }
        }
        Vector2 vector2 = this.f13965d;
        float f4 = vector2.f5527x;
        if (f4 < 0.0f) {
            float f5 = this.f13966e;
            if (f4 < (-f5)) {
                vector2.f5527x = -f5;
            }
        } else {
            float f6 = this.f13966e;
            if (f4 > f6) {
                vector2.f5527x = f6;
            }
        }
        float f7 = vector2.f5528y;
        if (f7 < 0.0f) {
            float f8 = this.f13966e;
            if (f7 < (-f8)) {
                vector2.f5528y = -f8;
            }
        } else {
            float f9 = this.f13966e;
            if (f7 > f9) {
                vector2.f5528y = f9;
            }
        }
        if (m20242w != null) {
            Vector3 lookPos = m20242w.getLookPos();
            if (!this.f13965d.isZero()) {
                float f10 = lookPos.f5533x;
                Vector2 vector22 = this.f13965d;
                m20242w.lookAt(f10 + (vector22.f5527x * f), lookPos.f5534y + (vector22.f5528y * f));
                if (!z) {
                    Vector2 vector23 = this.f13965d;
                    float f11 = vector23.f5527x;
                    if (f11 > 0.0f) {
                        float f12 = f11 - (this.f13969h * f);
                        vector23.f5527x = f12;
                        if (f12 < 0.0f) {
                            vector23.f5527x = 0.0f;
                        }
                    } else {
                        float f13 = f11 + (this.f13969h * f);
                        vector23.f5527x = f13;
                        if (f13 > 0.0f) {
                            vector23.f5527x = 0.0f;
                        }
                    }
                }
                if (!z2) {
                    Vector2 vector24 = this.f13965d;
                    float f14 = vector24.f5528y;
                    if (f14 > 0.0f) {
                        float f15 = f14 - (this.f13969h * f);
                        vector24.f5528y = f15;
                        if (f15 < 0.0f) {
                            vector24.f5528y = 0.0f;
                        }
                    } else {
                        float f16 = f14 + (this.f13969h * f);
                        vector24.f5528y = f16;
                        if (f16 > 0.0f) {
                            vector24.f5528y = 0.0f;
                        }
                    }
                }
            }
            if (f2 != 0.0f) {
                double d3 = m20242w.zoom;
                double d4 = f2;
                Double.isNaN(d4);
                m20242w.setZoom(d3 + d4);
            }
        }
        if (m20242w != null) {
            Vector3 lookPos2 = m20242w.getLookPos();
            this.f13970i.setText(((int) lookPos2.f5533x) + " : " + ((int) lookPos2.f5534y));
            this.f13970i.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
            this.f13971j.setText((((float) MathUtils.round(((float) m20242w.zoom) * 100.0f)) / 100.0f) + "");
            this.f13972k.setText((((float) MathUtils.round(this.f13965d.f5527x * 10.0f)) / 10.0f) + " : " + (MathUtils.round(this.f13965d.f5528y * 10.0f) / 10.0f));
        } else {
            this.f13970i.setText("No camera");
            this.f13970i.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            this.f13971j.setText("-");
            this.f13972k.setText("-");
        }
        Scenario selectedScenario2 = getSelectedScenario();
        if (m20242w != null && this.f13984w && selectedScenario2 != null) {
            Game game = Game.f8589i;
            SpriteBatch spriteBatch = game.renderingManager.batch;
            ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = game.assetManager.getBlankWhiteTextureRegion();
            Color color5 = new Color();
            Color color6 = new Color();
            Color color7 = MaterialColor.GREEN.P500;
            Color color8 = MaterialColor.RED.P500;
            BitmapFont debugFont = Game.f8589i.assetManager.getDebugFont(false);
            spriteBatch.setProjectionMatrix(m20242w.camera.combined);
            spriteBatch.begin();
            float f17 = selectedScenario2.length / selectedScenario2.fps;
            double d5 = 0.0d;
            double d6 = 0.0d;
            float f18 = Float.NaN;
            float f19 = Float.NaN;
            float f20 = Float.NaN;
            while (true) {
                d = f17;
                if (d5 > d) {
                    break;
                }
                Vector3 calculate = selectedScenario2.calculate((float) d5);
                if (!Float.isNaN(f18) && !Float.isNaN(f19) && !Float.isNaN(calculate.f5533x) && !Float.isNaN(calculate.f5534y)) {
                    Color color9 = color5.set(color7);
                    Double.isNaN(d);
                    cameraController = m20242w;
                    color9.lerp(color8, (float) (d6 / d));
                    Color color10 = color6.set(color7);
                    Double.isNaN(d);
                    color10.lerp(color8, (float) (d5 / d));
                    d6 = d5;
                    f3 = f17;
                    color = color8;
                    color2 = color7;
                    color3 = color6;
                    color4 = color5;
                    DrawUtils.texturedLine(spriteBatch, blankWhiteTextureRegion, f18, f19, calculate.f5533x, calculate.f5534y, f20 * 2.0f, 2.0f * calculate.f5535z, color4, color3);
                } else {
                    cameraController = m20242w;
                    d6 = d5;
                    f3 = f17;
                    color = color8;
                    color2 = color7;
                    color3 = color6;
                    color4 = color5;
                }
                float f21 = calculate.f5533x;
                float f22 = calculate.f5534y;
                d5 = d6 + 0.05d;
                color6 = color3;
                color5 = color4;
                f20 = calculate.f5535z;
                f18 = f21;
                f19 = f22;
                f17 = f3;
                m20242w = cameraController;
                color8 = color;
                color7 = color2;
            }
            CameraController cameraController2 = m20242w;
            ResourcePack.AtlasTextureRegion textureRegion = Game.f8589i.assetManager.getTextureRegion("circle");
            int i = -1;
            for (int i2 = 0; i2 < selectedScenario2.length; i2++) {
                Vector3 calculate2 = selectedScenario2.calculate(i2 / selectedScenario2.fps);
                if (i2 != i) {
                    int i3 = 0;
                    while (true) {
                        Array<Scenario.Keyframe> array = selectedScenario2.keyframes;
                        if (i3 >= array.size) {
                            break;
                        }
                        Scenario.Keyframe keyframe2 = array.items[i3];
                        if (keyframe2.frame == i2) {
                            spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                            spriteBatch.draw(textureRegion, calculate2.f5533x - 8.0f, calculate2.f5534y - 8.0f, 16.0f, 16.0f);
                            spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                            debugFont.draw(spriteBatch, String.valueOf(i2), calculate2.f5533x - 1.0f, calculate2.f5534y + 3.0f, 2.0f, 1, false);
                            keyframe = keyframe2;
                        } else {
                            keyframe = keyframe2;
                        }
                        if (keyframe.frame >= i2) {
                            break;
                        }
                        i3++;
                    }
                    i = i2;
                }
            }
            spriteBatch.end();
            spriteBatch.setProjectionMatrix(Game.f8589i.uiManager.stage.getCamera().combined);
            double d7 = 0.01d;
            spriteBatch.begin();
            float floatBits = new Color(1.0f, 1.0f, 1.0f, 0.14f).toFloatBits();
            double d8 = 0.0d;
            int i4 = 0;
            float f23 = Float.NaN;
            float f24 = Float.NaN;
            while (d8 <= d) {
                Vector3 calculate3 = selectedScenario2.calculate((float) d8);
                if (!Float.isNaN(f23) && !Float.isNaN(f24) && !Float.isNaN(calculate3.f5533x) && !Float.isNaN(calculate3.f5534y)) {
                    double distanceBetweenPoints = PMath.getDistanceBetweenPoints(calculate3.f5533x, calculate3.f5534y, f23, f24);
                    Double.isNaN(distanceBetweenPoints);
                    float f25 = i4;
                    vector3 = calculate3;
                    d2 = d8;
                    DrawUtils.texturedLine(spriteBatch, blankWhiteTextureRegion, f25, 0.0f, f25, ((float) (distanceBetweenPoints / d7)) * 0.5f, 2.0f, floatBits, floatBits);
                } else {
                    vector3 = calculate3;
                    d2 = d8;
                }
                f23 = vector3.f5533x;
                f24 = vector3.f5534y;
                i4++;
                d7 = 0.01d;
                d8 = d2 + 0.01d;
            }
            float floatBits2 = MaterialColor.GREEN.P500.toFloatBits();
            if (cameraController2.currentScenario != null) {
                double d9 = cameraController2.scenarioTime;
                Double.isNaN(d9);
                Vector3 calculate4 = selectedScenario2.calculate((float) (d9 - 0.005d));
                float f26 = calculate4.f5533x;
                float f27 = calculate4.f5534y;
                double d10 = cameraController2.scenarioTime;
                Double.isNaN(d10);
                Vector3 calculate5 = selectedScenario2.calculate((float) (d10 + 0.005d));
                if (!Float.isNaN(calculate5.f5533x) && !Float.isNaN(calculate5.f5534y) && !Float.isNaN(f26) && !Float.isNaN(f27)) {
                    double distanceBetweenPoints2 = PMath.getDistanceBetweenPoints(calculate5.f5533x, calculate5.f5534y, f26, f27);
                    Double.isNaN(distanceBetweenPoints2);
                    double d11 = cameraController2.scenarioTime;
                    Double.isNaN(d11);
                    float f28 = (float) (d11 / 0.01d);
                    DrawUtils.texturedLine(spriteBatch, blankWhiteTextureRegion, f28, 0.0f, f28, ((float) (distanceBetweenPoints2 / 0.01d)) * 0.5f, 4.0f, floatBits2, floatBits2);
                }
            }
            spriteBatch.end();
        }
        if (isVisible()) {
            m20239z();
        }
    }

    public void setSelectedScenarioIdx(int i, boolean z) {
        if (i >= 0 && i <= 8) {
            this.f13981t = i;
            if (z) {
                CameraController m20242w = m20242w();
                Scenario selectedScenario = getSelectedScenario();
                if (m20242w != null && selectedScenario != null) {
                    m20242w.playScenario(selectedScenario, selectedScenario.startFrame / selectedScenario.fps, this.f13983v);
                } else {
                    Logger.error("CameraTools", "controller " + m20242w + " scenario " + selectedScenario);
                }
            }
            updateScenarioMenu();
            return;
        }
        throw new IllegalArgumentException("idx is " + i);
    }

    public void setVisible(boolean z) {
        this.f13962a.getTable().setVisible(z);
        if (z) {
            update();
        } else {
            Game.f8589i.uiManager.stage.unfocusAll();
        }
    }

    public void update() {
        this.f13964c.clear();
        int i = 0;
        while (true) {
            Array<UiManager.UiLayer>[] arrayArr = Game.f8589i.uiManager.layers;
            if (i < arrayArr.length) {
                Array<UiManager.UiLayer> array = arrayArr[i];
                for (int i2 = 0; i2 < array.size; i2++) {
                    final UiManager.UiLayer uiLayer = array.items[i2];
                    this.f13964c.add(new LabelToggleButton(uiLayer.name, uiLayer.getTable().isVisible(), 21, 21.0f, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.shared.CameraTools.8
                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                        public void retrieved(Boolean bool) {
                            uiLayer.getTable().setVisible(bool.booleanValue());
                        }
                    })).fillX().row();
                }
                i++;
            } else {
                updateScenarioMenu();
                return;
            }
        }
    }

    public void updateScenarioMenu() {
        this.f13975n.clear();
        Table table = new Table();
        this.f13975n.add(table).expandX().fillX().row();
        table.add((Table) new Label("Scenarios", Game.f8589i.assetManager.getLabelStyle(24))).padRight(16.0f).left();
        for (final int i = 1; i <= 5; i++) {
            RectButton rectButton = new RectButton(String.valueOf(i), Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.9
                @Override // java.lang.Runnable
                public void run() {
                    CameraTools.this.setSelectedScenarioIdx(i - 1, false);
                }
            });
            int i2 = i - 1;
            if (this.f13981t == i2) {
                Color color = Color.WHITE;
                rectButton.setBackgroundColors(color, color, color, color);
                Color color2 = Color.BLACK;
                rectButton.setLabelColors(color2, color2, color2, color2);
            } else {
                rectButton.setBackgroundColors(new Color(0.0f, 0.0f, 0.0f, 0.0f), new Color(0.0f, 0.0f, 0.0f, 0.0f), new Color(0.0f, 0.0f, 0.0f, 0.0f), new Color(0.0f, 0.0f, 0.0f, 0.0f));
                if (this.f13982u[i2] == null) {
                    Color color3 = MaterialColor.LIGHT_BLUE.P500;
                    rectButton.setLabelColors(color3, color3, color3, Color.WHITE);
                } else {
                    Color color4 = MaterialColor.LIGHT_GREEN.P500;
                    rectButton.setLabelColors(color4, color4, color4, Color.WHITE);
                }
            }
            table.add((Table) rectButton).size(24.0f, 24.0f).bottom();
        }
        table.add().height(1.0f).expandX().fillX();
        table.add(new LabelToggleButton("Loop", this.f13983v, 21, 16.0f, false, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.shared.CameraTools.10
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                CameraTools.this.f13983v = bool.booleanValue();
                CameraTools.this.updateScenarioMenu();
            }
        })).height(24.0f).padLeft(64.0f);
        table.add(new LabelToggleButton("Draw", this.f13984w, 21, 16.0f, false, new ObjectRetriever<Boolean>() { // from class: com.prineside.tdi2.ui.shared.CameraTools.11
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(Boolean bool) {
                CameraTools.this.f13984w = bool.booleanValue();
                CameraTools.this.updateScenarioMenu();
            }
        })).height(24.0f).padLeft(16.0f);
        Table table2 = new Table();
        this.f13975n.add(table2).expandX().fillX().row();
        final Scenario selectedScenario = getSelectedScenario();
        if (selectedScenario != null) {
            Table table3 = new Table();
            this.f13975n.add(table3).fillX().expandX().row();
            final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(selectedScenario.name, this.f13973l);
            textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.12
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    selectedScenario.name = textFieldXPlatform.getText();
                }
            });
            table3.add((Table) textFieldXPlatform).size(160.0f, 24.0f);
            PaddedImageButton paddedImageButton = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-times"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.13
                @Override // java.lang.Runnable
                public void run() {
                    Game.f8589i.uiManager.dialog.showConfirm("Remove scenario?", new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.13.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CameraTools.this.f13982u[CameraTools.this.f13981t] = null;
                            CameraTools.this.updateScenarioMenu();
                        }
                    });
                }
            }, MaterialColor.RED.P500, MaterialColor.RED.P300, MaterialColor.RED.P800);
            paddedImageButton.setIconPosition(4.0f, 4.0f);
            paddedImageButton.setIconSize(16.0f, 16.0f);
            table3.add((Table) paddedImageButton).size(24.0f).padLeft(16.0f);
            Label label = new Label("FPS:", Game.f8589i.assetManager.getLabelStyle(21));
            label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            table3.add((Table) label).height(24.0f).padLeft(16.0f);
            final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform(String.valueOf(selectedScenario.fps), this.f13973l);
            textFieldXPlatform2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.14
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        selectedScenario.fps = Integer.valueOf(textFieldXPlatform2.getText()).intValue();
                        Scenario scenario = selectedScenario;
                        if (scenario.fps < 1) {
                            scenario.fps = 1;
                        }
                        CameraTools.this.m20266A();
                    } catch (Exception unused) {
                    }
                }
            });
            table3.add((Table) textFieldXPlatform2).size(48.0f, 24.0f);
            Label label2 = new Label("Start:", Game.f8589i.assetManager.getLabelStyle(21));
            label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            table3.add((Table) label2).height(24.0f).padLeft(16.0f);
            final TextFieldXPlatform textFieldXPlatform3 = new TextFieldXPlatform(String.valueOf(selectedScenario.startFrame), this.f13973l);
            textFieldXPlatform3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.15
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        selectedScenario.startFrame = Integer.valueOf(textFieldXPlatform3.getText()).intValue();
                        Scenario scenario = selectedScenario;
                        if (scenario.startFrame < 0) {
                            scenario.startFrame = 0;
                        }
                        CameraTools.this.m20266A();
                    } catch (Exception unused) {
                    }
                }
            });
            table3.add((Table) textFieldXPlatform3).size(60.0f, 24.0f);
            Label label3 = new Label("Length:", Game.f8589i.assetManager.getLabelStyle(21));
            label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
            table3.add((Table) label3).height(24.0f).padLeft(16.0f);
            final TextFieldXPlatform textFieldXPlatform4 = new TextFieldXPlatform(String.valueOf(selectedScenario.length), this.f13973l);
            textFieldXPlatform4.addListener(new ChangeListener() { // from class: com.prineside.tdi2.ui.shared.CameraTools.16
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        selectedScenario.length = Integer.valueOf(textFieldXPlatform4.getText()).intValue();
                        Scenario scenario = selectedScenario;
                        if (scenario.length < 1) {
                            scenario.length = 1;
                        }
                        CameraTools.this.m20266A();
                    } catch (Exception unused) {
                    }
                }
            });
            table3.add((Table) textFieldXPlatform4).size(48.0f, 24.0f);
            PaddedImageButton paddedImageButton2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable("icon-triangle-right"), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.17
                @Override // java.lang.Runnable
                public void run() {
                    CameraController m20242w = CameraTools.this.m20242w();
                    Scenario selectedScenario2 = CameraTools.this.getSelectedScenario();
                    if (m20242w != null && selectedScenario2 != null) {
                        float f = selectedScenario2.startFrame / selectedScenario2.fps;
                        if (CameraTools.this.f13985x >= selectedScenario2.startFrame && CameraTools.this.f13985x <= selectedScenario2.length) {
                            f /= selectedScenario2.fps;
                        }
                        m20242w.playScenario(selectedScenario2, f, CameraTools.this.f13983v);
                    }
                }
            }, MaterialColor.GREEN.P500, MaterialColor.GREEN.P300, MaterialColor.GREEN.P800);
            paddedImageButton2.setIconPosition(4.0f, 4.0f);
            paddedImageButton2.setIconSize(16.0f, 16.0f);
            table3.add((Table) paddedImageButton2).size(24.0f).padLeft(16.0f);
            table3.add((Table) new LabelButton("From JSON", Game.f8589i.assetManager.getLabelStyle(21), new RunnableC269518())).left().padLeft(20.0f).height(24.0f);
            table3.add((Table) new LabelButton("To JSON", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.19
                @Override // java.lang.Runnable
                public void run() {
                    String str;
                    Scenario selectedScenario2 = CameraTools.this.getSelectedScenario();
                    if (selectedScenario2 != null) {
                        Json json = new Json(JsonWriter.OutputType.json);
                        StringWriter stringWriter = new StringWriter();
                        json.setWriter(stringWriter);
                        json.writeObjectStart();
                        selectedScenario2.toJson(json);
                        json.writeObjectEnd();
                        str = stringWriter.toString();
                    } else {
                        str = "";
                    }
                    Gdx.app.getClipboard().setContents(str);
                    Game.f8589i.uiManager.notifications.add("Scenario copied to the clipboard", null, null, null);
                }
            })).left().padLeft(20.0f).height(24.0f);
            table3.add().height(1.0f).expandX().fillX();
            this.f13977p = new Table();
            Drawable tint = new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(new Color(0.0f, 0.0f, 0.0f, 0.28f));
            Drawable tint2 = new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(new Color(1044266751));
            tint.setMinWidth(12.0f);
            tint2.setMinWidth(12.0f);
            this.f13975n.add((Table) new ScrollPane(this.f13977p, new ScrollPane.ScrollPaneStyle(null, tint, tint2, null, null))).padTop(8.0f).height(120.0f).expandX().fillX().row();
            m20266A();
            Table table4 = new Table();
            this.f13976o = table4;
            this.f13975n.add(table4).expandX().fillX().padTop(16.0f).row();
            m20265B();
            return;
        }
        table2.add((Table) new RectButton("New scenario", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.ui.shared.CameraTools.20
            @Override // java.lang.Runnable
            public void run() {
                Scenario scenario = new Scenario();
                CameraController m20242w = CameraTools.this.m20242w();
                if (m20242w == null) {
                    InterpolationType interpolationType = InterpolationType.linear;
                    scenario.setKeyframe(0, 0.0f, interpolationType, 0.0f, interpolationType, 1.0f, interpolationType);
                } else {
                    Vector3 vector3 = m20242w.camera.position;
                    float f = vector3.f5533x;
                    InterpolationType interpolationType2 = InterpolationType.linear;
                    scenario.setKeyframe(0, f, interpolationType2, vector3.f5534y, interpolationType2, (float) m20242w.zoom, interpolationType2);
                }
                CameraTools.this.f13982u[CameraTools.this.f13981t] = scenario;
                CameraTools.this.updateScenarioMenu();
            }
        })).size(192.0f, 32.0f);
        this.f13977p = null;
    }

    /* renamed from: w */
    public final CameraController m20242w() {
        if (Game.f8589i.screenManager.getCurrentScreen() instanceof GameScreen) {
            return ((GameScreen) Game.f8589i.screenManager.getCurrentScreen()).f10670S._input.cameraController;
        }
        if (Game.f8589i.screenManager.getCurrentScreen() instanceof ResearchesScreen) {
            return ((ResearchesScreen) Game.f8589i.screenManager.getCurrentScreen()).cameraController;
        }
        if (Game.f8589i.screenManager.getCurrentScreen() instanceof MapEditorScreen) {
            return ((MapEditorScreen) Game.f8589i.screenManager.getCurrentScreen()).cameraController;
        }
        return null;
    }

    /* renamed from: y */
    public final void m20240y() {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeObjectStart();
        json.writeValue("selectedScenarioIdx", Integer.valueOf(this.f13981t));
        json.writeValue("loopScenario", Boolean.valueOf(this.f13983v));
        json.writeValue("drawScenarioOnMap", Boolean.valueOf(this.f13984w));
        json.writeArrayStart("loadedScenarios");
        int i = 0;
        while (true) {
            Scenario[] scenarioArr = this.f13982u;
            if (i < scenarioArr.length) {
                if (scenarioArr[i] != null) {
                    json.writeObjectStart();
                    json.writeValue("idx", Integer.valueOf(i));
                    json.writeObjectStart("scenario");
                    this.f13982u[i].toJson(json);
                    json.writeObjectEnd();
                    json.writeObjectEnd();
                }
                i++;
            } else {
                json.writeArrayEnd();
                json.writeObjectEnd();
                preferencesManager.set("cameraTools", stringWriter.toString());
                preferencesManager.flush();
                Logger.log("CameraTools", "saved preferences");
                return;
            }
        }
    }

    /* renamed from: z */
    public final void m20239z() {
        Scenario scenario;
        Image image;
        CameraController m20242w = m20242w();
        if (m20242w != null && (scenario = m20242w.currentScenario) != null && (image = this.f13979r) != null) {
            image.setX(((m20242w.scenarioTime * scenario.fps) * 16.0f) - 1.0f);
        }
        Image image2 = this.f13980s;
        if (image2 != null) {
            image2.setPosition((this.f13985x * 16) - 2.0f, 24.0f);
        }
    }
}
