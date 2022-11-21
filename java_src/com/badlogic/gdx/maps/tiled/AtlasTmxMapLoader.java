package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.assets.loaders.TextureLoader;
import com.badlogic.gdx.assets.loaders.resolvers.InternalFileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.ImageResolver;
import com.badlogic.gdx.maps.MapProperties;
import com.badlogic.gdx.maps.tiled.BaseTmxMapLoader;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.XmlReader;
/* loaded from: classes.dex */
public class AtlasTmxMapLoader extends BaseTmxMapLoader<AtlasTiledMapLoaderParameters> {

    /* renamed from: k */
    public Array<Texture> f5280k;

    /* renamed from: l */
    public AtlasResolver f5281l;

    /* loaded from: classes.dex */
    public interface AtlasResolver extends ImageResolver {
        TextureAtlas getAtlas();

        /* loaded from: classes.dex */
        public static class AssetManagerAtlasResolver implements AtlasResolver {

            /* renamed from: a */
            public final AssetManager f5282a;

            /* renamed from: b */
            public final String f5283b;

            @Override // com.badlogic.gdx.maps.tiled.AtlasTmxMapLoader.AtlasResolver
            public TextureAtlas getAtlas() {
                return (TextureAtlas) this.f5282a.get(this.f5283b, TextureAtlas.class);
            }

            @Override // com.badlogic.gdx.maps.ImageResolver
            public TextureRegion getImage(String str) {
                return getAtlas().findRegion(str);
            }

            public AssetManagerAtlasResolver(AssetManager assetManager, String str) {
                this.f5282a = assetManager;
                this.f5283b = str;
            }
        }

        /* loaded from: classes.dex */
        public static class DirectAtlasResolver implements AtlasResolver {

            /* renamed from: a */
            public final TextureAtlas f5284a;

            @Override // com.badlogic.gdx.maps.tiled.AtlasTmxMapLoader.AtlasResolver
            public TextureAtlas getAtlas() {
                return this.f5284a;
            }

            @Override // com.badlogic.gdx.maps.ImageResolver
            public TextureRegion getImage(String str) {
                return this.f5284a.findRegion(str);
            }

