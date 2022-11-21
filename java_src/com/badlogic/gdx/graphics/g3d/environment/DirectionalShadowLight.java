package com.badlogic.gdx.graphics.g3d.environment;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g3d.utils.TextureDescriptor;
import com.badlogic.gdx.graphics.glutils.FrameBuffer;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public class DirectionalShadowLight extends DirectionalLight implements ShadowMap, Disposable {

    /* renamed from: a */
    public FrameBuffer f4454a;

    /* renamed from: b */
    public Camera f4455b;

    /* renamed from: d */
    public float f4456d;

    /* renamed from: k */
    public float f4457k;

    /* renamed from: p */
    public final Vector3 f4458p = new Vector3();

    /* renamed from: q */
    public final TextureDescriptor f4459q;

    public void begin(Camera camera) {
        update(camera);
        begin();
    }

    public Camera getCamera() {
        return this.f4455b;
    }

    public FrameBuffer getFrameBuffer() {
        return this.f4454a;
    }

    @Override // com.badlogic.gdx.graphics.g3d.environment.ShadowMap
    public Matrix4 getProjViewTrans() {
        return this.f4455b.combined;
    }

    public void update(Camera camera) {
        update(this.f4458p.set(camera.direction).scl(this.f4457k), camera.direction);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        FrameBuffer frameBuffer = this.f4454a;
        if (frameBuffer != null) {
            frameBuffer.dispose();
        }
        this.f4454a = null;
    }

    public void end() {
        Gdx.f3119gl.glDisable(GL20.GL_SCISSOR_TEST);
        this.f4454a.end();
    }

    @Override // com.badlogic.gdx.graphics.g3d.environment.ShadowMap
    public TextureDescriptor getDepthMap() {
        this.f4459q.texture = this.f4454a.getColorBufferTexture();
        return this.f4459q;
    }

    public void update(Vector3 vector3, Vector3 vector32) {
        this.f4455b.position.set(this.direction).scl(-this.f4456d).add(vector3);
        this.f4455b.direction.set(this.direction).nor();
        this.f4455b.normalizeUp();
        this.f4455b.update();
    }

    public DirectionalShadowLight(int i, int i2, float f, float f2, float f3, float f4) {
        this.f4454a = new FrameBuffer(Pixmap.Format.RGBA8888, i, i2, true);
        OrthographicCamera orthographicCamera = new OrthographicCamera(f, f2);
        this.f4455b = orthographicCamera;
        orthographicCamera.near = f3;
        orthographicCamera.far = f4;
        this.f4457k = f2 * 0.5f;
        this.f4456d = f3 + ((f4 - f3) * 0.5f);
        TextureDescriptor textureDescriptor = new TextureDescriptor();
        this.f4459q = textureDescriptor;
        Texture.TextureFilter textureFilter = Texture.TextureFilter.Nearest;
        textureDescriptor.magFilter = textureFilter;
        textureDescriptor.minFilter = textureFilter;
        Texture.TextureWrap textureWrap = Texture.TextureWrap.ClampToEdge;
        textureDescriptor.vWrap = textureWrap;
        textureDescriptor.uWrap = textureWrap;
    }

    public void begin(Vector3 vector3, Vector3 vector32) {
        update(vector3, vector32);
        begin();
    }

    public void begin() {
        int width = this.f4454a.getWidth();
        int height = this.f4454a.getHeight();
        this.f4454a.begin();
        Gdx.f3119gl.glViewport(0, 0, width, height);
        Gdx.f3119gl.glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
        Gdx.f3119gl.glClear(16640);
        Gdx.f3119gl.glEnable(GL20.GL_SCISSOR_TEST);
        Gdx.f3119gl.glScissor(1, 1, width - 2, height - 2);
    }
}
