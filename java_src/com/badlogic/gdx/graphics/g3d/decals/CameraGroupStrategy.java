package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Pool;
import java.util.Comparator;
/* loaded from: classes.dex */
public class CameraGroupStrategy implements GroupStrategy, Disposable {

    /* renamed from: a */
    public Pool<Array<Decal>> f4397a;

    /* renamed from: b */
    public Array<Array<Decal>> f4398b;

    /* renamed from: d */
    public ObjectMap<DecalMaterial, Array<Decal>> f4399d;

    /* renamed from: k */
    public Camera f4400k;

    /* renamed from: p */
    public ShaderProgram f4401p;

    /* renamed from: q */
    public final Comparator<Decal> f4402q;

    public CameraGroupStrategy(Camera camera) {
        this.f4397a = new Pool<Array<Decal>>(16) { // from class: com.badlogic.gdx.graphics.g3d.decals.CameraGroupStrategy.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public Array<Decal> newObject() {
                return new Array<>();
            }
        };
        this.f4398b = new Array<>();
        this.f4399d = new ObjectMap<>();
        this.f4400k = camera;
        this.f4402q = new Comparator<Decal>() { // from class: com.badlogic.gdx.graphics.g3d.decals.CameraGroupStrategy.2
            @Override // java.util.Comparator
            public int compare(Decal decal, Decal decal2) {
                return (int) Math.signum(CameraGroupStrategy.this.f4400k.position.dst(decal2.f4434b) - CameraGroupStrategy.this.f4400k.position.dst(decal.f4434b));
            }
        };
        m24152a();
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public void afterGroup(int i) {
        if (i == 1) {
            Gdx.f3119gl.glDisable(GL20.GL_BLEND);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public void afterGroups() {
        Gdx.f3119gl.glDisable(GL20.GL_DEPTH_TEST);
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public void beforeGroup(int i, Array<Decal> array) {
        if (i == 1) {
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            array.sort(this.f4402q);
            return;
        }
        int i2 = array.size;
        for (int i3 = 0; i3 < i2; i3++) {
            Decal decal = array.get(i3);
            Array<Decal> array2 = this.f4399d.get(decal.f4439g);
            if (array2 == null) {
                array2 = this.f4397a.obtain();
                array2.clear();
                this.f4398b.add(array2);
                this.f4399d.put(decal.f4439g, array2);
            }
            array2.add(decal);
        }
        array.clear();
        ObjectMap.Values<Array<Decal>> it = this.f4399d.values().iterator();
        while (it.hasNext()) {
            array.addAll(it.next());
        }
        this.f4399d.clear();
        this.f4397a.freeAll(this.f4398b);
        this.f4398b.clear();
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public int decideGroup(Decal decal) {
        return !decal.getMaterial().isOpaque();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        ShaderProgram shaderProgram = this.f4401p;
        if (shaderProgram != null) {
            shaderProgram.dispose();
        }
    }

    public Camera getCamera() {
        return this.f4400k;
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public ShaderProgram getGroupShader(int i) {
        return this.f4401p;
    }

    public void setCamera(Camera camera) {
        this.f4400k = camera;
    }

    /* renamed from: a */
    public final void m24152a() {
        ShaderProgram shaderProgram = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n", "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}");
        this.f4401p = shaderProgram;
        if (shaderProgram.isCompiled()) {
            return;
        }
        throw new IllegalArgumentException("couldn't compile shader: " + this.f4401p.getLog());
    }

    @Override // com.badlogic.gdx.graphics.g3d.decals.GroupStrategy
    public void beforeGroups() {
        Gdx.f3119gl.glEnable(GL20.GL_DEPTH_TEST);
        this.f4401p.bind();
        this.f4401p.setUniformMatrix("u_projectionViewMatrix", this.f4400k.combined);
        this.f4401p.setUniformi("u_texture", 0);
    }

    public CameraGroupStrategy(Camera camera, Comparator<Decal> comparator) {
        this.f4397a = new Pool<Array<Decal>>(16) { // from class: com.badlogic.gdx.graphics.g3d.decals.CameraGroupStrategy.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public Array<Decal> newObject() {
                return new Array<>();
            }
        };
        this.f4398b = new Array<>();
        this.f4399d = new ObjectMap<>();
        this.f4400k = camera;
        this.f4402q = comparator;
        m24152a();
    }
}