            public DirectAtlasResolver(TextureAtlas textureAtlas) {
                this.f5284a = textureAtlas;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class AtlasTiledMapLoaderParameters extends BaseTmxMapLoader.Parameters {
        public boolean forceTextureFilters = false;
    }

    public AtlasTmxMapLoader() {
        super(new InternalFileHandleResolver());
        this.f5280k = new Array<>();
    }

    @Override // com.badlogic.gdx.maps.tiled.BaseTmxMapLoader
    /* renamed from: b */
    public void mo23949b(FileHandle fileHandle, ImageResolver imageResolver, TiledMapTileSet tiledMapTileSet, XmlReader.Element element, Array<XmlReader.Element> array, String str, int i, int i2, int i3, int i4, int i5, String str2, int i6, int i7, String str3, int i8, int i9, FileHandle fileHandle2) {
        XmlReader.Element childByName;
        int i10;
        TextureAtlas atlas = this.f5281l.getAtlas();
        ObjectSet.ObjectSetIterator<Texture> it = atlas.getTextures().iterator();
        while (it.hasNext()) {
            this.f5280k.add(it.next());
        }
        MapProperties properties = tiledMapTileSet.getProperties();
        properties.put("imagesource", str3);
        properties.put("imagewidth", Integer.valueOf(i8));
        properties.put("imageheight", Integer.valueOf(i9));
        properties.put("tilewidth", Integer.valueOf(i2));
        properties.put("tileheight", Integer.valueOf(i3));
        properties.put("margin", Integer.valueOf(i5));
        properties.put("spacing", Integer.valueOf(i4));
        if (str3 != null && str3.length() > 0) {
            int i11 = (((i8 / i2) * (i9 / i3)) + i) - 1;
            Array.ArrayIterator<TextureAtlas.AtlasRegion> it2 = atlas.findRegions(str).iterator();
            while (it2.hasNext()) {
                TextureAtlas.AtlasRegion next = it2.next();
                if (next != null && (i10 = i + next.index) >= i && i10 <= i11) {
                    m23975a(tiledMapTileSet, next, i10, i6, i7);
                }
            }
        }
        Array.ArrayIterator<XmlReader.Element> it3 = array.iterator();
        while (it3.hasNext()) {
            XmlReader.Element next2 = it3.next();
            int intAttribute = i + next2.getIntAttribute("id", 0);
            if (tiledMapTileSet.getTile(intAttribute) == null && (childByName = next2.getChildByName("image")) != null) {
                String attribute = childByName.getAttribute("source");
                String substring = attribute.substring(0, attribute.lastIndexOf(46));
                TextureRegion findRegion = atlas.findRegion(substring);
                if (findRegion != null) {
                    m23975a(tiledMapTileSet, findRegion, intAttribute, i6, i7);
                } else {
                    throw new GdxRuntimeException("Tileset atlasRegion not found: " + substring);
                }
            }
        }
    }

    public TiledMap load(String str) {
        return load(str, new AtlasTiledMapLoaderParameters());
    }

    @Override // com.badlogic.gdx.maps.tiled.BaseTmxMapLoader
    /* renamed from: h */
    public Array<AssetDescriptor> mo23948h(FileHandle fileHandle, TextureLoader.TextureParameter textureParameter) {
        Array<AssetDescriptor> array = new Array<>();
        FileHandle m23977w = m23977w(fileHandle);
        if (m23977w != null) {
            array.add(new AssetDescriptor(m23977w, TextureAtlas.class));
        }
        return array;
    }

    public TiledMap load(String str, AtlasTiledMapLoaderParameters atlasTiledMapLoaderParameters) {
        FileHandle resolve = resolve(str);
        this.f5286c = this.f5285b.parse(resolve);
        TextureAtlas textureAtlas = new TextureAtlas(m23977w(resolve));
        AtlasResolver.DirectAtlasResolver directAtlasResolver = new AtlasResolver.DirectAtlasResolver(textureAtlas);
        this.f5281l = directAtlasResolver;
        TiledMap m23957u = m23957u(resolve, atlasTiledMapLoaderParameters, directAtlasResolver);
        m23957u.setOwnedResources(new Array<>(new TextureAtlas[]{textureAtlas}));
        m23976x(atlasTiledMapLoaderParameters.textureMinFilter, atlasTiledMapLoaderParameters.textureMagFilter);
        return m23957u;
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, AtlasTiledMapLoaderParameters atlasTiledMapLoaderParameters) {
        AtlasResolver.AssetManagerAtlasResolver assetManagerAtlasResolver = new AtlasResolver.AssetManagerAtlasResolver(assetManager, m23977w(fileHandle).path());
        this.f5281l = assetManagerAtlasResolver;
        this.f5293j = m23957u(fileHandle, atlasTiledMapLoaderParameters, assetManagerAtlasResolver);
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public TiledMap loadSync(AssetManager assetManager, String str, FileHandle fileHandle, AtlasTiledMapLoaderParameters atlasTiledMapLoaderParameters) {
        if (atlasTiledMapLoaderParameters != null) {
            m23976x(atlasTiledMapLoaderParameters.textureMinFilter, atlasTiledMapLoaderParameters.textureMagFilter);
        }
        return this.f5293j;
    }

    /* renamed from: w */
    public FileHandle m23977w(FileHandle fileHandle) {
        String str;
        XmlReader.Element childByName = this.f5286c.getChildByName("properties");
        if (childByName != null) {
            Array.ArrayIterator<XmlReader.Element> it = childByName.getChildrenByName("property").iterator();
            while (it.hasNext()) {
                XmlReader.Element next = it.next();
                if (next.getAttribute("name").startsWith("atlas")) {
                    str = next.getAttribute("value");
                    break;
                }
            }
        }
        str = null;
        if (str != null) {
            FileHandle m23969i = BaseTmxMapLoader.m23969i(fileHandle, str);
            if (m23969i.exists()) {
                return m23969i;
            }
            throw new GdxRuntimeException("The 'atlas' file could not be found: '" + str + "'");
        }
        throw new GdxRuntimeException("The map is missing the 'atlas' property");
    }

    /* renamed from: x */
    public void m23976x(Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2) {
        Array.ArrayIterator<Texture> it = this.f5280k.iterator();
        while (it.hasNext()) {
            it.next().setFilter(textureFilter, textureFilter2);
        }
        this.f5280k.clear();
    }

    public AtlasTmxMapLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f5280k = new Array<>();
    }
}
