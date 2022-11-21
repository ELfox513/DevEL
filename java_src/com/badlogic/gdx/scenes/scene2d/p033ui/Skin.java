package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.Button;
import com.badlogic.gdx.scenes.scene2d.p033ui.CheckBox;
import com.badlogic.gdx.scenes.scene2d.p033ui.ImageButton;
import com.badlogic.gdx.scenes.scene2d.p033ui.ImageTextButton;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.List;
import com.badlogic.gdx.scenes.scene2d.p033ui.ProgressBar;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.p033ui.Slider;
import com.badlogic.gdx.scenes.scene2d.p033ui.SplitPane;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextTooltip;
import com.badlogic.gdx.scenes.scene2d.p033ui.Touchpad;
import com.badlogic.gdx.scenes.scene2d.p033ui.Tree;
import com.badlogic.gdx.scenes.scene2d.p033ui.Window;
import com.badlogic.gdx.scenes.scene2d.utils.BaseDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.SpriteDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TiledDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.SerializationException;
import com.badlogic.gdx.utils.reflect.ClassReflection;
import com.badlogic.gdx.utils.reflect.Method;
import com.badlogic.gdx.utils.reflect.ReflectionException;
import net.bytebuddy.utility.JavaConstant;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Skin */
/* loaded from: classes.dex */
public class Skin implements Disposable {

    /* renamed from: p */
    public static final Class[] f6035p = {BitmapFont.class, Color.class, TintedDrawable.class, NinePatchDrawable.class, SpriteDrawable.class, TextureRegionDrawable.class, TiledDrawable.class, Button.ButtonStyle.class, CheckBox.CheckBoxStyle.class, ImageButton.ImageButtonStyle.class, ImageTextButton.ImageTextButtonStyle.class, Label.LabelStyle.class, List.ListStyle.class, ProgressBar.ProgressBarStyle.class, ScrollPane.ScrollPaneStyle.class, SelectBox.SelectBoxStyle.class, Slider.SliderStyle.class, SplitPane.SplitPaneStyle.class, TextButton.TextButtonStyle.class, TextField.TextFieldStyle.class, TextTooltip.TextTooltipStyle.class, Touchpad.TouchpadStyle.class, Tree.TreeStyle.class, Window.WindowStyle.class};

    /* renamed from: b */
    public TextureAtlas f6037b;

    /* renamed from: k */
    public final ObjectMap<String, Class> f6039k;

    /* renamed from: a */
    public ObjectMap<Class, ObjectMap<String, Object>> f6036a = new ObjectMap<>();

    /* renamed from: d */
    public float f6038d = 1.0f;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Skin$TintedDrawable */
    /* loaded from: classes.dex */
    public static class TintedDrawable {
        public Color color;
        public String name;
    }

    public Skin() {
        Class[] clsArr = f6035p;
        this.f6039k = new ObjectMap<>(clsArr.length);
        for (Class cls : clsArr) {
            this.f6039k.put(cls.getSimpleName(), cls);
        }
    }

    public void add(String str, Object obj) {
        add(str, obj, obj.getClass());
    }

    public <T> T get(Class<T> cls) {
        return (T) get("default", cls);
    }

    @Null
    public <T> ObjectMap<String, T> getAll(Class<T> cls) {
        return (ObjectMap<String, T>) this.f6036a.get(cls);
    }

    @Null
    public TextureAtlas getAtlas() {
        return this.f6037b;
    }

    public Color getColor(String str) {
        return (Color) get(str, Color.class);
    }

    public BitmapFont getFont(String str) {
        return (BitmapFont) get(str, BitmapFont.class);
    }

    public ObjectMap<String, Class> getJsonClassTags() {
        return this.f6039k;
    }

    public Drawable newDrawable(String str) {
        return newDrawable(getDrawable(str));
    }

    public void setScale(float f) {
        this.f6038d = f;
    }

    public void add(String str, Object obj, Class cls) {
        if (str == null) {
            throw new IllegalArgumentException("name cannot be null.");
        }
        if (obj != null) {
            ObjectMap<String, Object> objectMap = this.f6036a.get(cls);
            if (objectMap == null) {
                objectMap = new ObjectMap<>((cls == TextureRegion.class || cls == Drawable.class || cls == Sprite.class) ? 256 : 64);
                this.f6036a.put(cls, objectMap);
            }
            objectMap.put(str, obj);
            return;
        }
        throw new IllegalArgumentException("resource cannot be null.");
    }

