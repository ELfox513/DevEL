package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GL30;
import com.badlogic.gdx.graphics.GLTexture;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class GLFrameBuffer<T extends GLTexture> implements Disposable {

    /* renamed from: u */
    public static int f4974u;

    /* renamed from: a */
    public Array<T> f4976a = new Array<>();

    /* renamed from: b */
    public int f4977b;

    /* renamed from: d */
    public int f4978d;

    /* renamed from: k */
    public int f4979k;

    /* renamed from: p */
    public int f4980p;

    /* renamed from: q */
    public boolean f4981q;

    /* renamed from: r */
    public boolean f4982r;

    /* renamed from: s */
    public GLFrameBufferBuilder<? extends GLFrameBuffer<T>> f4983s;

    /* renamed from: t */
    public static final Map<Application, Array<GLFrameBuffer>> f4973t = new HashMap();

    /* renamed from: v */
    public static boolean f4975v = false;

    /* loaded from: classes.dex */
    public static class FloatFrameBufferBuilder extends GLFrameBufferBuilder<FloatFrameBuffer> {
        public FloatFrameBufferBuilder(int i, int i2) {
            super(i, i2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.badlogic.gdx.graphics.glutils.GLFrameBuffer.GLFrameBufferBuilder
        public FloatFrameBuffer build() {
            return new FloatFrameBuffer(this);
        }
    }

    /* loaded from: classes.dex */
    public static class FrameBufferBuilder extends GLFrameBufferBuilder<FrameBuffer> {
        public FrameBufferBuilder(int i, int i2) {
            super(i, i2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.badlogic.gdx.graphics.glutils.GLFrameBuffer.GLFrameBufferBuilder
        public FrameBuffer build() {
            return new FrameBuffer(this);
        }
    }

    /* loaded from: classes.dex */
    public static class FrameBufferCubemapBuilder extends GLFrameBufferBuilder<FrameBufferCubemap> {
        public FrameBufferCubemapBuilder(int i, int i2) {
            super(i, i2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.badlogic.gdx.graphics.glutils.GLFrameBuffer.GLFrameBufferBuilder
        public FrameBufferCubemap build() {
            return new FrameBufferCubemap(this);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class GLFrameBufferBuilder<U extends GLFrameBuffer<? extends GLTexture>> {

        /* renamed from: a */
        public int f4992a;

        /* renamed from: b */
        public int f4993b;

        /* renamed from: c */
        public Array<FrameBufferTextureAttachmentSpec> f4994c = new Array<>();

        /* renamed from: d */
        public FrameBufferRenderBufferAttachmentSpec f4995d;

        /* renamed from: e */
        public FrameBufferRenderBufferAttachmentSpec f4996e;

        /* renamed from: f */
        public FrameBufferRenderBufferAttachmentSpec f4997f;

        /* renamed from: g */
        public boolean f4998g;

        /* renamed from: h */
        public boolean f4999h;

        /* renamed from: i */
        public boolean f5000i;

        public GLFrameBufferBuilder<U> addBasicDepthRenderBuffer() {
            return addDepthRenderBuffer(GL20.GL_DEPTH_COMPONENT16);
        }

        public GLFrameBufferBuilder<U> addBasicStencilDepthPackedRenderBuffer() {
            return addStencilDepthPackedRenderBuffer(GL30.GL_DEPTH24_STENCIL8);
        }

        public GLFrameBufferBuilder<U> addBasicStencilRenderBuffer() {
            return addStencilRenderBuffer(GL20.GL_STENCIL_INDEX8);
        }

        public GLFrameBufferBuilder<U> addColorTextureAttachment(int i, int i2, int i3) {
            this.f4994c.add(new FrameBufferTextureAttachmentSpec(i, i2, i3));
            return this;
        }

        public abstract U build();

        public GLFrameBufferBuilder<U> addDepthRenderBuffer(int i) {
            this.f4996e = new FrameBufferRenderBufferAttachmentSpec(i);
            this.f4999h = true;
            return this;
        }

        public GLFrameBufferBuilder<U> addDepthTextureAttachment(int i, int i2) {
            FrameBufferTextureAttachmentSpec frameBufferTextureAttachmentSpec = new FrameBufferTextureAttachmentSpec(i, GL20.GL_DEPTH_COMPONENT, i2);
            frameBufferTextureAttachmentSpec.f4990f = true;
            this.f4994c.add(frameBufferTextureAttachmentSpec);
            return this;
        }

        public GLFrameBufferBuilder<U> addFloatAttachment(int i, int i2, int i3, boolean z) {
            FrameBufferTextureAttachmentSpec frameBufferTextureAttachmentSpec = new FrameBufferTextureAttachmentSpec(i, i2, i3);
            frameBufferTextureAttachmentSpec.f4988d = true;
            frameBufferTextureAttachmentSpec.f4989e = z;
            this.f4994c.add(frameBufferTextureAttachmentSpec);
            return this;
        }

        public GLFrameBufferBuilder<U> addStencilDepthPackedRenderBuffer(int i) {
            this.f4997f = new FrameBufferRenderBufferAttachmentSpec(i);
            this.f5000i = true;
            return this;
        }

        public GLFrameBufferBuilder<U> addStencilRenderBuffer(int i) {
            this.f4995d = new FrameBufferRenderBufferAttachmentSpec(i);
            this.f4998g = true;
            return this;
        }

        public GLFrameBufferBuilder<U> addStencilTextureAttachment(int i, int i2) {
            FrameBufferTextureAttachmentSpec frameBufferTextureAttachmentSpec = new FrameBufferTextureAttachmentSpec(i, GL20.GL_STENCIL_ATTACHMENT, i2);
            frameBufferTextureAttachmentSpec.f4991g = true;
            this.f4994c.add(frameBufferTextureAttachmentSpec);
            return this;
        }

        public GLFrameBufferBuilder(int i, int i2) {
            this.f4992a = i;
            this.f4993b = i2;
        }

        public GLFrameBufferBuilder<U> addBasicColorTextureAttachment(Pixmap.Format format) {
            int glFormat = Pixmap.Format.toGlFormat(format);
            return addColorTextureAttachment(glFormat, glFormat, Pixmap.Format.toGlType(format));
        }
    }

    public GLFrameBuffer() {
    }

    public static void clearAllFrameBuffers(Application application) {
        f4973t.remove(application);
    }

    public static StringBuilder getManagedStatus(StringBuilder sb) {
        sb.append("Managed buffers/app: { ");
        for (Application application : f4973t.keySet()) {
            sb.append(f4973t.get(application).size);
            sb.append(" ");
        }
        sb.append("}");
        return sb;
    }

    public static void unbind() {
        Gdx.gl20.glBindFramebuffer(GL20.GL_FRAMEBUFFER, f4974u);
    }

    /* renamed from: b */
    public abstract void mo24027b(T t);

    public void bind() {
        Gdx.gl20.glBindFramebuffer(GL20.GL_FRAMEBUFFER, this.f4977b);
    }

    /* renamed from: e */
    public abstract T mo24024e(FrameBufferTextureAttachmentSpec frameBufferTextureAttachmentSpec);

    public void end() {
        end(0, 0, Gdx.graphics.getBackBufferWidth(), Gdx.graphics.getBackBufferHeight());
    }

    /* renamed from: f */
    public abstract void mo24023f(T t);

    /* renamed from: g */
    public void m24022g() {
        GL20 gl20 = Gdx.gl20;
        GLFrameBufferBuilder<? extends GLFrameBuffer<T>> gLFrameBufferBuilder = this.f4983s;
        gl20.glViewport(0, 0, gLFrameBufferBuilder.f4992a, gLFrameBufferBuilder.f4993b);
    }

    public T getColorBufferTexture() {
        return this.f4976a.first();
    }

    public int getDepthBufferHandle() {
        return this.f4978d;
    }

    public int getFramebufferHandle() {
        return this.f4977b;
    }

    public int getHeight() {
        return this.f4983s.f4993b;
    }

    public int getStencilBufferHandle() {
        return this.f4979k;
    }

    public Array<T> getTextureAttachments() {
        return this.f4976a;
    }

    public int getWidth() {
        return this.f4983s.f4992a;
    }

    /* loaded from: classes.dex */
    public static class FrameBufferRenderBufferAttachmentSpec {

        /* renamed from: a */
        public int f4984a;

        public FrameBufferRenderBufferAttachmentSpec(int i) {
            this.f4984a = i;
        }
    }

    /* loaded from: classes.dex */
    public static class FrameBufferTextureAttachmentSpec {

        /* renamed from: a */
        public int f4985a;

        /* renamed from: b */
        public int f4986b;

        /* renamed from: c */
        public int f4987c;

        /* renamed from: d */
        public boolean f4988d;

        /* renamed from: e */
        public boolean f4989e;

        /* renamed from: f */
        public boolean f4990f;

        /* renamed from: g */
        public boolean f4991g;

        public boolean isColorTexture() {
            return (this.f4990f || this.f4991g) ? false : true;
        }

        public FrameBufferTextureAttachmentSpec(int i, int i2, int i3) {
            this.f4985a = i;
            this.f4986b = i2;
            this.f4987c = i3;
        }
    }

    /* renamed from: a */
    public static void m24028a(Application application, GLFrameBuffer gLFrameBuffer) {
        Map<Application, Array<GLFrameBuffer>> map = f4973t;
        Array<GLFrameBuffer> array = map.get(application);
        if (array == null) {
            array = new Array<>();
        }
        array.add(gLFrameBuffer);
        map.put(application, array);
    }

    public static void invalidateAllFrameBuffers(Application application) {
        Array<GLFrameBuffer> array;
        if (Gdx.gl20 == null || (array = f4973t.get(application)) == null) {
            return;
        }
        for (int i = 0; i < array.size; i++) {
            array.get(i).m24026c();
        }
    }

    /* renamed from: c */
    public void m24026c() {
        boolean z;
        int i;
        GL20 gl20 = Gdx.gl20;
        m24025d();
        if (!f4975v) {
            f4975v = true;
            if (Gdx.app.getType() == Application.ApplicationType.iOS) {
                IntBuffer asIntBuffer = ByteBuffer.allocateDirect(64).order(ByteOrder.nativeOrder()).asIntBuffer();
                gl20.glGetIntegerv(36006, asIntBuffer);
                f4974u = asIntBuffer.get(0);
            } else {
                f4974u = 0;
            }
        }
        int glGenFramebuffer = gl20.glGenFramebuffer();
        this.f4977b = glGenFramebuffer;
        gl20.glBindFramebuffer(GL20.GL_FRAMEBUFFER, glGenFramebuffer);
        GLFrameBufferBuilder<? extends GLFrameBuffer<T>> gLFrameBufferBuilder = this.f4983s;
        int i2 = gLFrameBufferBuilder.f4992a;
        int i3 = gLFrameBufferBuilder.f4993b;
        if (gLFrameBufferBuilder.f4999h) {
            int glGenRenderbuffer = gl20.glGenRenderbuffer();
            this.f4978d = glGenRenderbuffer;
            gl20.glBindRenderbuffer(GL20.GL_RENDERBUFFER, glGenRenderbuffer);
            gl20.glRenderbufferStorage(GL20.GL_RENDERBUFFER, this.f4983s.f4996e.f4984a, i2, i3);
        }
        if (this.f4983s.f4998g) {
            int glGenRenderbuffer2 = gl20.glGenRenderbuffer();
            this.f4979k = glGenRenderbuffer2;
            gl20.glBindRenderbuffer(GL20.GL_RENDERBUFFER, glGenRenderbuffer2);
            gl20.glRenderbufferStorage(GL20.GL_RENDERBUFFER, this.f4983s.f4995d.f4984a, i2, i3);
        }
        if (this.f4983s.f5000i) {
            int glGenRenderbuffer3 = gl20.glGenRenderbuffer();
            this.f4980p = glGenRenderbuffer3;
            gl20.glBindRenderbuffer(GL20.GL_RENDERBUFFER, glGenRenderbuffer3);
            gl20.glRenderbufferStorage(GL20.GL_RENDERBUFFER, this.f4983s.f4997f.f4984a, i2, i3);
        }
        Array<FrameBufferTextureAttachmentSpec> array = this.f4983s.f4994c;
        if (array.size > 1) {
            z = true;
        } else {
            z = false;
        }
        this.f4982r = z;
        if (z) {
            Array.ArrayIterator<FrameBufferTextureAttachmentSpec> it = array.iterator();
            int i4 = 0;
            while (it.hasNext()) {
                FrameBufferTextureAttachmentSpec next = it.next();
                T mo24024e = mo24024e(next);
                this.f4976a.add(mo24024e);
                if (next.isColorTexture()) {
                    gl20.glFramebufferTexture2D(GL20.GL_FRAMEBUFFER, i4 + GL20.GL_COLOR_ATTACHMENT0, GL20.GL_TEXTURE_2D, mo24024e.getTextureObjectHandle(), 0);
                    i4++;
                } else if (next.f4990f) {
                    gl20.glFramebufferTexture2D(GL20.GL_FRAMEBUFFER, GL20.GL_DEPTH_ATTACHMENT, GL20.GL_TEXTURE_2D, mo24024e.getTextureObjectHandle(), 0);
                } else if (next.f4991g) {
                    gl20.glFramebufferTexture2D(GL20.GL_FRAMEBUFFER, GL20.GL_STENCIL_ATTACHMENT, GL20.GL_TEXTURE_2D, mo24024e.getTextureObjectHandle(), 0);
                }
            }
            i = i4;
        } else {
            T mo24024e2 = mo24024e(array.first());
            this.f4976a.add(mo24024e2);
            gl20.glBindTexture(mo24024e2.glTarget, mo24024e2.getTextureObjectHandle());
            i = 0;
        }
        if (this.f4982r) {
            IntBuffer newIntBuffer = BufferUtils.newIntBuffer(i);
            for (int i5 = 0; i5 < i; i5++) {
                newIntBuffer.put(i5 + GL20.GL_COLOR_ATTACHMENT0);
            }
            newIntBuffer.position(0);
            Gdx.gl30.glDrawBuffers(i, newIntBuffer);
        } else {
            mo24027b(this.f4976a.first());
        }
        if (this.f4983s.f4999h) {
            gl20.glFramebufferRenderbuffer(GL20.GL_FRAMEBUFFER, GL20.GL_DEPTH_ATTACHMENT, GL20.GL_RENDERBUFFER, this.f4978d);
        }
        if (this.f4983s.f4998g) {
            gl20.glFramebufferRenderbuffer(GL20.GL_FRAMEBUFFER, GL20.GL_STENCIL_ATTACHMENT, GL20.GL_RENDERBUFFER, this.f4979k);
        }
        if (this.f4983s.f5000i) {
            gl20.glFramebufferRenderbuffer(GL20.GL_FRAMEBUFFER, GL30.GL_DEPTH_STENCIL_ATTACHMENT, GL20.GL_RENDERBUFFER, this.f4980p);
        }
        gl20.glBindRenderbuffer(GL20.GL_RENDERBUFFER, 0);
        Array.ArrayIterator<T> it2 = this.f4976a.iterator();
        while (it2.hasNext()) {
            gl20.glBindTexture(it2.next().glTarget, 0);
        }
        int glCheckFramebufferStatus = gl20.glCheckFramebufferStatus(GL20.GL_FRAMEBUFFER);
        if (glCheckFramebufferStatus == 36061) {
            GLFrameBufferBuilder<? extends GLFrameBuffer<T>> gLFrameBufferBuilder2 = this.f4983s;
            if (gLFrameBufferBuilder2.f4999h && gLFrameBufferBuilder2.f4998g && (Gdx.graphics.supportsExtension("GL_OES_packed_depth_stencil") || Gdx.graphics.supportsExtension("GL_EXT_packed_depth_stencil"))) {
                if (this.f4983s.f4999h) {
                    gl20.glDeleteRenderbuffer(this.f4978d);
                    this.f4978d = 0;
                }
                if (this.f4983s.f4998g) {
                    gl20.glDeleteRenderbuffer(this.f4979k);
                    this.f4979k = 0;
                }
                if (this.f4983s.f5000i) {
                    gl20.glDeleteRenderbuffer(this.f4980p);
                    this.f4980p = 0;
                }
                int glGenRenderbuffer4 = gl20.glGenRenderbuffer();
                this.f4980p = glGenRenderbuffer4;
                this.f4981q = true;
                gl20.glBindRenderbuffer(GL20.GL_RENDERBUFFER, glGenRenderbuffer4);
                gl20.glRenderbufferStorage(GL20.GL_RENDERBUFFER, GL30.GL_DEPTH24_STENCIL8, i2, i3);
                gl20.glBindRenderbuffer(GL20.GL_RENDERBUFFER, 0);
                gl20.glFramebufferRenderbuffer(GL20.GL_FRAMEBUFFER, GL20.GL_DEPTH_ATTACHMENT, GL20.GL_RENDERBUFFER, this.f4980p);
                gl20.glFramebufferRenderbuffer(GL20.GL_FRAMEBUFFER, GL20.GL_STENCIL_ATTACHMENT, GL20.GL_RENDERBUFFER, this.f4980p);
                glCheckFramebufferStatus = gl20.glCheckFramebufferStatus(GL20.GL_FRAMEBUFFER);
            }
        }
        gl20.glBindFramebuffer(GL20.GL_FRAMEBUFFER, f4974u);
        if (glCheckFramebufferStatus != 36053) {
            Array.ArrayIterator<T> it3 = this.f4976a.iterator();
            while (it3.hasNext()) {
                mo24023f(it3.next());
            }
            if (this.f4981q) {
                gl20.glDeleteBuffer(this.f4980p);
            } else {
                if (this.f4983s.f4999h) {
                    gl20.glDeleteRenderbuffer(this.f4978d);
                }
                if (this.f4983s.f4998g) {
                    gl20.glDeleteRenderbuffer(this.f4979k);
                }
            }
            gl20.glDeleteFramebuffer(this.f4977b);
            if (glCheckFramebufferStatus != 36054) {
                if (glCheckFramebufferStatus != 36057) {
                    if (glCheckFramebufferStatus != 36055) {
                        if (glCheckFramebufferStatus == 36061) {
                            throw new IllegalStateException("Frame buffer couldn't be constructed: unsupported combination of formats");
                        }
                        throw new IllegalStateException("Frame buffer couldn't be constructed: unknown error " + glCheckFramebufferStatus);
                    }
                    throw new IllegalStateException("Frame buffer couldn't be constructed: missing attachment");
                }
                throw new IllegalStateException("Frame buffer couldn't be constructed: incomplete dimensions");
            }
            throw new IllegalStateException("Frame buffer couldn't be constructed: incomplete attachment");
        }
        m24028a(Gdx.app, this);
    }

    /* renamed from: d */
    public final void m24025d() {
        if (!Gdx.graphics.isGL30Available()) {
            GLFrameBufferBuilder<? extends GLFrameBuffer<T>> gLFrameBufferBuilder = this.f4983s;
            if (!gLFrameBufferBuilder.f5000i) {
                Array<FrameBufferTextureAttachmentSpec> array = gLFrameBufferBuilder.f4994c;
                if (array.size <= 1) {
                    Array.ArrayIterator<FrameBufferTextureAttachmentSpec> it = array.iterator();
                    while (it.hasNext()) {
                        FrameBufferTextureAttachmentSpec next = it.next();
                        if (!next.f4990f) {
                            if (!next.f4991g) {
                                if (next.f4988d && !Gdx.graphics.supportsExtension("OES_texture_float")) {
                                    throw new GdxRuntimeException("Float texture FrameBuffer Attachment not available on GLES 2.0");
                                }
                            } else {
                                throw new GdxRuntimeException("Stencil texture FrameBuffer Attachment not available on GLES 2.0");
                            }
                        } else {
                            throw new GdxRuntimeException("Depth texture FrameBuffer Attachment not available on GLES 2.0");
                        }
                    }
                    return;
                }
                throw new GdxRuntimeException("Multiple render targets not available on GLES 2.0");
            }
            throw new GdxRuntimeException("Packed Stencil/Render render buffers are not available on GLES 2.0");
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        GL20 gl20 = Gdx.gl20;
        Array.ArrayIterator<T> it = this.f4976a.iterator();
        while (it.hasNext()) {
            mo24023f(it.next());
        }
        if (this.f4981q) {
            gl20.glDeleteRenderbuffer(this.f4980p);
        } else {
            if (this.f4983s.f4999h) {
                gl20.glDeleteRenderbuffer(this.f4978d);
            }
            if (this.f4983s.f4998g) {
                gl20.glDeleteRenderbuffer(this.f4979k);
            }
        }
        gl20.glDeleteFramebuffer(this.f4977b);
        Map<Application, Array<GLFrameBuffer>> map = f4973t;
        if (map.get(Gdx.app) != null) {
            map.get(Gdx.app).removeValue(this, true);
        }
    }

    public void end(int i, int i2, int i3, int i4) {
        unbind();
        Gdx.gl20.glViewport(i, i2, i3, i4);
    }

    public GLFrameBuffer(GLFrameBufferBuilder<? extends GLFrameBuffer<T>> gLFrameBufferBuilder) {
        this.f4983s = gLFrameBufferBuilder;
        m24026c();
    }

    public void begin() {
        bind();
        m24022g();
    }

    public static String getManagedStatus() {
        return getManagedStatus(new StringBuilder()).toString();
    }
}
