package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.PerspectiveCamera;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.g3d.Environment;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.ModelCache;
import com.badlogic.gdx.graphics.g3d.ModelInstance;
import com.badlogic.gdx.graphics.g3d.attributes.ColorAttribute;
import com.badlogic.gdx.graphics.g3d.environment.DirectionalLight;
import com.badlogic.gdx.graphics.g3d.model.Node;
import com.badlogic.gdx.graphics.g3d.model.NodePart;
import com.badlogic.gdx.graphics.glutils.FrameBuffer;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ScreenUtils;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import java.nio.Buffer;
/* renamed from: com.prineside.tdi2.ui.actors.ModelView */
/* loaded from: classes2.dex */
public class ModelView extends Actor implements Disposable {
    public static final Transformer rotateModelAround = new Transformer() { // from class: com.prineside.tdi2.ui.actors.ModelView.1
        @Override // com.prineside.tdi2.p036ui.actors.ModelView.Transformer
        public void transform(ModelView modelView, float f, float f2) {
            ModelInstance modelInstance = modelView.model;
            if (modelInstance == null) {
                return;
            }
            modelInstance.transform.rotate(Vector3.f5530Y, f * 30.0f);
            modelView.model.calculateTransforms();
            modelView.requireModelCacheUpdate();
            modelView.requireRedraw();
        }
    };

    /* renamed from: F */
    public FrameBuffer f12617F;

    /* renamed from: G */
    public TextureRegion f12618G;

    /* renamed from: H */
    public Transformer f12619H;

    /* renamed from: I */
    public boolean f12620I;

    /* renamed from: J */
    public float f12621J;

    /* renamed from: K */
    public boolean f12622K;

    /* renamed from: L */
    public String f12623L;

    /* renamed from: M */
    public boolean f12624M;
    public PerspectiveCamera camera;
    public Environment environment;
    public int height;
    public ModelInstance model;
    public ModelCache modelCache;
    public boolean modelCacheUpdateRequired;
    public int width;

    /* renamed from: com.prineside.tdi2.ui.actors.ModelView$Transformer */
    /* loaded from: classes2.dex */
    public static abstract class Transformer {
        public abstract void transform(ModelView modelView, float f, float f2);
    }

    public void requireModelCacheUpdate() {
        this.modelCacheUpdateRequired = true;
    }

    public void requireRedraw() {
        this.f12620I = true;
    }

    public void saveScreenshot(String str) {
        this.f12622K = true;
        this.f12623L = str;
    }

    public void setTransformer(Transformer transformer) {
        this.f12619H = transformer;
    }

    public ModelView(int i, int i2, Transformer transformer, Environment environment, boolean z) {
        Environment environment2;
        if (environment == null) {
            environment2 = new Environment();
            environment2.set(new ColorAttribute(ColorAttribute.AmbientLight, 0.3f, 0.3f, 0.3f, 1.0f));
            environment2.add(new DirectionalLight().set(0.75f, 0.75f, 0.75f, -0.5f, -1.0f, -0.2f));
        } else {
            environment2 = environment;
        }
        this.environment = environment2;
        this.f12619H = transformer;
        this.f12624M = z;
        this.modelCache = new ModelCache();
        setSize(i, i2);
        requireModelCacheUpdate();
        requireRedraw();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        FrameBuffer frameBuffer = this.f12617F;
        if (frameBuffer != null) {
            frameBuffer.dispose();
        }
        this.modelCache.dispose();
        this.f12617F = null;
    }

    public void setEnvironment(Environment environment) {
        if (environment != null) {
            this.environment = environment;
            requireRedraw();
            return;
        }
        throw new IllegalArgumentException("Environment can't be null");
    }

    public void setModel(ModelInstance modelInstance, float f) {
        this.model = modelInstance;
        modelInstance.transform.setToTranslationAndScaling(new Vector3(0.0f, 0.0f, 0.0f), new Vector3(f, f, f));
        requireModelCacheUpdate();
        requireRedraw();
    }

    public void setModelPart(Model model, String str, Material material, float f) {
        ModelInstance modelInstance = new ModelInstance(model, str, true, true, true);
        Node node = modelInstance.getNode(str);
        node.translation.set(0.0f, 0.0f, 0.0f);
        node.rotation.setFromAxis(Vector3.f5529X, -90.0f);
        if (material != null) {
            int i = 0;
            while (true) {
                Array<NodePart> array = node.parts;
                if (i >= array.size) {
                    break;
                }
                array.get(i).material = material;
                i++;
            }
        }
        modelInstance.calculateTransforms();
        setModel(modelInstance, f);
    }

