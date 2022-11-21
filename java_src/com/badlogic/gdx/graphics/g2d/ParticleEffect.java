package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Writer;
/* loaded from: classes.dex */
public class ParticleEffect implements Disposable {

    /* renamed from: a */
    public final Array<ParticleEmitter> f4059a;

    /* renamed from: b */
    public BoundingBox f4060b;

    /* renamed from: d */
    public boolean f4061d;

    /* renamed from: k */
    public float f4062k;

    /* renamed from: p */
    public float f4063p;

    /* renamed from: q */
    public float f4064q;

    public ParticleEffect() {
        this.f4062k = 1.0f;
        this.f4063p = 1.0f;
        this.f4064q = 1.0f;
        this.f4059a = new Array<>(8);
    }

    /* renamed from: a */
    public Texture m24215a(FileHandle fileHandle) {
        return new Texture(fileHandle, false);
    }

    /* renamed from: b */
    public ParticleEmitter m24214b(ParticleEmitter particleEmitter) {
        return new ParticleEmitter(particleEmitter);
    }

    /* renamed from: c */
    public ParticleEmitter m24213c(BufferedReader bufferedReader) {
        return new ParticleEmitter(bufferedReader);
    }

    public void draw(Batch batch) {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.get(i2).draw(batch);
        }
    }

    public Array<ParticleEmitter> getEmitters() {
        return this.f4059a;
    }

    public void load(FileHandle fileHandle, FileHandle fileHandle2) {
        loadEmitters(fileHandle);
        loadEmitterImages(fileHandle2);
    }

    public void loadEmitterImages(TextureAtlas textureAtlas) {
        loadEmitterImages(textureAtlas, null);
    }

    public void reset() {
        reset(true);
    }

    public void scaleEffect(float f) {
        scaleEffect(f, f, f);
    }

    public void allowCompletion() {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.get(i2).allowCompletion();
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (!this.f4061d) {
            return;
        }
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            Array.ArrayIterator<Sprite> it = this.f4059a.get(i2).getSprites().iterator();
            while (it.hasNext()) {
                it.next().getTexture().dispose();
            }
        }
    }

    public ParticleEmitter findEmitter(String str) {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            ParticleEmitter particleEmitter = this.f4059a.get(i2);
            if (particleEmitter.getName().equals(str)) {
                return particleEmitter;
            }
        }
        return null;
    }

    public void flipY() {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.get(i2).flipY();
        }
    }

    public BoundingBox getBoundingBox() {
        if (this.f4060b == null) {
            this.f4060b = new BoundingBox();
        }
        BoundingBox boundingBox = this.f4060b;
        boundingBox.inf();
        Array.ArrayIterator<ParticleEmitter> it = this.f4059a.iterator();
        while (it.hasNext()) {
            boundingBox.ext(it.next().getBoundingBox());
        }
        return boundingBox;
    }

    public boolean isComplete() {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (!this.f4059a.get(i2).isComplete()) {
                return false;
            }
        }
        return true;
    }

    public void loadEmitterImages(TextureAtlas textureAtlas, String str) {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            ParticleEmitter particleEmitter = this.f4059a.get(i2);
            if (particleEmitter.getImagePaths().size != 0) {
                Array<Sprite> array = new Array<>();
                Array.ArrayIterator<String> it = particleEmitter.getImagePaths().iterator();
                while (it.hasNext()) {
                    String name = new File(it.next().replace('\\', '/')).getName();
                    int lastIndexOf = name.lastIndexOf(46);
                    if (lastIndexOf != -1) {
                        name = name.substring(0, lastIndexOf);
                    }
                    if (str != null) {
                        name = str + name;
                    }
                    Sprite createSprite = textureAtlas.createSprite(name);
                    if (createSprite != null) {
                        array.add(createSprite);
                    } else {
                        throw new IllegalArgumentException("SpriteSheet missing image: " + name);
                    }
                }
                particleEmitter.setSprites(array);
            }
        }
    }

    public void preAllocateParticles() {
        Array.ArrayIterator<ParticleEmitter> it = this.f4059a.iterator();
        while (it.hasNext()) {
            it.next().preAllocateParticles();
        }
    }

    public void reset(boolean z) {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.get(i2).reset();
        }
        if (z) {
            float f = this.f4062k;
            if (f == 1.0f && this.f4063p == 1.0f && this.f4064q == 1.0f) {
                return;
            }
            scaleEffect(1.0f / f, 1.0f / this.f4063p, 1.0f / this.f4064q);
            this.f4064q = 1.0f;
            this.f4063p = 1.0f;
            this.f4062k = 1.0f;
        }
    }

    public void save(Writer writer) {
        int i = this.f4059a.size;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            ParticleEmitter particleEmitter = this.f4059a.get(i2);
            int i4 = i3 + 1;
            if (i3 > 0) {
                writer.write("\n");
            }
            particleEmitter.save(writer);
            i2++;
            i3 = i4;
        }
    }

    public void scaleEffect(float f, float f2) {
        scaleEffect(f, f, f2);
    }

    public void setDuration(int i) {
        int i2 = this.f4059a.size;
        for (int i3 = 0; i3 < i2; i3++) {
            ParticleEmitter particleEmitter = this.f4059a.get(i3);
            particleEmitter.setContinuous(false);
            particleEmitter.duration = i;
            particleEmitter.durationTimer = 0.0f;
        }
    }

    public void setEmittersCleanUpBlendFunction(boolean z) {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.get(i2).setCleansUpBlendFunction(z);
        }
    }

    public void setFlip(boolean z, boolean z2) {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.get(i2).setFlip(z, z2);
        }
    }

    public void setPosition(float f, float f2) {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.get(i2).setPosition(f, f2);
        }
    }

    public void start() {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.get(i2).start();
        }
    }

    public void update(float f) {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.get(i2).update(f);
        }
    }

    public void draw(Batch batch, float f) {
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.get(i2).draw(batch, f);
        }
    }

    public void load(FileHandle fileHandle, TextureAtlas textureAtlas) {
        load(fileHandle, textureAtlas, null);
    }

    public void loadEmitters(FileHandle fileHandle) {
        InputStream read = fileHandle.read();
        this.f4059a.clear();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(read), 512);
                do {
                    try {
                        this.f4059a.add(m24213c(bufferedReader2));
                    } catch (IOException e) {
                        e = e;
                        bufferedReader = bufferedReader2;
                        throw new GdxRuntimeException("Error loading effect: " + fileHandle, e);
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        StreamUtils.closeQuietly(bufferedReader);
                        throw th;
                    }
                } while (bufferedReader2.readLine() != null);
                StreamUtils.closeQuietly(bufferedReader2);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void scaleEffect(float f, float f2, float f3) {
        this.f4062k *= f;
        this.f4063p *= f2;
        this.f4064q *= f3;
        Array.ArrayIterator<ParticleEmitter> it = this.f4059a.iterator();
        while (it.hasNext()) {
            ParticleEmitter next = it.next();
            next.scaleSize(f, f2);
            next.scaleMotion(f3);
        }
    }

    public void load(FileHandle fileHandle, TextureAtlas textureAtlas, String str) {
        loadEmitters(fileHandle);
        loadEmitterImages(textureAtlas, str);
    }

    public ParticleEffect(ParticleEffect particleEffect) {
        this.f4062k = 1.0f;
        this.f4063p = 1.0f;
        this.f4064q = 1.0f;
        this.f4059a = new Array<>(true, particleEffect.f4059a.size);
        int i = particleEffect.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4059a.add(m24214b(particleEffect.f4059a.get(i2)));
        }
    }

    public void loadEmitterImages(FileHandle fileHandle) {
        this.f4061d = true;
        ObjectMap objectMap = new ObjectMap(this.f4059a.size);
        int i = this.f4059a.size;
        for (int i2 = 0; i2 < i; i2++) {
            ParticleEmitter particleEmitter = this.f4059a.get(i2);
            if (particleEmitter.getImagePaths().size != 0) {
                Array<Sprite> array = new Array<>();
                Array.ArrayIterator<String> it = particleEmitter.getImagePaths().iterator();
                while (it.hasNext()) {
                    String name = new File(it.next().replace('\\', '/')).getName();
                    Sprite sprite = (Sprite) objectMap.get(name);
                    if (sprite == null) {
                        sprite = new Sprite(m24215a(fileHandle.child(name)));
                        objectMap.put(name, sprite);
                    }
                    array.add(sprite);
                }
                particleEmitter.setSprites(array);
            }
        }
    }
}
