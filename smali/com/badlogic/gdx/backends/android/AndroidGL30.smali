.class public Lcom/badlogic/gdx/backends/android/AndroidGL30;
.super Lcom/badlogic/gdx/backends/android/AndroidGL20;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL30;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidGL20;-><init>()V

    return-void
.end method


# virtual methods
.method public glBeginQuery(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glBeginQuery(II)V

    return-void
.end method

.method public glBeginTransformFeedback(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES30;->glBeginTransformFeedback(I)V

    return-void
.end method

.method public glBindBufferBase(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glBindBufferBase(III)V

    return-void
.end method

.method public glBindBufferRange(IIIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glBindBufferRange(IIIII)V

    return-void
.end method

.method public glBindSampler(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glBindSampler(II)V

    return-void
.end method

.method public glBindTransformFeedback(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glBindTransformFeedback(II)V

    return-void
.end method

.method public glBindVertexArray(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public glBlitFramebuffer(IIIIIIIIII)V
    .locals 0

    invoke-static/range {p1 .. p10}, Landroid/opengl/GLES30;->glBlitFramebuffer(IIIIIIIIII)V

    return-void
.end method

.method public glClearBufferfi(IIFI)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glClearBufferfi(IIFI)V

    return-void
.end method

.method public glClearBufferfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glClearBufferfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glClearBufferiv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glClearBufferiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glClearBufferuiv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glClearBufferuiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glCopyBufferSubData(IIIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glCopyBufferSubData(IIIII)V

    return-void
.end method

.method public glCopyTexSubImage3D(IIIIIIIII)V
    .locals 0

    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES30;->glCopyTexSubImage3D(IIIIIIIII)V

    return-void
.end method

.method public glDeleteQueries(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteQueries(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDeleteQueries(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteQueries(I[II)V

    return-void
.end method

.method public glDeleteSamplers(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteSamplers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDeleteSamplers(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteSamplers(I[II)V

    return-void
.end method

.method public glDeleteTransformFeedbacks(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteTransformFeedbacks(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDeleteTransformFeedbacks(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteTransformFeedbacks(I[II)V

    return-void
.end method

.method public glDeleteVertexArrays(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteVertexArrays(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDeleteVertexArrays(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    return-void
.end method

.method public glDrawArraysInstanced(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glDrawArraysInstanced(IIII)V

    return-void
.end method

.method public glDrawBuffers(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDrawBuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDrawElementsInstanced(IIIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glDrawElementsInstanced(IIIII)V

    return-void
.end method

.method public glDrawRangeElements(IIIIII)V
    .locals 0

    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES30;->glDrawRangeElements(IIIIII)V

    return-void
.end method

.method public glDrawRangeElements(IIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES30;->glDrawRangeElements(IIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glEndQuery(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES30;->glEndQuery(I)V

    return-void
.end method

.method public glEndTransformFeedback()V
    .locals 0

    invoke-static {}, Landroid/opengl/GLES30;->glEndTransformFeedback()V

    return-void
.end method

.method public glFlushMappedBufferRange(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glFlushMappedBufferRange(III)V

    return-void
.end method

.method public glFramebufferTextureLayer(IIIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glFramebufferTextureLayer(IIIII)V

    return-void
.end method

.method public glGenQueries(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenQueries(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenQueries(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenQueries(I[II)V

    return-void
.end method

.method public glGenSamplers(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenSamplers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenSamplers(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenSamplers(I[II)V

    return-void
.end method

.method public glGenTransformFeedbacks(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenTransformFeedbacks(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenTransformFeedbacks(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenTransformFeedbacks(I[II)V

    return-void
.end method

.method public glGenVertexArrays(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenVertexArrays(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    return-void
.end method

.method public glGetActiveUniformBlockName(II)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetActiveUniformBlockName(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public glGetActiveUniformBlockName(IILjava/nio/Buffer;Ljava/nio/Buffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glGetActiveUniformBlockName(IILjava/nio/Buffer;Ljava/nio/Buffer;)V

    return-void
.end method

.method public glGetActiveUniformBlockiv(IIILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glGetActiveUniformBlockiv(IIILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetActiveUniformsiv(IILjava/nio/IntBuffer;ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glGetActiveUniformsiv(IILjava/nio/IntBuffer;ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetBufferParameteri64v(IILjava/nio/LongBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetBufferParameteri64v(IILjava/nio/LongBuffer;)V

    return-void
.end method

.method public glGetBufferPointerv(II)Ljava/nio/Buffer;
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetBufferPointerv(II)Ljava/nio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public glGetFragDataLocation(ILjava/lang/String;)I
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetFragDataLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public glGetInteger64v(ILjava/nio/LongBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetInteger64v(ILjava/nio/LongBuffer;)V

    return-void
.end method

.method public glGetQueryObjectuiv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetQueryObjectuiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetQueryiv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetQueryiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetSamplerParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetSamplerParameterfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glGetSamplerParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetSamplerParameteriv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetStringi(II)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetStringi(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public glGetUniformBlockIndex(ILjava/lang/String;)I
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetUniformBlockIndex(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public glGetUniformIndices(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetUniformIndices(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetUniformuiv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetUniformuiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetVertexAttribIiv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetVertexAttribIiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetVertexAttribIuiv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetVertexAttribIuiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glInvalidateFramebuffer(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glInvalidateFramebuffer(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glInvalidateSubFramebuffer(IILjava/nio/IntBuffer;IIII)V
    .locals 0

    invoke-static/range {p1 .. p7}, Landroid/opengl/GLES30;->glInvalidateSubFramebuffer(IILjava/nio/IntBuffer;IIII)V

    return-void
.end method

.method public glIsQuery(I)Z
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES30;->glIsQuery(I)Z

    move-result p1

    return p1
.end method

.method public glIsSampler(I)Z
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES30;->glIsSampler(I)Z

    move-result p1

    return p1
.end method

.method public glIsTransformFeedback(I)Z
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES30;->glIsTransformFeedback(I)Z

    move-result p1

    return p1
.end method

.method public glIsVertexArray(I)Z
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES30;->glIsVertexArray(I)Z

    move-result p1

    return p1
.end method

.method public glMapBufferRange(IIII)Ljava/nio/Buffer;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glMapBufferRange(IIII)Ljava/nio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public glPauseTransformFeedback()V
    .locals 0

    invoke-static {}, Landroid/opengl/GLES30;->glPauseTransformFeedback()V

    return-void
.end method

.method public glProgramParameteri(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glProgramParameteri(III)V

    return-void
.end method

.method public glReadBuffer(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES30;->glReadBuffer(I)V

    return-void
.end method

.method public glRenderbufferStorageMultisample(IIIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glRenderbufferStorageMultisample(IIIII)V

    return-void
.end method

.method public glResumeTransformFeedback()V
    .locals 0

    invoke-static {}, Landroid/opengl/GLES30;->glResumeTransformFeedback()V

    return-void
.end method

.method public glSamplerParameterf(IIF)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameterf(IIF)V

    return-void
.end method

.method public glSamplerParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameterfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glSamplerParameteri(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameteri(III)V

    return-void
.end method

.method public glSamplerParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameteriv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glTexImage3D(IIIIIIIIII)V
    .locals 0

    invoke-static/range {p1 .. p10}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIII)V

    return-void
.end method

.method public glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V
    .locals 10

    if-nez p10, :cond_0

    const/4 v9, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIII)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p10}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V

    :goto_0
    return-void
.end method

.method public glTexSubImage3D(IIIIIIIIIII)V
    .locals 0

    invoke-static/range {p1 .. p11}, Landroid/opengl/GLES30;->glTexSubImage3D(IIIIIIIIIII)V

    return-void
.end method

.method public glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static/range {p1 .. p11}, Landroid/opengl/GLES30;->glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glTransformFeedbackVaryings(I[Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glTransformFeedbackVaryings(I[Ljava/lang/String;I)V

    return-void
.end method

.method public glUniform1uiv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniform1uiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glUniform3uiv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniform3uiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glUniform4uiv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniform4uiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glUniformBlockBinding(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniformBlockBinding(III)V

    return-void
.end method

.method public glUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUnmapBuffer(I)Z
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES30;->glUnmapBuffer(I)Z

    move-result p1

    return p1
.end method

.method public glVertexAttribDivisor(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glVertexAttribDivisor(II)V

    return-void
.end method

.method public glVertexAttribI4i(IIIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glVertexAttribI4i(IIIII)V

    return-void
.end method

.method public glVertexAttribI4ui(IIIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glVertexAttribI4ui(IIIII)V

    return-void
.end method

.method public glVertexAttribIPointer(IIIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glVertexAttribIPointer(IIIII)V

    return-void
.end method