    public void setSize(int i, int i2) {
        if (i < 32 || i2 < 24) {
            i = 32;
            i2 = 32;
        }
        if (this.width != i || this.height != i2) {
            FrameBuffer frameBuffer = this.f12617F;
            if (frameBuffer != null) {
                frameBuffer.dispose();
            }
            this.height = i2;
            this.width = i;
            if (!this.f12624M) {
                FrameBuffer frameBuffer2 = new FrameBuffer(Pixmap.Format.RGBA8888, i, i2, true);
                this.f12617F = frameBuffer2;
                TextureRegion textureRegion = new TextureRegion(frameBuffer2.getColorBufferTexture());
                this.f12618G = textureRegion;
                textureRegion.flip(false, true);
                float f = 1.0f / i2;
                TextureRegion textureRegion2 = this.f12618G;
                textureRegion2.setU(textureRegion2.getU() + f);
                TextureRegion textureRegion3 = this.f12618G;
                textureRegion3.setV(textureRegion3.getV() - f);
                TextureRegion textureRegion4 = this.f12618G;
                textureRegion4.setU2(textureRegion4.getU2() - f);
                TextureRegion textureRegion5 = this.f12618G;
                textureRegion5.setV2(textureRegion5.getV2() + f);
                Texture texture = this.f12618G.getTexture();
                Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
                texture.setFilter(textureFilter, textureFilter);
            }
            PerspectiveCamera perspectiveCamera = new PerspectiveCamera(67.0f, i, i2);
            this.camera = perspectiveCamera;
            perspectiveCamera.position.set(1.0f, 0.25f, 0.0f);
            this.camera.lookAt(0.0f, 0.0f, 0.0f);
            PerspectiveCamera perspectiveCamera2 = this.camera;
            perspectiveCamera2.near = 0.01f;
            perspectiveCamera2.far = 300.0f;
            perspectiveCamera2.update();
        }
    }

    public void updateModelCacheIfRequired() {
        if (!this.modelCacheUpdateRequired || this.model == null) {
            return;
        }
        try {
            this.modelCache.begin();
            this.modelCache.add(this.model);
            this.modelCache.end();
        } catch (Exception e) {
            Logger.error("ModelView", "failed to update model cache", e);
        }
        this.modelCacheUpdateRequired = false;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        super.act(f);
        if (!isVisible()) {
            return;
        }
        float f2 = this.f12621J + f;
        this.f12621J = f2;
        Transformer transformer = this.f12619H;
        if (transformer != null) {
            transformer.transform(this, f, f2);
        }
        if (this.f12624M) {
            updateModelCacheIfRequired();
            this.f12620I = false;
        } else if ((this.f12620I || this.f12622K) && this.model != null) {
            this.f12617F.begin();
            GL20 gl20 = Gdx.f3119gl;
            Color color = Config.BACKGROUND_COLOR;
            gl20.glClearColor(color.f3892r, color.f3891g, color.f3890b, 0.0f);
            Gdx.f3119gl.glClear(16640);
            Game.f8589i.renderingManager.modelBatch.begin(this.camera);
            updateModelCacheIfRequired();
            Game.f8589i.renderingManager.modelBatch.render(this.modelCache, this.environment);
            Game.f8589i.renderingManager.modelBatch.end();
            if (this.f12622K) {
                byte[] frameBufferPixels = ScreenUtils.getFrameBufferPixels(0, 0, this.f12617F.getWidth(), this.f12617F.getHeight(), true);
                Pixmap pixmap = new Pixmap(this.f12617F.getWidth(), this.f12617F.getHeight(), Pixmap.Format.RGBA8888);
                BufferUtils.copy(frameBufferPixels, 0, (Buffer) pixmap.getPixels(), frameBufferPixels.length);
                PixmapIO.writePNG(Gdx.files.external(this.f12623L), pixmap);
                pixmap.dispose();
                this.f12622K = false;
            }
            this.f12617F.end();
            this.f12620I = false;
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        super.draw(batch, f);
        if (this.model == null) {
            return;
        }
        if (this.f12624M) {
            batch.end();
            Game.f8589i.renderingManager.modelBatch.begin(this.camera);
            Game.f8589i.renderingManager.modelBatch.render(this.modelCache, this.environment);
            Game.f8589i.renderingManager.modelBatch.end();
            batch.begin();
            return;
        }
        Color color = getColor();
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
        batch.draw(this.f12618G, getX(), getY(), getWidth(), getHeight());
    }
}
