package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.attributes.BlendingAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.ColorAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.DepthTestAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.IntAttribute;
import com.badlogic.gdx.graphics.g3d.loader.G3dModelLoader;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.UBJsonReader;
import com.prineside.StaticSound;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.ibxm.Module;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.lang.ref.SoftReference;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class AssetManager extends Manager.ManagerAdapter {

    /* renamed from: A */
    public static final StringBuilder f9554A = new StringBuilder();

    /* renamed from: TR */
    public TextureRegions f9555TR = new TextureRegions();

    /* renamed from: a */
    public final Array<ResourcePack> f9556a;

    /* renamed from: b */
    public final ObjectMap<String, TextureRegionDrawable> f9557b;

    /* renamed from: d */
    public final IntMap<Label.LabelStyle> f9558d;

    /* renamed from: k */
    public Label.LabelStyle f9559k;

    /* renamed from: p */
    public Label.LabelStyle f9560p;

    /* renamed from: q */
    public Model f9561q;

    /* renamed from: r */
    public Material f9562r;

    /* renamed from: s */
    public Material f9563s;

    /* renamed from: t */
    public BitmapFont f9564t;

    /* renamed from: u */
    public BitmapFont f9565u;

    /* renamed from: v */
    public BitmapFont f9566v;

    /* renamed from: w */
    public Texture f9567w;

    /* renamed from: x */
    public final RegionAliasCharPair[] f9568x;

    /* renamed from: y */
    public final IntMap<RegionAliasCharPair> f9569y;

    /* renamed from: z */
    public final ObjectMap<String, SoftReference<WebTextureRegion>> f9570z;

    /* loaded from: classes2.dex */
    public static class RegionAliasCharPair {

        /* renamed from: a */
        public char f9585a;

        /* renamed from: b */
        public TextureRegion f9586b;

        public RegionAliasCharPair() {
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<AssetManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public AssetManager read() {
            return Game.f8589i.assetManager;
        }
    }

    /* loaded from: classes2.dex */
    public static class TextureRegions {
        public ResourcePack.AtlasTextureRegion blank;
        public ResourcePack.AtlasTextureRegion crosshairSmall;
        public ResourcePack.AtlasTextureRegion enemyDialog;
        public ResourcePack.AtlasTextureRegion flyingPaper100_1;
        public ResourcePack.AtlasTextureRegion flyingPaper1_1;
        public ResourcePack.AtlasTextureRegion flyingPaper1_2;
        public ResourcePack.AtlasTextureRegion flyingPaper1_3;
        public ResourcePack.AtlasTextureRegion flyingPaper1_4;
        public ResourcePack.AtlasTextureRegion flyingPaper20_1;
        public ResourcePack.AtlasTextureRegion flyingPaper5_1;
        public ResourcePack.AtlasTextureRegion gateOutlineHorizontalActive;
        public ResourcePack.AtlasTextureRegion gateOutlineHorizontalHover;
        public ResourcePack.AtlasTextureRegion gateOutlineVerticalActive;
        public ResourcePack.AtlasTextureRegion gateOutlineVerticalHover;
        public ResourcePack.AtlasTextureRegion iconSmokeBomb;
        public ResourcePack.AtlasTextureRegion muzzleFlash1;
        public ResourcePack.AtlasTextureRegion muzzleFlash2;
        public ResourcePack.AtlasTextureRegion muzzleFlashCompensator1;
        public ResourcePack.AtlasTextureRegion muzzleFlashCompensator2;
        public ResourcePack.AtlasTextureRegion muzzleFlashSmall;
        public ResourcePack.AtlasTextureRegion particlePentagon;
        public ResourcePack.AtlasTextureRegion smallCircle;
        public ResourcePack.AtlasTextureRegion tileOutlineActive;
        public ResourcePack.AtlasTextureRegion tileOutlineHover;
    }

    /* loaded from: classes2.dex */
    public static class WebTextureRegion extends TextureRegion {
        public String src;
        public boolean textureLoaded;

        public void finalize() {
            super.finalize();
            if (this.textureLoaded) {
                try {
                    Logger.log("AssetManager", "finalizing web texture");
                    if (Game.f8589i.isInMainThread()) {
                        Logger.log("AssetManager", "disposing texture on main thread");
                        getTexture().dispose();
                    } else {
                        Logger.log("AssetManager", "pushing runnable to dispose texture on main thread");
                        final Texture texture = getTexture();
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.AssetManager.WebTextureRegion.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    texture.dispose();
                                    Logger.log("AssetManager", "disposed web texture");
                                } catch (Exception e) {
                                    Logger.error("AssetManager", "failed to dispose texture in runnable", e);
                                }
                            }
                        });
                    }
                } catch (Exception e) {
                    Logger.error("AssetManager", "failed to finalize web texture", e);
                }
            }
        }
    }

    /* renamed from: d */
    public final int m21716d(CharSequence charSequence) {
        return m21715e(charSequence, 0, charSequence.length());
    }

    /* renamed from: e */
    public final int m21715e(CharSequence charSequence, int i, int i2) {
        int i3 = 1;
        while (i < i2) {
            i3 = charSequence.charAt(i) + (31 * i3);
            i++;
        }
        return i3;
    }

    /* renamed from: f */
    public final void m21714f(final WebTextureRegion webTextureRegion, byte[] bArr) {
        final Pixmap pixmap;
        if (bArr.length != 0) {
            Logger.log("AssetManager", "got response " + bArr.length + " " + webTextureRegion.src);
            Pixmap pixmap2 = new Pixmap(bArr, 0, bArr.length);
            final int width = pixmap2.getWidth();
            final int height = pixmap2.getHeight();
            int width2 = pixmap2.getWidth();
            int height2 = pixmap2.getHeight();
            if (!MathUtils.isPowerOfTwo(width2)) {
                width2 = MathUtils.nextPowerOfTwo(width2);
            }
            if (!MathUtils.isPowerOfTwo(height2)) {
                height2 = MathUtils.nextPowerOfTwo(height2);
            }
            if (width2 == pixmap2.getWidth() && height2 == pixmap2.getHeight()) {
                pixmap = pixmap2;
            } else {
                Logger.log("AssetManager", "texture is not pot");
                Pixmap pixmap3 = new Pixmap(width2, height2, Pixmap.Format.RGBA8888);
                pixmap3.drawPixmap(pixmap2, 0, 0, pixmap2.getWidth(), pixmap2.getHeight(), 0, 0, pixmap2.getWidth(), pixmap2.getHeight());
                pixmap2.dispose();
                pixmap = pixmap3;
            }
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.AssetManager.1
                @Override // java.lang.Runnable
                public void run() {
                    Texture texture = new Texture(pixmap, false);
                    webTextureRegion.setTexture(texture);
                    WebTextureRegion webTextureRegion2 = webTextureRegion;
                    webTextureRegion2.textureLoaded = true;
                    webTextureRegion2.setRegion(0, 0, width, height);
                    pixmap.dispose();
                    Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
                    texture.setFilter(textureFilter, textureFilter);
                }
            });
        }
    }

    public ResourcePack.ResourcePackBitmapFont getFont(int i) {
        return getFont(i, true);
    }

    public float getFontScaleMultiplier(int i) {
        if (Game.f8589i.settingsManager.isLargeFontsEnabled()) {
            if (i <= 21) {
                return 1.33f;
            }
            return i <= 24 ? 1.2f : 1.1f;
        }
        return 1.0f;
    }

    public Drawable getOverlayBackground() {
        return new TextureRegionDrawable(getBlankWhiteTextureRegion()).tint(new Color(387389354));
    }

    public ResourcePack.AtlasTextureRegion getTextureRegion(String str) {
        return getTextureRegion(str, true);
    }

    public WebTextureRegion loadWebTexture(String str) {
        return loadWebTexture(str, false);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0365 A[EDGE_INSN: B:138:0x0365->B:96:0x0365 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x039e A[EDGE_INSN: B:139:0x039e->B:108:0x039e ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0358 A[LOOP:6: B:92:0x0352->B:94:0x0358, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0372  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AssetManager() {
        /*
            Method dump skipped, instructions count: 1284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.AssetManager.<init>():void");
    }

    public static void clearCacheDir() {
        FileHandle local = Gdx.files.local("cache");
        if (local.isDirectory()) {
            local.deleteDirectory();
            Logger.log("AssetManager", "cache dir removed");
        }
    }

    public static FileHandle localOrInternalFile(String str) {
        FileHandle local = Gdx.files.local(str);
        if (local.exists()) {
            return local;
        }
        return Gdx.files.external(str);
    }

    public void addRegionCharsToFont(BitmapFont bitmapFont, int i) {
        RegionAliasCharPair[] regionAliasCharPairArr;
        for (RegionAliasCharPair regionAliasCharPair : this.f9568x) {
            BitmapFont.Glyph glyph = new BitmapFont.Glyph();
            glyph.f4000id = regionAliasCharPair.f9585a;
            glyph.srcX = 0;
            glyph.srcY = 0;
            glyph.width = regionAliasCharPair.f9586b.getRegionWidth();
            glyph.height = regionAliasCharPair.f9586b.getRegionHeight();
            bitmapFont.getData().setGlyph(regionAliasCharPair.f9585a, glyph);
            bitmapFont.getData().setGlyphRegion(glyph, regionAliasCharPair.f9586b);
            glyph.width = i;
            glyph.height = i;
            glyph.xadvance = i + 2 + 4;
            glyph.yoffset = bitmapFont.getData().getFirstGlyph().yoffset;
            glyph.xoffset = 2;
        }
    }

    /* renamed from: c */
    public final void m21717c() {
        IntArray intArray = new IntArray();
        intArray.add(21, 24, 30, 36);
        intArray.add(60);
        for (int i = 0; i < intArray.size; i++) {
            int i2 = intArray.items[i];
            ResourcePack.ResourcePackBitmapFont font = getFont(i2);
            float fontScaleMultiplier = (i2 / font.resourcePack.fontResolution) * Game.f8589i.assetManager.getFontScaleMultiplier(i2);
            if (font.getData().scaleX != fontScaleMultiplier) {
                Logger.log("AssetManager", "=== fixing font scale of size " + i2 + ", changing font scale from " + font.getData().scaleX + " to " + fontScaleMultiplier);
                font.getData().setScale(fontScaleMultiplier);
            }
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Array.ArrayIterator<ResourcePack> it = this.f9556a.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
    }

    public Texture getBannerTexture() {
        if (this.f9567w == null) {
            Texture texture = new Texture(Gdx.files.external("res/get-banner.png"), Pixmap.Format.RGBA8888, false);
            this.f9567w = texture;
            Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
            texture.setFilter(textureFilter, textureFilter);
        }
        return this.f9567w;
    }

    public ResourcePack.AtlasTextureRegion getBlankWhiteTextureRegion() {
        for (int i = this.f9556a.size - 1; i >= 0; i--) {
            ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = this.f9556a.items[i].getBlankWhiteTextureRegion();
            if (blankWhiteTextureRegion != null) {
                return blankWhiteTextureRegion;
            }
        }
        throw new IllegalArgumentException("Blank texture was not found in any of loaded resource packs");
    }

    public Color getColor(String str) {
        for (int i = this.f9556a.size - 1; i >= 0; i--) {
            Color color = this.f9556a.items[i].getColor(str);
            if (color != null) {
                return color;
            }
        }
        throw new IllegalArgumentException("Color '" + str + "' was not found in any of loaded resource packs");
    }

    public BitmapFont getDebugFont(boolean z) {
        if (z) {
            if (this.f9564t == null) {
                BitmapFont bitmapFont = new BitmapFont(Gdx.files.external("resourcepacks/default/debug.fnt"), getTextureRegion("font-debug"));
                this.f9564t = bitmapFont;
                bitmapFont.getData().markupEnabled = true;
                this.f9564t.setFixedWidthGlyphs("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-=+[]\\/?.,`:;'\"<>| ");
            }
            return this.f9564t;
        }
        if (this.f9565u == null) {
            BitmapFont bitmapFont2 = new BitmapFont(Gdx.files.external("resourcepacks/default/debug.fnt"), getTextureRegion("font-debug"));
            this.f9565u = bitmapFont2;
            bitmapFont2.getData().markupEnabled = false;
            this.f9565u.setFixedWidthGlyphs("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-=+[]\\/?.,`:;'\"<>| ");
        }
        return this.f9565u;
    }

    public Label.LabelStyle getDebugLabelStyle() {
        if (this.f9559k == null) {
            this.f9559k = new Label.LabelStyle(getDebugFont(true), Color.WHITE);
        }
        return this.f9559k;
    }

    public TextureRegionDrawable getDrawable(String str) {
        if (this.f9557b.containsKey(str)) {
            return this.f9557b.get(str);
        }
        TextureRegionDrawable textureRegionDrawable = new TextureRegionDrawable(getTextureRegion(str));
        this.f9557b.put(str, textureRegionDrawable);
        return textureRegionDrawable;
    }

    public ResourcePack.ResourcePackBitmapFont getFont(int i, boolean z) {
        for (int i2 = this.f9556a.size - 1; i2 >= 0; i2--) {
            ResourcePack.ResourcePackBitmapFont font = this.f9556a.items[i2].getFont(i, z);
            if (font != null) {
                return font;
            }
        }
        throw new IllegalArgumentException("Font with size " + i + " was not found in any of loaded resource packs");
    }

    public Label.LabelStyle getLabelStyle(int i) {
        if (this.f9558d.containsKey(i)) {
            return this.f9558d.get(i);
        }
        Label.LabelStyle labelStyle = new Label.LabelStyle(getFont(i), Color.WHITE);
        this.f9558d.put(i, labelStyle);
        return labelStyle;
    }

    public Module getMenuXmSoundTrack() {
        for (int i = this.f9556a.size - 1; i >= 0; i--) {
            Module menuXmSoundTrack = this.f9556a.items[i].getMenuXmSoundTrack();
            if (menuXmSoundTrack != null) {
                return menuXmSoundTrack;
            }
        }
        return null;
    }

    public Model getSceneModel() {
        if (this.f9561q == null) {
            if (!Game.f8589i.settingsManager.isThreeDeeModelsEnabled()) {
                return null;
            }
            this.f9561q = new G3dModelLoader(new UBJsonReader()).loadModel(Gdx.files.external("models/scene.g3db"));
            int i = 0;
            while (true) {
                Array<Material> array = this.f9561q.materials;
                if (i >= array.size) {
                    break;
                }
                Material material = array.get(i);
                if (material.f4367id.equals("normal")) {
                    this.f9562r = material;
                } else if (material.f4367id.equals(BlendingAttribute.Alias)) {
                    this.f9563s = material;
                }
                material.remove(ColorAttribute.Emissive);
                i++;
            }
            Material material2 = this.f9562r;
            if (material2 != null) {
                material2.set(new IntAttribute(IntAttribute.CullFace, 0));
            }
            this.f9563s.set(new BlendingAttribute((int) GL20.GL_SRC_ALPHA, 1));
            this.f9563s.set(new DepthTestAttribute(false));
            this.f9563s.set(new IntAttribute(IntAttribute.CullFace, 0));
            this.f9563s.set(new ColorAttribute(ColorAttribute.Specular, 0.0f, 0.0f, 0.0f, 0.0f));
            this.f9563s.set(new ColorAttribute(ColorAttribute.Emissive, 0.1f, 0.1f, 0.1f, 1.0f));
            this.f9563s.set(ColorAttribute.createAmbient(0.0f, 1.0f, 0.0f, 1.0f));
        }
        return this.f9561q;
    }

    public ScrollPane.ScrollPaneStyle getScrollPaneStyle(float f) {
        Drawable tint = new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(new Color(0.0f, 0.0f, 0.0f, 0.28f));
        tint.setMinWidth(f);
        Drawable tint2 = new TextureRegionDrawable(Game.f8589i.assetManager.getBlankWhiteTextureRegion()).tint(new Color(1044266751));
        tint2.setMinWidth(f);
        return new ScrollPane.ScrollPaneStyle(null, null, null, tint, tint2);
    }

    public BitmapFont getSmallDebugFont() {
        if (this.f9566v == null) {
            BitmapFont debugFont = getDebugFont(true);
            BitmapFont bitmapFont = new BitmapFont(Gdx.files.external("resourcepacks/default/debug.fnt"), getTextureRegion("font-debug"));
            this.f9566v = bitmapFont;
            bitmapFont.getData().setScale(0.6667f);
            this.f9566v.getData().markupEnabled = true;
            this.f9566v.setUseIntegerPositions(false);
            for (int i = 0; i < debugFont.getData().glyphs.length; i++) {
                this.f9566v.getData().glyphs[i] = debugFont.getData().glyphs[i];
            }
        }
        return this.f9566v;
    }

    public Label.LabelStyle getSmallDebugLabelStyle() {
        if (this.f9560p == null) {
            this.f9560p = new Label.LabelStyle(getSmallDebugFont(), Color.WHITE);
        }
        return this.f9560p;
    }

    public StaticSound getSound(StaticSoundType staticSoundType) {
        for (int i = this.f9556a.size - 1; i >= 0; i--) {
            ResourcePack resourcePack = this.f9556a.items[i];
            if (resourcePack.hasSounds()) {
                return resourcePack.getSound(staticSoundType);
            }
        }
        return null;
    }

    public ResourcePack.AtlasTextureRegion getTextureRegion(String str, boolean z) {
        ResourcePack.AtlasTextureRegion textureRegion = this.f9556a.first().getTextureRegion(str);
        if (textureRegion != null) {
            return textureRegion;
        }
        if (z) {
            throw new IllegalArgumentException("Texture region '" + str + "' was not found in any of loaded resource packs");
        }
        return null;
    }

    public Array<ResourcePack.AtlasTextureRegion> getTextureRegions(String str) {
        Array<ResourcePack.AtlasTextureRegion> textureRegions = this.f9556a.first().getTextureRegions(str);
        if (textureRegions != null) {
            return textureRegions;
        }
        throw new IllegalArgumentException("Texture region '" + str + "' was not found in any of loaded resource packs");
    }

    public WebTextureRegion loadWebTexture(final String str, boolean z) {
        WebTextureRegion webTextureRegion;
        SoftReference<WebTextureRegion> softReference = this.f9570z.get(str, null);
        if (softReference == null || (webTextureRegion = softReference.get()) == null) {
            final WebTextureRegion webTextureRegion2 = new WebTextureRegion();
            webTextureRegion2.src = str;
            webTextureRegion2.setRegion(getTextureRegion("placeholder"));
            this.f9570z.put(str, new SoftReference<>(webTextureRegion2));
            final String str2 = "cache/webtxt/" + StringFormatter.md5Hash(str);
            long j = 0;
            if (!z) {
                try {
                    if (Gdx.files.local(str2).exists()) {
                        j = Gdx.files.local(str2).file().lastModified();
                    }
                } catch (Exception unused) {
                }
            }
            if (Game.getTimestampMillis() - j < 172800000) {
                Thread thread = new Thread(new Runnable() { // from class: com.prineside.tdi2.managers.AssetManager.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            AssetManager.this.m21714f(webTextureRegion2, Gdx.files.local(str2).readBytes());
                        } catch (Exception e) {
                            Logger.error("AssetManager", "failed to load web texture from local cache - " + str2 + ", " + str + ", re-downloading", e);
                            try {
                                Gdx.files.local(str2).delete();
                                AssetManager.this.loadWebTexture(str);
                            } catch (Exception unused2) {
                                Logger.error("AssetManager", "failed to delete local cache file - " + str2, e);
                            }
                        }
                    }
                });
                thread.setDaemon(true);
                thread.start();
                Logger.handleThreadExceptionsForgiving(thread);
            } else {
                Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.GET);
                httpRequest.setUrl(str);
                Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.AssetManager.3
                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void cancelled() {
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void failed(Throwable th) {
                        Logger.error("AssetManager", "failed to load web texture " + str, th);
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void handleHttpResponse(Net.HttpResponse httpResponse) {
                        byte[] result = httpResponse.getResult();
                        try {
                            AssetManager.this.m21714f(webTextureRegion2, result);
                            Gdx.files.local(str2).writeBytes(result, false);
                        } catch (Exception e) {
                            Logger.error("AssetManager", "failed to create web texture from " + str, e);
                        }
                    }
                });
            }
            return webTextureRegion2;
        }
        return webTextureRegion;
    }

    public CharSequence replaceRegionAliasesWithChars(CharSequence charSequence) {
        f9554A.setLength(0);
        int length = charSequence.length();
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt == '<') {
                z2 = true;
            } else {
                if (z2) {
                    if (charAt == '@') {
                        int i2 = i + 1;
                        int i3 = i2;
                        while (true) {
                            if (i3 < length) {
                                if (charSequence.charAt(i3) == '>') {
                                    break;
                                }
                                i3++;
                            } else {
                                i3 = -1;
                                break;
                            }
                        }
                        if (i3 != -1) {
                            RegionAliasCharPair regionAliasCharPair = this.f9569y.get(m21715e(charSequence, i2, i3));
                            if (regionAliasCharPair != null) {
                                f9554A.append(regionAliasCharPair.f9585a);
                                i = i3;
                                z = true;
                            } else {
                                f9554A.append("<@");
                            }
                        } else {
                            f9554A.append("<@");
                        }
                    } else {
                        f9554A.append('<').append(charAt);
                    }
                } else {
                    f9554A.append(charAt);
                }
                z2 = false;
            }
            i++;
        }
        if (!z) {
            return charSequence;
        }
        return f9554A;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.settingsManager.addListener(new SettingsManager.SettingsManagerListener.SettingsManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.AssetManager.4
            @Override // com.prineside.tdi2.managers.SettingsManager.SettingsManagerListener.SettingsManagerListenerAdapter, com.prineside.tdi2.managers.SettingsManager.SettingsManagerListener
            public void settingsChanged() {
                AssetManager.this.m21717c();
            }
        });
        m21717c();
    }

    public Material getBlendedMaterial() {
        getSceneModel();
        return this.f9563s;
    }

    public Material getNormalMaterial() {
        getSceneModel();
        return this.f9562r;
    }
}
