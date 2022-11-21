package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.StaticSound;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.ibxm.Module;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class ResourcePack implements Disposable {

    /* renamed from: B */
    public static final Comparator<AtlasTextureRegion> f8862B = new Comparator<AtlasTextureRegion>() { // from class: com.prineside.tdi2.ResourcePack.1
        @Override // java.util.Comparator
        public int compare(AtlasTextureRegion atlasTextureRegion, AtlasTextureRegion atlasTextureRegion2) {
            int i = atlasTextureRegion.index;
            int i2 = atlasTextureRegion2.index;
            if (i == i2) {
                return 0;
            }
            return i > i2 ? 1 : -1;
        }
    };
    public static final String RESOURCE_PACKS_DIR = "resourcepacks";

    /* renamed from: A */
    public final ObjectMap<String, Color> f8863A;

    /* renamed from: a */
    public boolean f8864a;

    /* renamed from: b */
    public boolean f8865b;

    /* renamed from: d */
    public String f8866d;
    public float fontResolution;

    /* renamed from: k */
    public Array<String> f8867k;
    public final String name;

    /* renamed from: p */
    public final IntMap<ResourcePackBitmapFont> f8868p;

    /* renamed from: q */
    public ResourcePackBitmapFont f8869q;

    /* renamed from: r */
    public boolean f8870r;

    /* renamed from: s */
    public StaticSound[] f8871s;

    /* renamed from: t */
    public Module f8872t;

    /* renamed from: u */
    public boolean f8873u;

    /* renamed from: v */
    public final ObjectMap<String, AtlasTextureRegion> f8874v;
    public int version;

    /* renamed from: w */
    public final ObjectMap<String, Array<AtlasTextureRegion>> f8875w;

    /* renamed from: x */
    public final Array<TextureAtlas> f8876x;

    /* renamed from: y */
    public AtlasTextureRegion f8877y;

    /* renamed from: z */
    public boolean f8878z;

    /* loaded from: classes2.dex */
    public static class ResourcePackBitmapFont extends BitmapFont {
        public ResourcePack resourcePack;

        public ResourcePackBitmapFont(FileHandle fileHandle, Array<TextureRegion> array, boolean z) {
            super(new BitmapFont.BitmapFontData(fileHandle, z), array, false);
        }
    }

    /* loaded from: classes2.dex */
    public static class ResourcePackLoadingException extends Exception {
        public ResourcePackLoadingException(String str) {
            super(str);
        }

        public ResourcePackLoadingException(String str, Throwable th) {
            super(str, th);
        }
    }

    public AtlasTextureRegion getBlankWhiteTextureRegion() {
        return this.f8877y;
    }

    public ResourcePackBitmapFont getFont(int i) {
        return getFont(i, true);
    }

    public Array<TextureAtlas> getLoadedAtlases() {
        return this.f8876x;
    }

    public Module getMenuXmSoundTrack() {
        return this.f8872t;
    }

    public ObjectMap<String, Array<AtlasTextureRegion>> getTextureRegionSets() {
        return this.f8875w;
    }

    public Array<AtlasTextureRegion> getTextureRegions(String str) {
        if (this.f8873u) {
            return this.f8875w.get(str, null);
        }
        return null;
    }

    public boolean hasSounds() {
        return this.f8870r;
    }

    /* loaded from: classes2.dex */
    public static class AtlasTextureRegion extends TextureAtlas.AtlasRegion {

        /* renamed from: h */
        public final TextureAtlas f8879h;

        public TextureAtlas getAtlas() {
            return this.f8879h;
        }

        public AtlasTextureRegion(TextureAtlas.AtlasRegion atlasRegion, TextureAtlas textureAtlas) {
            super(atlasRegion);
            this.f8879h = textureAtlas;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:180:0x0404 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03f5 A[LOOP:0: B:15:0x00a8->B:83:0x03f5, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ResourcePack(java.lang.String r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 1988
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.ResourcePack.<init>(java.lang.String, boolean):void");
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Array.ArrayIterator<TextureAtlas> it = this.f8876x.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
    }

    public Color getColor(String str) {
        if (!this.f8878z) {
            return null;
        }
        return this.f8863A.get(str, null);
    }

    public ResourcePackBitmapFont getFont(int i, boolean z) {
        if (this.f8865b) {
            int i2 = z ? i + 10000 : i;
            if (this.f8868p.containsKey(i2)) {
                return this.f8868p.get(i2);
            }
            Array array = new Array();
            Array.ArrayIterator<String> it = this.f8867k.iterator();
            while (it.hasNext()) {
                array.add(getTextureRegion(it.next()));
            }
            ResourcePackBitmapFont resourcePackBitmapFont = new ResourcePackBitmapFont(this.f8864a ? Gdx.files.external(this.f8866d) : Gdx.files.local(this.f8866d), array, false);
            float fontScaleMultiplier = (i / this.fontResolution) * Game.f8589i.assetManager.getFontScaleMultiplier(i);
            Logger.log("ResourcePack", "=== creating new font, size: " + i + ", resolution: " + this.fontResolution + ", multiplier: " + Game.f8589i.assetManager.getFontScaleMultiplier(i) + ", scale: " + fontScaleMultiplier);
            resourcePackBitmapFont.getData().setScale(fontScaleMultiplier);
            resourcePackBitmapFont.getData().markupEnabled = z;
            resourcePackBitmapFont.setFixedWidthGlyphs("0123456789");
            Game.f8589i.assetManager.addRegionCharsToFont(resourcePackBitmapFont, (int) this.fontResolution);
            if (this.f8869q == null) {
                this.f8869q = resourcePackBitmapFont;
            } else {
                for (int i3 = 0; i3 < resourcePackBitmapFont.getData().glyphs.length; i3++) {
                    resourcePackBitmapFont.getData().glyphs[i3] = this.f8869q.getData().glyphs[i3];
                }
            }
            this.f8868p.put(i2, resourcePackBitmapFont);
            resourcePackBitmapFont.resourcePack = this;
            return resourcePackBitmapFont;
        }
        return null;
    }

    public StaticSound getSound(StaticSoundType staticSoundType) {
        if (this.f8870r) {
            return this.f8871s[staticSoundType.ordinal()];
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0059, code lost:
        if (r6.equals("flip-xy") == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.prineside.tdi2.ResourcePack.AtlasTextureRegion getTextureRegion(java.lang.String r10) {
        /*
            r9 = this;
            boolean r0 = r9.f8873u
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            com.badlogic.gdx.utils.ObjectMap<java.lang.String, com.prineside.tdi2.ResourcePack$AtlasTextureRegion> r0 = r9.f8874v
            java.lang.Object r0 = r0.get(r10, r1)
            com.prineside.tdi2.ResourcePack$AtlasTextureRegion r0 = (com.prineside.tdi2.ResourcePack.AtlasTextureRegion) r0
            if (r0 != 0) goto Lb7
            java.lang.String r2 = "@"
            boolean r3 = r10.contains(r2)
            if (r3 == 0) goto Lb7
            java.lang.String[] r0 = r10.split(r2)
            com.badlogic.gdx.utils.ObjectMap<java.lang.String, com.prineside.tdi2.ResourcePack$AtlasTextureRegion> r2 = r9.f8874v
            r3 = 0
            r4 = r0[r3]
            java.lang.Object r2 = r2.get(r4, r1)
            com.prineside.tdi2.ResourcePack$AtlasTextureRegion r2 = (com.prineside.tdi2.ResourcePack.AtlasTextureRegion) r2
            if (r2 == 0) goto Lb6
            int r4 = r0.length
            r5 = 2
            if (r4 >= r5) goto L2f
            goto Lb6
        L2f:
            com.prineside.tdi2.ResourcePack$AtlasTextureRegion r1 = new com.prineside.tdi2.ResourcePack$AtlasTextureRegion
            com.badlogic.gdx.graphics.g2d.TextureAtlas r4 = r2.getAtlas()
            r1.<init>(r2, r4)
            r4 = 1
            r6 = r0[r4]
            r6.hashCode()
            r7 = -1
            int r8 = r6.hashCode()
            switch(r8) {
                case -1271816424: goto L67;
                case -1271816423: goto L5c;
                case -771603359: goto L53;
                case -79959177: goto L48;
                default: goto L46;
            }
        L46:
            r5 = -1
            goto L71
        L48:
            java.lang.String r5 = "rotate-180"
            boolean r5 = r6.equals(r5)
            if (r5 != 0) goto L51
            goto L46
        L51:
            r5 = 3
            goto L71
        L53:
            java.lang.String r8 = "flip-xy"
            boolean r6 = r6.equals(r8)
            if (r6 != 0) goto L71
            goto L46
        L5c:
            java.lang.String r5 = "flip-y"
            boolean r5 = r6.equals(r5)
            if (r5 != 0) goto L65
            goto L46
        L65:
            r5 = 1
            goto L71
        L67:
            java.lang.String r5 = "flip-x"
            boolean r5 = r6.equals(r5)
            if (r5 != 0) goto L70
            goto L46
        L70:
            r5 = 0
        L71:
            java.lang.String r6 = "ResourcePack"
            switch(r5) {
                case 0: goto L9a;
                case 1: goto L96;
                case 2: goto L92;
                case 3: goto L92;
                default: goto L76;
            }
        L76:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r1 = "region modifier \""
            r10.append(r1)
            r0 = r0[r4]
            r10.append(r0)
            java.lang.String r0 = "\" is invalid"
            r10.append(r0)
            java.lang.String r10 = r10.toString()
            com.prineside.tdi2.Logger.error(r6, r10)
            return r2
        L92:
            r1.flip(r4, r4)
            goto L9d
        L96:
            r1.flip(r3, r4)
            goto L9d
        L9a:
            r1.flip(r4, r3)
        L9d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "stored modified region: "
            r0.append(r2)
            r0.append(r10)
            java.lang.String r0 = r0.toString()
            com.prineside.tdi2.Logger.log(r6, r0)
            com.badlogic.gdx.utils.ObjectMap<java.lang.String, com.prineside.tdi2.ResourcePack$AtlasTextureRegion> r0 = r9.f8874v
            r0.put(r10, r1)
        Lb6:
            return r1
        Lb7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.ResourcePack.getTextureRegion(java.lang.String):com.prineside.tdi2.ResourcePack$AtlasTextureRegion");
    }

    public ObjectMap<String, AtlasTextureRegion> getTextureRegions() {
        return this.f8874v;
    }
}
