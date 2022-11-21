package com.badlogic.gdx.graphics.g3d.particles.batches;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.attributes.BlendingAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.DepthTestAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.TextureAttribute;
import com.badlogic.gdx.graphics.g3d.model.MeshPart;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleShader;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.graphics.g3d.particles.renderers.PointSpriteControllerRenderData;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
import com.prineside.tdi2.tiles.CoreTile;
/* loaded from: classes.dex */
public class PointSpriteParticleBatch extends BufferedParticleBatch<PointSpriteControllerRenderData> {

    /* renamed from: A */
    public static final int f4605A;

    /* renamed from: B */
    public static final int f4606B;

    /* renamed from: u */
    public static boolean f4607u = false;

    /* renamed from: v */
    public static final Vector3 f4608v = new Vector3();

    /* renamed from: w */
    public static final VertexAttributes f4609w;

    /* renamed from: x */
    public static final int f4610x;

    /* renamed from: y */
    public static final int f4611y;

    /* renamed from: z */
    public static final int f4612z;

    /* renamed from: q */
    public float[] f4613q;

    /* renamed from: r */
    public Renderable f4614r;

    /* renamed from: s */
    public BlendingAttribute f4615s;

    /* renamed from: t */
    public DepthTestAttribute f4616t;

    public PointSpriteParticleBatch() {
        this(CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
    }

    public BlendingAttribute getBlendingAttribute() {
        return this.f4615s;
    }

    @Override // com.badlogic.gdx.graphics.g3d.RenderableProvider
    public void getRenderables(Array<Renderable> array, Pool<Renderable> pool) {
        if (this.f4599b > 0) {
            array.add(pool.obtain().set(this.f4614r));
        }
    }

    static {
        VertexAttributes vertexAttributes = new VertexAttributes(new VertexAttribute(1, 3, ShaderProgram.POSITION_ATTRIBUTE), new VertexAttribute(2, 4, ShaderProgram.COLOR_ATTRIBUTE), new VertexAttribute(16, 4, "a_region"), new VertexAttribute(512, 3, "a_sizeAndRotation"));
        f4609w = vertexAttributes;
        f4610x = (short) (vertexAttributes.vertexSize / 4);
        f4611y = (short) (vertexAttributes.findByUsage(1).offset / 4);
        f4612z = (short) (vertexAttributes.findByUsage(2).offset / 4);
        f4605A = (short) (vertexAttributes.findByUsage(16).offset / 4);
        f4606B = (short) (vertexAttributes.findByUsage(512).offset / 4);
    }

    public PointSpriteParticleBatch(int i) {
        this(i, new ParticleShader.Config(ParticleShader.ParticleType.Point));
    }

    /* renamed from: c */
    public static void m24099c() {
        Gdx.f3119gl.glEnable(GL20.GL_VERTEX_PROGRAM_POINT_SIZE);
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            Gdx.f3119gl.glEnable(34913);
        }
        f4607u = true;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.BufferedParticleBatch
    /* renamed from: a */
    public void mo24101a(int[] iArr) {
        Array.ArrayIterator it = this.f4598a.iterator();
        int i = 0;
        while (it.hasNext()) {
            PointSpriteControllerRenderData pointSpriteControllerRenderData = (PointSpriteControllerRenderData) it.next();
            ParallelArray.FloatChannel floatChannel = pointSpriteControllerRenderData.scaleChannel;
            ParallelArray.FloatChannel floatChannel2 = pointSpriteControllerRenderData.regionChannel;
            ParallelArray.FloatChannel floatChannel3 = pointSpriteControllerRenderData.positionChannel;
            ParallelArray.FloatChannel floatChannel4 = pointSpriteControllerRenderData.colorChannel;
            ParallelArray.FloatChannel floatChannel5 = pointSpriteControllerRenderData.rotationChannel;
            int i2 = 0;
            while (i2 < pointSpriteControllerRenderData.controller.particles.size) {
                int i3 = iArr[i] * f4610x;
                int i4 = floatChannel2.strideSize * i2;
                int i5 = floatChannel3.strideSize * i2;
                int i6 = floatChannel4.strideSize * i2;
                int i7 = floatChannel5.strideSize * i2;
                float[] fArr = this.f4613q;
                int i8 = f4611y;
                Array.ArrayIterator arrayIterator = it;
                float[] fArr2 = floatChannel3.data;
                fArr[i3 + i8] = fArr2[i5 + 0];
                fArr[i3 + i8 + 1] = fArr2[i5 + 1];
                fArr[i3 + i8 + 2] = fArr2[i5 + 2];
                int i9 = f4612z;
                PointSpriteControllerRenderData pointSpriteControllerRenderData2 = pointSpriteControllerRenderData;
                float[] fArr3 = floatChannel4.data;
                fArr[i3 + i9] = fArr3[i6 + 0];
                fArr[i3 + i9 + 1] = fArr3[i6 + 1];
                fArr[i3 + i9 + 2] = fArr3[i6 + 2];
                fArr[i9 + i3 + 3] = fArr3[i6 + 3];
                int i10 = f4606B;
                fArr[i3 + i10] = floatChannel.data[floatChannel.strideSize * i2];
                float[] fArr4 = floatChannel5.data;
                fArr[i3 + i10 + 1] = fArr4[i7 + 0];
                fArr[i10 + i3 + 2] = fArr4[i7 + 1];
                int i11 = f4605A;
                float[] fArr5 = floatChannel2.data;
                fArr[i3 + i11] = fArr5[i4 + 0];
                fArr[i3 + i11 + 1] = fArr5[i4 + 1];
                fArr[i3 + i11 + 2] = fArr5[i4 + 2];
                fArr[i3 + i11 + 3] = fArr5[i4 + 3];
                i2++;
                i++;
                pointSpriteControllerRenderData = pointSpriteControllerRenderData2;
                it = arrayIterator;
            }
        }
        MeshPart meshPart = this.f4614r.meshPart;
        int i12 = this.f4599b;
        meshPart.size = i12;
        meshPart.mesh.setVertices(this.f4613q, 0, i12 * f4610x);
        this.f4614r.meshPart.update();
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.BufferedParticleBatch
    public void allocParticlesData(int i) {
        this.f4613q = new float[f4610x * i];
        Mesh mesh = this.f4614r.meshPart.mesh;
        if (mesh != null) {
            mesh.dispose();
        }
        this.f4614r.meshPart.mesh = new Mesh(false, i, 0, f4609w);
    }

    /* renamed from: b */
    public void m24100b() {
        Renderable renderable = new Renderable();
        this.f4614r = renderable;
        MeshPart meshPart = renderable.meshPart;
        meshPart.primitiveType = 0;
        meshPart.offset = 0;
        renderable.material = new Material(this.f4615s, this.f4616t, TextureAttribute.createDiffuse((Texture) null));
    }

    public Texture getTexture() {
        return ((TextureAttribute) this.f4614r.material.get(TextureAttribute.Diffuse)).textureDescription.texture;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
        ResourceData.SaveData saveData = resourceData.getSaveData("pointSpriteBatch");
        if (saveData != null) {
            setTexture((Texture) assetManager.get(saveData.loadAsset()));
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
        resourceData.createSaveData("pointSpriteBatch").saveAsset(assetManager.getAssetFileName(getTexture()), Texture.class);
    }

    public void setTexture(Texture texture) {
        ((TextureAttribute) this.f4614r.material.get(TextureAttribute.Diffuse)).textureDescription.texture = texture;
    }

    public PointSpriteParticleBatch(int i, ParticleShader.Config config) {
        this(i, config, null, null);
    }

    public PointSpriteParticleBatch(int i, ParticleShader.Config config, BlendingAttribute blendingAttribute, DepthTestAttribute depthTestAttribute) {
        super(PointSpriteControllerRenderData.class);
        if (!f4607u) {
            m24099c();
        }
        this.f4615s = blendingAttribute;
        this.f4616t = depthTestAttribute;
        if (blendingAttribute == null) {
            this.f4615s = new BlendingAttribute(1, GL20.GL_ONE_MINUS_SRC_ALPHA, 1.0f);
        }
        if (this.f4616t == null) {
            this.f4616t = new DepthTestAttribute(GL20.GL_LEQUAL, false);
        }
        m24100b();
        ensureCapacity(i);
        this.f4614r.shader = new ParticleShader(this.f4614r, config);
        this.f4614r.shader.init();
    }
}