    /* renamed from: b */
    public Json m23794b(final FileHandle fileHandle) {
        Json json = new Json() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Skin.1
            @Override // com.badlogic.gdx.utils.Json
            /* renamed from: e */
            public boolean mo23627e(Class cls, String str) {
                return str.equals("parent");
            }

            @Override // com.badlogic.gdx.utils.Json
            public void readFields(Object obj, JsonValue jsonValue) {
                if (jsonValue.has("parent")) {
                    String str = (String) readValue("parent", String.class, jsonValue);
                    Class<?> cls = obj.getClass();
                    do {
                        try {
                            copyFields(Skin.this.get(str, cls), obj);
                        } catch (GdxRuntimeException unused) {
                            cls = cls.getSuperclass();
                            if (cls == Object.class) {
                                SerializationException serializationException = new SerializationException("Unable to find parent resource with name: " + str);
                                serializationException.addTrace(jsonValue.child.trace());
                                throw serializationException;
                            }
                        }
                    } while (cls == Object.class);
                    SerializationException serializationException2 = new SerializationException("Unable to find parent resource with name: " + str);
                    serializationException2.addTrace(jsonValue.child.trace());
                    throw serializationException2;
                }
                super.readFields(obj, jsonValue);
            }

            @Override // com.badlogic.gdx.utils.Json
            public <T> T readValue(Class<T> cls, Class cls2, JsonValue jsonValue) {
                if (jsonValue != null && jsonValue.isString() && !ClassReflection.isAssignableFrom(CharSequence.class, cls)) {
                    return (T) Skin.this.get(jsonValue.asString(), cls);
                }
                return (T) super.readValue(cls, cls2, jsonValue);
            }
        };
        json.setTypeName(null);
        json.setUsePrototypes(false);
        json.setSerializer(Skin.class, new Json.ReadOnlySerializer<Skin>() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Skin.2
            /* renamed from: a */
            public final void m23793a(Json json2, Class cls, JsonValue jsonValue) {
                Class cls2;
                if (cls == TintedDrawable.class) {
                    cls2 = Drawable.class;
                } else {
                    cls2 = cls;
                }
                for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
                    Object readValue = json2.readValue(cls, jsonValue2);
                    if (readValue != null) {
                        try {
                            Skin.this.add(jsonValue2.name, readValue, cls2);
                            if (cls2 != Drawable.class && ClassReflection.isAssignableFrom(Drawable.class, cls2)) {
                                Skin.this.add(jsonValue2.name, readValue, Drawable.class);
                            }
                        } catch (Exception e) {
                            throw new SerializationException("Error reading " + ClassReflection.getSimpleName(cls) + ": " + jsonValue2.name, e);
                        }
                    }
                }
            }

