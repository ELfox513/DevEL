package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.assets.loaders.TextureLoader;
import com.badlogic.gdx.assets.loaders.resolvers.InternalFileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.ImageResolver;
import com.badlogic.gdx.maps.MapProperties;
import com.badlogic.gdx.maps.tiled.BaseTmxMapLoader;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.XmlReader;
/* loaded from: classes.dex */
public class TmxMapLoader extends BaseTmxMapLoader<Parameters> {

    /* loaded from: classes.dex */
    public static class Parameters extends BaseTmxMapLoader.Parameters {
    }

    public TmxMapLoader() {
        super(new InternalFileHandleResolver());
    }

    @Override // com.badlogic.gdx.maps.tiled.BaseTmxMapLoader
    /* renamed from: b */
    public void mo23949b(FileHandle fileHandle, ImageResolver imageResolver, TiledMapTileSet tiledMapTileSet, XmlReader.Element element, Array<XmlReader.Element> array, String str, int i, int i2, int i3, int i4, int i5, String str2, int i6, int i7, String str3, int i8, int i9, FileHandle fileHandle2) {
        int i10;
        MapProperties properties = tiledMapTileSet.getProperties();
        if (fileHandle2 != null) {
            TextureRegion image = imageResolver.getImage(fileHandle2.path());
            properties.put("imagesource", str3);
            properties.put("imagewidth", Integer.valueOf(i8));
            properties.put("imageheight", Integer.valueOf(i9));
            properties.put("tilewidth", Integer.valueOf(i2));
            properties.put("tileheight", Integer.valueOf(i3));
            properties.put("margin", Integer.valueOf(i5));
            properties.put("spacing", Integer.valueOf(i4));
            int regionWidth = image.getRegionWidth() - i2;
            int regionHeight = image.getRegionHeight() - i3;
            int i11 = i;
            int i12 = i5;
            while (i12 <= regionHeight) {
                int i13 = i5;
                while (true) {
                    i10 = i11;
                    if (i13 <= regionWidth) {
                        i11 = i10 + 1;
                        m23975a(tiledMapTileSet, new TextureRegion(image, i13, i12, i2, i3), i10, i6, i7);
                        i13 += i2 + i4;
                    }
                }
                i12 += i3 + i4;
                i11 = i10;
            }
            return;
        }
        Array.ArrayIterator<XmlReader.Element> it = array.iterator();
        FileHandle fileHandle3 = fileHandle2;
        while (it.hasNext()) {
            XmlReader.Element next = it.next();
            XmlReader.Element childByName = next.getChildByName("image");
            if (childByName != null) {
                String attribute = childByName.getAttribute("source");
                if (str2 != null) {
                    fileHandle3 = BaseTmxMapLoader.m23969i(BaseTmxMapLoader.m23969i(fileHandle, str2), attribute);
                } else {
                    fileHandle3 = BaseTmxMapLoader.m23969i(fileHandle, attribute);
                }
            }
            m23975a(tiledMapTileSet, imageResolver.getImage(fileHandle3.path()), i + next.getIntAttribute("id"), i6, i7);
        }
    }

    public TiledMap load(String str) {
        return load(str, new Parameters());
    }

    public TmxMapLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
    }

    @Override // com.badlogic.gdx.maps.tiled.BaseTmxMapLoader
    /* renamed from: h */
    public Array<AssetDescriptor> mo23948h(FileHandle fileHandle, TextureLoader.TextureParameter textureParameter) {
        Array<AssetDescriptor> array = new Array<>();
        Array.ArrayIterator<FileHandle> it = m23947w(fileHandle).iterator();
        while (it.hasNext()) {
            array.add(new AssetDescriptor(it.next(), Texture.class, textureParameter));
        }
        return array;
    }

    public TiledMap load(String str, Parameters parameters) {
        FileHandle resolve = resolve(str);
        this.f5286c = this.f5285b.parse(resolve);
        ObjectMap objectMap = new ObjectMap();
        Array.ArrayIterator<FileHandle> it = m23947w(resolve).iterator();
        while (it.hasNext()) {
            FileHandle next = it.next();
            Texture texture = new Texture(next, parameters.generateMipMaps);
            texture.setFilter(parameters.textureMinFilter, parameters.textureMagFilter);
            objectMap.put(next.path(), texture);
        }
        TiledMap m23957u = m23957u(resolve, parameters, new ImageResolver.DirectImageResolver(objectMap));
        m23957u.setOwnedResources(objectMap.values().toArray());
        return m23957u;
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, Parameters parameters) {
        this.f5293j = m23957u(fileHandle, parameters, new ImageResolver.AssetManagerImageResolver(assetManager));
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public TiledMap loadSync(AssetManager assetManager, String str, FileHandle fileHandle, Parameters parameters) {
        return this.f5293j;
    }

    /* renamed from: w */
    public Array<FileHandle> m23947w(FileHandle fileHandle) {
        Array<FileHandle> array = new Array<>();
        Array.ArrayIterator<XmlReader.Element> it = this.f5286c.getChildrenByName("tileset").iterator();
        while (it.hasNext()) {
            XmlReader.Element next = it.next();
            String attribute = next.getAttribute("source", null);
            if (attribute != null) {
                FileHandle m23969i = BaseTmxMapLoader.m23969i(fileHandle, attribute);
                XmlReader.Element parse = this.f5285b.parse(m23969i);
                if (parse.getChildByName("image") != null) {
                    array.add(BaseTmxMapLoader.m23969i(m23969i, parse.getChildByName("image").getAttribute("source")));
                } else {
                    Array.ArrayIterator<XmlReader.Element> it2 = parse.getChildrenByName("tile").iterator();
                    while (it2.hasNext()) {
                        array.add(BaseTmxMapLoader.m23969i(m23969i, it2.next().getChildByName("image").getAttribute("source")));
                    }
                }
            } else if (next.getChildByName("image") != null) {
                array.add(BaseTmxMapLoader.m23969i(fileHandle, next.getChildByName("image").getAttribute("source")));
            } else {
                Array.ArrayIterator<XmlReader.Element> it3 = next.getChildrenByName("tile").iterator();
                while (it3.hasNext()) {
                    array.add(BaseTmxMapLoader.m23969i(fileHandle, it3.next().getChildByName("image").getAttribute("source")));
                }
            }
        }
        Array.ArrayIterator<XmlReader.Element> it4 = this.f5286c.getChildrenByName("imagelayer").iterator();
        while (it4.hasNext()) {
            String attribute2 = it4.next().getChildByName("image").getAttribute("source", null);
            if (attribute2 != null) {
                array.add(BaseTmxMapLoader.m23969i(fileHandle, attribute2));
            }
        }
        return array;
    }
}
