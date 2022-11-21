package com.prineside.tdi2.managers;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.ModelBatch;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.math.Matrix4;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class RenderingManager extends Manager.ManagerAdapter {

    /* renamed from: a */
    public final Matrix4 f10027a;

    /* renamed from: b */
    public final Matrix4 f10028b;
    public final SpriteBatch batch;
    public final ModelBatch modelBatch;
    public final ShapeRenderer shapeRenderer;

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<RenderingManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public RenderingManager read() {
            return Game.f8589i.renderingManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void preRender(float f) {
        resetTransformState();
    }

    public static ShaderProgram createDefaultShader() {
        ShaderProgram shaderProgram = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n", "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP \n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  vec4 color = texture2D(u_texture, v_texCoords);  gl_FragColor = v_color * color;\n}");
        if (shaderProgram.isCompiled()) {
            return shaderProgram;
        }
        throw new IllegalArgumentException("Error compiling shader: " + shaderProgram.getLog());
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.shapeRenderer.dispose();
        this.batch.dispose();
    }

    public void resetTransformState() {
        this.batch.setTransformMatrix(this.f10028b);
        this.shapeRenderer.setTransformMatrix(this.f10027a);
    }

    public RenderingManager() {
        ShapeRenderer shapeRenderer = new ShapeRenderer();
        this.shapeRenderer = shapeRenderer;
        this.f10027a = new Matrix4(shapeRenderer.getTransformMatrix());
        this.modelBatch = new ModelBatch();
        SpriteBatch spriteBatch = new SpriteBatch(4095, createDefaultShader());
        this.batch = spriteBatch;
        this.f10028b = new Matrix4(spriteBatch.getTransformMatrix());
    }
}