            @Override // com.badlogic.gdx.utils.Json.ReadOnlySerializer, com.badlogic.gdx.utils.Json.Serializer
            public Skin read(Json json2, JsonValue jsonValue, Class cls) {
                for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
                    try {
                        Class cls2 = json2.getClass(jsonValue2.name());
                        if (cls2 == null) {
                            cls2 = ClassReflection.forName(jsonValue2.name());
                        }
                        m23793a(json2, cls2, jsonValue2);
                    } catch (ReflectionException e) {
                        throw new SerializationException(e);
                    }
                }
                return this;
            }
        });
        json.setSerializer(BitmapFont.class, new Json.ReadOnlySerializer<BitmapFont>() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Skin.3
            @Override // com.badlogic.gdx.utils.Json.ReadOnlySerializer, com.badlogic.gdx.utils.Json.Serializer
            public BitmapFont read(Json json2, JsonValue jsonValue, Class cls) {
                BitmapFont bitmapFont;
                String str = (String) json2.readValue("file", String.class, jsonValue);
                int intValue = ((Integer) json2.readValue("scaledSize", (Class<Class>) Integer.TYPE, (Class) (-1), jsonValue)).intValue();
                Boolean bool = Boolean.FALSE;
                Boolean bool2 = (Boolean) json2.readValue("flip", (Class<Class>) Boolean.class, (Class) bool, jsonValue);
                Boolean bool3 = (Boolean) json2.readValue("markupEnabled", (Class<Class>) Boolean.class, (Class) bool, jsonValue);
                FileHandle child = fileHandle.parent().child(str);
                if (!child.exists()) {
                    child = Gdx.files.internal(str);
                }
                if (child.exists()) {
                    String nameWithoutExtension = child.nameWithoutExtension();
                    try {
                        Array<TextureRegion> regions = this.getRegions(nameWithoutExtension);
                        if (regions != null) {
                            bitmapFont = new BitmapFont(new BitmapFont.BitmapFontData(child, bool2.booleanValue()), regions, true);
                        } else {
                            TextureRegion textureRegion = (TextureRegion) this.optional(nameWithoutExtension, TextureRegion.class);
                            if (textureRegion != null) {
                                bitmapFont = new BitmapFont(child, textureRegion, bool2.booleanValue());
                            } else {
                                FileHandle parent = child.parent();
                                FileHandle child2 = parent.child(nameWithoutExtension + ".png");
                                if (child2.exists()) {
                                    bitmapFont = new BitmapFont(child, child2, bool2.booleanValue());
                                } else {
                                    bitmapFont = new BitmapFont(child, bool2.booleanValue());
                                }
                            }
                        }
                        bitmapFont.getData().markupEnabled = bool3.booleanValue();
                        if (intValue != -1) {
                            bitmapFont.getData().setScale(intValue / bitmapFont.getCapHeight());
                        }
                        return bitmapFont;
                    } catch (RuntimeException e) {
                        throw new SerializationException("Error loading bitmap font: " + child, e);
                    }
                }
                throw new SerializationException("Font file not found: " + child);
            }
        });
        json.setSerializer(Color.class, new Json.ReadOnlySerializer<Color>() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Skin.4
            @Override // com.badlogic.gdx.utils.Json.ReadOnlySerializer, com.badlogic.gdx.utils.Json.Serializer
            public Color read(Json json2, JsonValue jsonValue, Class cls) {
                if (jsonValue.isString()) {
                    return (Color) Skin.this.get(jsonValue.asString(), Color.class);
                }
                String str = (String) json2.readValue("hex", (Class<Class>) String.class, (Class) null, jsonValue);
                if (str != null) {
                    return Color.valueOf(str);
                }
                Class cls2 = Float.TYPE;
                return new Color(((Float) json2.readValue("r", (Class<Class>) cls2, (Class) Float.valueOf(0.0f), jsonValue)).floatValue(), ((Float) json2.readValue("g", (Class<Class>) cls2, (Class) Float.valueOf(0.0f), jsonValue)).floatValue(), ((Float) json2.readValue("b", (Class<Class>) cls2, (Class) Float.valueOf(0.0f), jsonValue)).floatValue(), ((Float) json2.readValue("a", (Class<Class>) cls2, (Class) Float.valueOf(1.0f), jsonValue)).floatValue());
            }
        });
        json.setSerializer(TintedDrawable.class, new Json.ReadOnlySerializer() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Skin.5
            @Override // com.badlogic.gdx.utils.Json.ReadOnlySerializer, com.badlogic.gdx.utils.Json.Serializer
            public Object read(Json json2, JsonValue jsonValue, Class cls) {
                String str = (String) json2.readValue("name", String.class, jsonValue);
                Color color = (Color) json2.readValue("color", Color.class, jsonValue);
                if (color != null) {
                    Drawable newDrawable = Skin.this.newDrawable(str, color);
                    if (newDrawable instanceof BaseDrawable) {
                        ((BaseDrawable) newDrawable).setName(jsonValue.name + " (" + str + ", " + color + ")");
                    }
                    return newDrawable;
                }
                throw new SerializationException("TintedDrawable missing color: " + jsonValue);
            }
        });
        ObjectMap.Entries<String, Class> it = this.f6039k.iterator();
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            json.addClassTag((String) next.key, (Class) next.value);
        }
        return json;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        TextureAtlas textureAtlas = this.f6037b;
        if (textureAtlas != null) {
            textureAtlas.dispose();
        }
        ObjectMap.Values<ObjectMap<String, Object>> it = this.f6036a.values().iterator();
        while (it.hasNext()) {
            ObjectMap.Values<Object> it2 = it.next().values().iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                if (next instanceof Disposable) {
                    ((Disposable) next).dispose();
                }
            }
        }
    }

    @Null
    public String find(Object obj) {
        if (obj != null) {
            ObjectMap<String, Object> objectMap = this.f6036a.get(obj.getClass());
            if (objectMap == null) {
                return null;
            }
            return objectMap.findKey(obj, true);
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    public <T> T get(String str, Class<T> cls) {
        if (str != null) {
            if (cls != null) {
                if (cls == Drawable.class) {
                    return (T) getDrawable(str);
                }
                if (cls == TextureRegion.class) {
                    return (T) getRegion(str);
                }
                if (cls == NinePatch.class) {
                    return (T) getPatch(str);
                }
                if (cls == Sprite.class) {
                    return (T) getSprite(str);
                }
                ObjectMap<String, Object> objectMap = this.f6036a.get(cls);
                if (objectMap != null) {
                    T t = (T) objectMap.get(str);
                    if (t != null) {
                        return t;
                    }
                    throw new GdxRuntimeException("No " + cls.getName() + " registered with name: " + str);
                }
                throw new GdxRuntimeException("No " + cls.getName() + " registered with name: " + str);
            }
            throw new IllegalArgumentException("type cannot be null.");
        }
        throw new IllegalArgumentException("name cannot be null.");
    }

    public Drawable getDrawable(String str) {
        Drawable spriteDrawable;
        Drawable spriteDrawable2;
        Drawable drawable = (Drawable) optional(str, Drawable.class);
        if (drawable != null) {
            return drawable;
        }
        try {
            TextureRegion region = getRegion(str);
            if (region instanceof TextureAtlas.AtlasRegion) {
                TextureAtlas.AtlasRegion atlasRegion = (TextureAtlas.AtlasRegion) region;
                if (atlasRegion.findValue("split") != null) {
                    spriteDrawable2 = new NinePatchDrawable(getPatch(str));
                } else if (atlasRegion.rotate || atlasRegion.packedWidth != atlasRegion.originalWidth || atlasRegion.packedHeight != atlasRegion.originalHeight) {
                    spriteDrawable2 = new SpriteDrawable(getSprite(str));
                }
                drawable = spriteDrawable2;
            }
            if (drawable == null) {
                Drawable textureRegionDrawable = new TextureRegionDrawable(region);
                try {
                    if (this.f6038d != 1.0f) {
                        scale(textureRegionDrawable);
                    }
                } catch (GdxRuntimeException unused) {
                }
                drawable = textureRegionDrawable;
            }
        } catch (GdxRuntimeException unused2) {
        }
        if (drawable == null) {
            NinePatch ninePatch = (NinePatch) optional(str, NinePatch.class);
            if (ninePatch != null) {
                spriteDrawable = new NinePatchDrawable(ninePatch);
            } else {
                Sprite sprite = (Sprite) optional(str, Sprite.class);
                if (sprite != null) {
                    spriteDrawable = new SpriteDrawable(sprite);
                } else {
                    throw new GdxRuntimeException("No Drawable, NinePatch, TextureRegion, Texture, or Sprite registered with name: " + str);
                }
            }
            drawable = spriteDrawable;
        }
        if (drawable instanceof BaseDrawable) {
            ((BaseDrawable) drawable).setName(str);
        }
        add(str, drawable, Drawable.class);
        return drawable;
    }

    public NinePatch getPatch(String str) {
        int[] findValue;
        NinePatch ninePatch = (NinePatch) optional(str, NinePatch.class);
        if (ninePatch != null) {
            return ninePatch;
        }
        try {
            TextureRegion region = getRegion(str);
            if ((region instanceof TextureAtlas.AtlasRegion) && (findValue = ((TextureAtlas.AtlasRegion) region).findValue("split")) != null) {
                ninePatch = new NinePatch(region, findValue[0], findValue[1], findValue[2], findValue[3]);
                int[] findValue2 = ((TextureAtlas.AtlasRegion) region).findValue("pad");
                if (findValue2 != null) {
                    ninePatch.setPadding(findValue2[0], findValue2[1], findValue2[2], findValue2[3]);
                }
            }
            if (ninePatch == null) {
                ninePatch = new NinePatch(region);
            }
            float f = this.f6038d;
            if (f != 1.0f) {
                ninePatch.scale(f, f);
            }
            add(str, ninePatch, NinePatch.class);
            return ninePatch;
        } catch (GdxRuntimeException unused) {
            throw new GdxRuntimeException("No NinePatch, TextureRegion, or Texture registered with name: " + str);
        }
    }

    public TextureRegion getRegion(String str) {
        TextureRegion textureRegion = (TextureRegion) optional(str, TextureRegion.class);
        if (textureRegion != null) {
            return textureRegion;
        }
        Texture texture = (Texture) optional(str, Texture.class);
        if (texture != null) {
            TextureRegion textureRegion2 = new TextureRegion(texture);
            add(str, textureRegion2, TextureRegion.class);
            return textureRegion2;
        }
        throw new GdxRuntimeException("No TextureRegion or Texture registered with name: " + str);
    }

    @Null
    public Array<TextureRegion> getRegions(String str) {
        TextureRegion textureRegion = (TextureRegion) optional(str + JavaConstant.Dynamic.DEFAULT_NAME + 0, TextureRegion.class);
        if (textureRegion != null) {
            Array<TextureRegion> array = new Array<>();
            int i = 1;
            while (textureRegion != null) {
                array.add(textureRegion);
                textureRegion = (TextureRegion) optional(str + JavaConstant.Dynamic.DEFAULT_NAME + i, TextureRegion.class);
                i++;
            }
            return array;
        }
        return null;
    }

    public Sprite getSprite(String str) {
        Sprite sprite = (Sprite) optional(str, Sprite.class);
        if (sprite != null) {
            return sprite;
        }
        try {
            TextureRegion region = getRegion(str);
            if (region instanceof TextureAtlas.AtlasRegion) {
                TextureAtlas.AtlasRegion atlasRegion = (TextureAtlas.AtlasRegion) region;
                if (atlasRegion.rotate || atlasRegion.packedWidth != atlasRegion.originalWidth || atlasRegion.packedHeight != atlasRegion.originalHeight) {
                    sprite = new TextureAtlas.AtlasSprite(atlasRegion);
                }
            }
            if (sprite == null) {
                sprite = new Sprite(region);
            }
            if (this.f6038d != 1.0f) {
                sprite.setSize(sprite.getWidth() * this.f6038d, sprite.getHeight() * this.f6038d);
            }
            add(str, sprite, Sprite.class);
            return sprite;
        } catch (GdxRuntimeException unused) {
            throw new GdxRuntimeException("No NinePatch, TextureRegion, or Texture registered with name: " + str);
        }
    }

    public TiledDrawable getTiledDrawable(String str) {
        TiledDrawable tiledDrawable = (TiledDrawable) optional(str, TiledDrawable.class);
        if (tiledDrawable != null) {
            return tiledDrawable;
        }
        TiledDrawable tiledDrawable2 = new TiledDrawable(getRegion(str));
        tiledDrawable2.setName(str);
        if (this.f6038d != 1.0f) {
            scale(tiledDrawable2);
            tiledDrawable2.setScale(this.f6038d);
        }
        add(str, tiledDrawable2, TiledDrawable.class);
        return tiledDrawable2;
    }

    public boolean has(String str, Class cls) {
        ObjectMap<String, Object> objectMap = this.f6036a.get(cls);
        if (objectMap == null) {
            return false;
        }
        return objectMap.containsKey(str);
    }

    public Drawable newDrawable(String str, float f, float f2, float f3, float f4) {
        return newDrawable(getDrawable(str), new Color(f, f2, f3, f4));
    }

    @Null
    public <T> T optional(String str, Class<T> cls) {
        if (str != null) {
            if (cls != null) {
                ObjectMap<String, Object> objectMap = this.f6036a.get(cls);
                if (objectMap == null) {
                    return null;
                }
                return (T) objectMap.get(str);
            }
            throw new IllegalArgumentException("type cannot be null.");
        }
        throw new IllegalArgumentException("name cannot be null.");
    }

    public void remove(String str, Class cls) {
        if (str != null) {
            this.f6036a.get(cls).remove(str);
            return;
        }
        throw new IllegalArgumentException("name cannot be null.");
    }

    @Null
    /* renamed from: a */
    public static Method m23795a(Class cls, String str) {
        Method[] methods;
        for (Method method : ClassReflection.getMethods(cls)) {
            if (method.getName().equals(str)) {
                return method;
            }
        }
        return null;
    }

    public void addRegions(TextureAtlas textureAtlas) {
        Array<TextureAtlas.AtlasRegion> regions = textureAtlas.getRegions();
        int i = regions.size;
        for (int i2 = 0; i2 < i; i2++) {
            TextureAtlas.AtlasRegion atlasRegion = regions.get(i2);
            String str = atlasRegion.name;
            if (atlasRegion.index != -1) {
                str = str + JavaConstant.Dynamic.DEFAULT_NAME + atlasRegion.index;
            }
            add(str, atlasRegion, TextureRegion.class);
        }
    }

    public void load(FileHandle fileHandle) {
        try {
            m23794b(fileHandle).fromJson(Skin.class, fileHandle);
        } catch (SerializationException e) {
            throw new SerializationException("Error reading file: " + fileHandle, e);
        }
    }

    public Drawable newDrawable(String str, Color color) {
        return newDrawable(getDrawable(str), color);
    }

    public void scale(Drawable drawable) {
        drawable.setLeftWidth(drawable.getLeftWidth() * this.f6038d);
        drawable.setRightWidth(drawable.getRightWidth() * this.f6038d);
        drawable.setBottomHeight(drawable.getBottomHeight() * this.f6038d);
        drawable.setTopHeight(drawable.getTopHeight() * this.f6038d);
        drawable.setMinWidth(drawable.getMinWidth() * this.f6038d);
        drawable.setMinHeight(drawable.getMinHeight() * this.f6038d);
    }

    public void setEnabled(Actor actor, boolean z) {
        Method m23795a = m23795a(actor.getClass(), "getStyle");
        if (m23795a == null) {
            return;
        }
        try {
            Object invoke = m23795a.invoke(actor, new Object[0]);
            String find = find(invoke);
            if (find == null) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            String str = "-disabled";
            sb.append(find.replace("-disabled", ""));
            if (z) {
                str = "";
            }
            sb.append(str);
            Object obj = get(sb.toString(), invoke.getClass());
            Method m23795a2 = m23795a(actor.getClass(), "setStyle");
            if (m23795a2 == null) {
                return;
            }
            m23795a2.invoke(actor, obj);
        } catch (Exception unused) {
        }
    }

    public Drawable newDrawable(Drawable drawable) {
        if (drawable instanceof TiledDrawable) {
            return new TiledDrawable((TiledDrawable) drawable);
        }
        if (drawable instanceof TextureRegionDrawable) {
            return new TextureRegionDrawable((TextureRegionDrawable) drawable);
        }
        if (drawable instanceof NinePatchDrawable) {
            return new NinePatchDrawable((NinePatchDrawable) drawable);
        }
        if (drawable instanceof SpriteDrawable) {
            return new SpriteDrawable((SpriteDrawable) drawable);
        }
        throw new GdxRuntimeException("Unable to copy, unknown drawable type: " + drawable.getClass());
    }

    public Skin(FileHandle fileHandle) {
        Class[] clsArr = f6035p;
        this.f6039k = new ObjectMap<>(clsArr.length);
        for (Class cls : clsArr) {
            this.f6039k.put(cls.getSimpleName(), cls);
        }
        FileHandle sibling = fileHandle.sibling(fileHandle.nameWithoutExtension() + ".atlas");
        if (sibling.exists()) {
            TextureAtlas textureAtlas = new TextureAtlas(sibling);
            this.f6037b = textureAtlas;
            addRegions(textureAtlas);
        }
        load(fileHandle);
    }

    public Drawable newDrawable(Drawable drawable, float f, float f2, float f3, float f4) {
        return newDrawable(drawable, new Color(f, f2, f3, f4));
    }

    public Drawable newDrawable(Drawable drawable, Color color) {
        Drawable tint;
        if (drawable instanceof TextureRegionDrawable) {
            tint = ((TextureRegionDrawable) drawable).tint(color);
        } else if (drawable instanceof NinePatchDrawable) {
            tint = ((NinePatchDrawable) drawable).tint(color);
        } else if (drawable instanceof SpriteDrawable) {
            tint = ((SpriteDrawable) drawable).tint(color);
        } else {
            throw new GdxRuntimeException("Unable to copy, unknown drawable type: " + drawable.getClass());
        }
        if (tint instanceof BaseDrawable) {
            BaseDrawable baseDrawable = (BaseDrawable) tint;
            if (drawable instanceof BaseDrawable) {
                baseDrawable.setName(((BaseDrawable) drawable).getName() + " (" + color + ")");
            } else {
                baseDrawable.setName(" (" + color + ")");
            }
        }
        return tint;
    }

    public Skin(FileHandle fileHandle, TextureAtlas textureAtlas) {
        Class[] clsArr = f6035p;
        this.f6039k = new ObjectMap<>(clsArr.length);
        for (Class cls : clsArr) {
            this.f6039k.put(cls.getSimpleName(), cls);
        }
        this.f6037b = textureAtlas;
        addRegions(textureAtlas);
        load(fileHandle);
    }

    public Skin(TextureAtlas textureAtlas) {
        Class[] clsArr = f6035p;
        this.f6039k = new ObjectMap<>(clsArr.length);
        for (Class cls : clsArr) {
            this.f6039k.put(cls.getSimpleName(), cls);
        }
        this.f6037b = textureAtlas;
        addRegions(textureAtlas);
    }
}
