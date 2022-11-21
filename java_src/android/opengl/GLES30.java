package android.opengl;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
/* loaded from: classes.dex */
public /* synthetic */ class GLES30 extends GLES20 {
    static {
        throw new NoClassDefFoundError();
    }

    public static native /* synthetic */ void glBeginQuery(int i, int i2);

    public static native /* synthetic */ void glBeginTransformFeedback(int i);

    public static native /* synthetic */ void glBindBufferBase(int i, int i2, int i3);

    public static native /* synthetic */ void glBindBufferRange(int i, int i2, int i3, int i4, int i5);

    public static native /* synthetic */ void glBindSampler(int i, int i2);

    public static native /* synthetic */ void glBindTransformFeedback(int i, int i2);

    public static native /* synthetic */ void glBindVertexArray(int i);

    public static native /* synthetic */ void glBlitFramebuffer(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    public static native /* synthetic */ void glClearBufferfi(int i, int i2, float f, int i3);

    public static native /* synthetic */ void glClearBufferfv(int i, int i2, FloatBuffer floatBuffer);

    public static native /* synthetic */ void glClearBufferiv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glClearBufferuiv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glCopyBufferSubData(int i, int i2, int i3, int i4, int i5);

    public static native /* synthetic */ void glCopyTexSubImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    public static native /* synthetic */ void glDeleteQueries(int i, IntBuffer intBuffer);

    public static native /* synthetic */ void glDeleteQueries(int i, int[] iArr, int i2);

    public static native /* synthetic */ void glDeleteSamplers(int i, IntBuffer intBuffer);

    public static native /* synthetic */ void glDeleteSamplers(int i, int[] iArr, int i2);

    public static native /* synthetic */ void glDeleteTransformFeedbacks(int i, IntBuffer intBuffer);

    public static native /* synthetic */ void glDeleteTransformFeedbacks(int i, int[] iArr, int i2);

    public static native /* synthetic */ void glDeleteVertexArrays(int i, IntBuffer intBuffer);

    public static native /* synthetic */ void glDeleteVertexArrays(int i, int[] iArr, int i2);

    public static native /* synthetic */ void glDrawArraysInstanced(int i, int i2, int i3, int i4);

    public static native /* synthetic */ void glDrawBuffers(int i, IntBuffer intBuffer);

    public static native /* synthetic */ void glDrawElementsInstanced(int i, int i2, int i3, int i4, int i5);

    public static native /* synthetic */ void glDrawRangeElements(int i, int i2, int i3, int i4, int i5, int i6);

    public static native /* synthetic */ void glDrawRangeElements(int i, int i2, int i3, int i4, int i5, Buffer buffer);

    public static native /* synthetic */ void glEndQuery(int i);

    public static native /* synthetic */ void glEndTransformFeedback();

    public static native /* synthetic */ void glFlushMappedBufferRange(int i, int i2, int i3);

    public static native /* synthetic */ void glFramebufferTextureLayer(int i, int i2, int i3, int i4, int i5);

    public static native /* synthetic */ void glGenQueries(int i, IntBuffer intBuffer);

    public static native /* synthetic */ void glGenQueries(int i, int[] iArr, int i2);

    public static native /* synthetic */ void glGenSamplers(int i, IntBuffer intBuffer);

    public static native /* synthetic */ void glGenSamplers(int i, int[] iArr, int i2);

    public static native /* synthetic */ void glGenTransformFeedbacks(int i, IntBuffer intBuffer);

    public static native /* synthetic */ void glGenTransformFeedbacks(int i, int[] iArr, int i2);

    public static native /* synthetic */ void glGenVertexArrays(int i, IntBuffer intBuffer);

    public static native /* synthetic */ void glGenVertexArrays(int i, int[] iArr, int i2);

    public static native /* synthetic */ String glGetActiveUniformBlockName(int i, int i2);

    public static native /* synthetic */ void glGetActiveUniformBlockName(int i, int i2, Buffer buffer, Buffer buffer2);

    public static native /* synthetic */ void glGetActiveUniformBlockiv(int i, int i2, int i3, IntBuffer intBuffer);

    public static native /* synthetic */ void glGetActiveUniformsiv(int i, int i2, IntBuffer intBuffer, int i3, IntBuffer intBuffer2);

    public static native /* synthetic */ void glGetBufferParameteri64v(int i, int i2, LongBuffer longBuffer);

    public static native /* synthetic */ Buffer glGetBufferPointerv(int i, int i2);

    public static native /* synthetic */ int glGetFragDataLocation(int i, String str);

    public static native /* synthetic */ void glGetInteger64v(int i, LongBuffer longBuffer);

    public static native /* synthetic */ void glGetQueryObjectuiv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glGetQueryiv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glGetSamplerParameterfv(int i, int i2, FloatBuffer floatBuffer);

    public static native /* synthetic */ void glGetSamplerParameteriv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ String glGetStringi(int i, int i2);

    public static native /* synthetic */ int glGetUniformBlockIndex(int i, String str);

    public static native /* synthetic */ void glGetUniformIndices(int i, String[] strArr, IntBuffer intBuffer);

    public static native /* synthetic */ void glGetUniformuiv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glGetVertexAttribIiv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glGetVertexAttribIuiv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glInvalidateFramebuffer(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glInvalidateSubFramebuffer(int i, int i2, IntBuffer intBuffer, int i3, int i4, int i5, int i6);

    public static native /* synthetic */ boolean glIsQuery(int i);

    public static native /* synthetic */ boolean glIsSampler(int i);

    public static native /* synthetic */ boolean glIsTransformFeedback(int i);

    public static native /* synthetic */ boolean glIsVertexArray(int i);

    public static native /* synthetic */ Buffer glMapBufferRange(int i, int i2, int i3, int i4);

    public static native /* synthetic */ void glPauseTransformFeedback();

    public static native /* synthetic */ void glProgramParameteri(int i, int i2, int i3);

    public static native /* synthetic */ void glReadBuffer(int i);

    public static native /* synthetic */ void glRenderbufferStorageMultisample(int i, int i2, int i3, int i4, int i5);

    public static native /* synthetic */ void glResumeTransformFeedback();

    public static native /* synthetic */ void glSamplerParameterf(int i, int i2, float f);

    public static native /* synthetic */ void glSamplerParameterfv(int i, int i2, FloatBuffer floatBuffer);

    public static native /* synthetic */ void glSamplerParameteri(int i, int i2, int i3);

    public static native /* synthetic */ void glSamplerParameteriv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glTexImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    public static native /* synthetic */ void glTexImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer);

    public static native /* synthetic */ void glTexSubImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11);

    public static native /* synthetic */ void glTexSubImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, Buffer buffer);

    public static native /* synthetic */ void glTransformFeedbackVaryings(int i, String[] strArr, int i2);

    public static native /* synthetic */ void glUniform1uiv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glUniform3uiv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glUniform4uiv(int i, int i2, IntBuffer intBuffer);

    public static native /* synthetic */ void glUniformBlockBinding(int i, int i2, int i3);

    public static native /* synthetic */ void glUniformMatrix2x3fv(int i, int i2, boolean z, FloatBuffer floatBuffer);

    public static native /* synthetic */ void glUniformMatrix2x4fv(int i, int i2, boolean z, FloatBuffer floatBuffer);

    public static native /* synthetic */ void glUniformMatrix3x2fv(int i, int i2, boolean z, FloatBuffer floatBuffer);

    public static native /* synthetic */ void glUniformMatrix3x4fv(int i, int i2, boolean z, FloatBuffer floatBuffer);

    public static native /* synthetic */ void glUniformMatrix4x2fv(int i, int i2, boolean z, FloatBuffer floatBuffer);

    public static native /* synthetic */ void glUniformMatrix4x3fv(int i, int i2, boolean z, FloatBuffer floatBuffer);

    public static native /* synthetic */ boolean glUnmapBuffer(int i);

    public static native /* synthetic */ void glVertexAttribDivisor(int i, int i2);

    public static native /* synthetic */ void glVertexAttribI4i(int i, int i2, int i3, int i4, int i5);

    public static native /* synthetic */ void glVertexAttribI4ui(int i, int i2, int i3, int i4, int i5);

    public static native /* synthetic */ void glVertexAttribIPointer(int i, int i2, int i3, int i4, int i5);
}
