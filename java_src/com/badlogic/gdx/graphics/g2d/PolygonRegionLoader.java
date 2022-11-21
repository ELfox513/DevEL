package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.assets.loaders.SynchronousAssetLoader;
import com.badlogic.gdx.assets.loaders.resolvers.InternalFileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.EarClippingTriangulator;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.BufferedReader;
import java.io.IOException;
import p168r4.C6226s;
/* loaded from: classes.dex */
public class PolygonRegionLoader extends SynchronousAssetLoader<PolygonRegion, PolygonRegionParameters> {

    /* renamed from: b */
    public PolygonRegionParameters f4215b;

    /* renamed from: c */
    public EarClippingTriangulator f4216c;

    /* loaded from: classes.dex */
    public static class PolygonRegionParameters extends AssetLoaderParameters<PolygonRegion> {
        public String texturePrefix = "i ";
        public int readerBuffer = 1024;
        public String[] textureExtensions = {"png", "PNG", "jpeg", "JPEG", "jpg", "JPG", "cim", "CIM", "etc1", "ETC1", "ktx", "KTX", "zktx", "ZKTX"};
    }

    public PolygonRegionLoader() {
        this(new InternalFileHandleResolver());
    }

    public PolygonRegionLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f4215b = new PolygonRegionParameters();
        this.f4216c = new EarClippingTriangulator();
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, PolygonRegionParameters polygonRegionParameters) {
        String str2;
        String[] strArr;
        if (polygonRegionParameters == null) {
            polygonRegionParameters = this.f4215b;
        }
        try {
            BufferedReader reader = fileHandle.reader(polygonRegionParameters.readerBuffer);
            while (true) {
                String readLine = reader.readLine();
                if (readLine != null) {
                    if (readLine.startsWith(polygonRegionParameters.texturePrefix)) {
                        str2 = readLine.substring(polygonRegionParameters.texturePrefix.length());
                        break;
                    }
                } else {
                    str2 = null;
                    break;
                }
            }
            reader.close();
            if (str2 == null && (strArr = polygonRegionParameters.textureExtensions) != null) {
                for (String str3 : strArr) {
                    FileHandle sibling = fileHandle.sibling(fileHandle.nameWithoutExtension().concat("." + str3));
                    if (sibling.exists()) {
                        str2 = sibling.name();
                    }
                }
            }
            if (str2 != null) {
                Array<AssetDescriptor> array = new Array<>(1);
                array.add(new AssetDescriptor(fileHandle.sibling(str2), Texture.class));
                return array;
            }
            return null;
        } catch (IOException e) {
            throw new GdxRuntimeException("Error reading " + str, e);
        }
    }

    @Override // com.badlogic.gdx.assets.loaders.SynchronousAssetLoader
    public PolygonRegion load(AssetManager assetManager, String str, FileHandle fileHandle, PolygonRegionParameters polygonRegionParameters) {
        return load(new TextureRegion((Texture) assetManager.get(assetManager.getDependencies(str).first())), fileHandle);
    }

    public PolygonRegion load(TextureRegion textureRegion, FileHandle fileHandle) {
        String readLine;
        BufferedReader reader = fileHandle.reader(256);
        do {
            try {
                try {
                    readLine = reader.readLine();
                    if (readLine == null) {
                        StreamUtils.closeQuietly(reader);
                        throw new GdxRuntimeException("Polygon shape not found: " + fileHandle);
                    }
                } catch (IOException e) {
                    throw new GdxRuntimeException("Error reading polygon shape file: " + fileHandle, e);
                }
            } finally {
                StreamUtils.closeQuietly(reader);
            }
        } while (!readLine.startsWith(C6226s.f31189J));
        String[] split = readLine.substring(1).trim().split(",");
        int length = split.length;
        float[] fArr = new float[length];
        for (int i = 0; i < length; i++) {
            fArr[i] = Float.parseFloat(split[i]);
        }
        return new PolygonRegion(textureRegion, fArr, this.f4216c.computeTriangles(fArr).toArray());
    }
}
