package com.badlogic.gdx.graphics.profiling;

import com.badlogic.gdx.graphics.GL30;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
/* loaded from: classes.dex */
public class GL30Interceptor extends GLInterceptor implements GL30 {

    /* renamed from: g */
    public final GL30 f5160g;

    @Override // com.badlogic.gdx.graphics.GL30
    public void glBlitFramebuffer(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.f5161a++;
        this.f5160g.glBlitFramebuffer(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCompressedTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glCompressedTexImage2D(i, i2, i3, i4, i5, i6, i7, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCompressedTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glCompressedTexSubImage2D(i, i2, i3, i4, i5, i6, i7, i8, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCopyTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f5161a++;
        this.f5160g.glCopyTexImage2D(i, i2, i3, i4, i5, i6, i7, i8);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCopyTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f5161a++;
        this.f5160g.glCopyTexSubImage2D(i, i2, i3, i4, i5, i6, i7, i8);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glCopyTexSubImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.f5161a++;
        this.f5160g.glCopyTexSubImage3D(i, i2, i3, i4, i5, i6, i7, i8, i9);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDeleteQueries(int i, int[] iArr, int i2) {
        this.f5161a++;
        this.f5160g.glDeleteQueries(i, iArr, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDeleteSamplers(int i, int[] iArr, int i2) {
        this.f5161a++;
        this.f5160g.glDeleteSamplers(i, iArr, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDeleteTransformFeedbacks(int i, int[] iArr, int i2) {
        this.f5161a++;
        this.f5160g.glDeleteTransformFeedbacks(i, iArr, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDeleteVertexArrays(int i, int[] iArr, int i2) {
        this.f5161a++;
        this.f5160g.glDeleteVertexArrays(i, iArr, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDrawElements(int i, int i2, int i3, Buffer buffer) {
        this.f5165e.put(i2);
        this.f5163c++;
        this.f5161a++;
        this.f5160g.glDrawElements(i, i2, i3, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDrawRangeElements(int i, int i2, int i3, int i4, int i5, Buffer buffer) {
        this.f5165e.put(i4);
        this.f5163c++;
        this.f5161a++;
        this.f5160g.glDrawRangeElements(i, i2, i3, i4, i5, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGenQueries(int i, int[] iArr, int i2) {
        this.f5161a++;
        this.f5160g.glGenQueries(i, iArr, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGenSamplers(int i, int[] iArr, int i2) {
        this.f5161a++;
        this.f5160g.glGenSamplers(i, iArr, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGenTransformFeedbacks(int i, int[] iArr, int i2) {
        this.f5161a++;
        this.f5160g.glGenTransformFeedbacks(i, iArr, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGenVertexArrays(int i, int[] iArr, int i2) {
        this.f5161a++;
        this.f5160g.glGenVertexArrays(i, iArr, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetActiveUniformBlockName(int i, int i2, Buffer buffer, Buffer buffer2) {
        this.f5161a++;
        this.f5160g.glGetActiveUniformBlockName(i, i2, buffer, buffer2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glInvalidateSubFramebuffer(int i, int i2, IntBuffer intBuffer, int i3, int i4, int i5, int i6) {
        this.f5161a++;
        this.f5160g.glInvalidateSubFramebuffer(i, i2, intBuffer, i3, i4, i5, i6);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glReadPixels(int i, int i2, int i3, int i4, int i5, int i6, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glReadPixels(i, i2, i3, i4, i5, i6, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glTexImage2D(i, i2, i3, i4, i5, i6, i7, i8, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glTexImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glTexImage3D(i, i2, i3, i4, i5, i6, i7, i8, i9, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glTexSubImage2D(i, i2, i3, i4, i5, i6, i7, i8, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glTexSubImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glTexSubImage3D(i, i2, i3, i4, i5, i6, i7, i8, i9, i10, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1fv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniform1fv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1iv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glUniform1iv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2fv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniform2fv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2iv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glUniform2iv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3fv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniform3fv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3iv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glUniform3iv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4fv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniform4fv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4iv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glUniform4iv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix2fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniformMatrix2fv(i, i2, z, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix3fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniformMatrix3fv(i, i2, z, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix4fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniformMatrix4fv(i, i2, z, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttribPointer(int i, int i2, int i3, boolean z, int i4, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glVertexAttribPointer(i, i2, i3, z, i4, buffer);
        m23982a();
    }

    /* renamed from: a */
    public final void m23982a() {
        int glGetError = this.f5160g.glGetError();
        while (glGetError != 0) {
            this.f5166f.getListener().onError(glGetError);
            glGetError = this.f5160g.glGetError();
        }
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glActiveTexture(int i) {
        this.f5161a++;
        this.f5160g.glActiveTexture(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glAttachShader(int i, int i2) {
        this.f5161a++;
        this.f5160g.glAttachShader(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glBeginQuery(int i, int i2) {
        this.f5161a++;
        this.f5160g.glBeginQuery(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glBeginTransformFeedback(int i) {
        this.f5161a++;
        this.f5160g.glBeginTransformFeedback(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindAttribLocation(int i, int i2, String str) {
        this.f5161a++;
        this.f5160g.glBindAttribLocation(i, i2, str);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindBuffer(int i, int i2) {
        this.f5161a++;
        this.f5160g.glBindBuffer(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glBindBufferBase(int i, int i2, int i3) {
        this.f5161a++;
        this.f5160g.glBindBufferBase(i, i2, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glBindBufferRange(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5160g.glBindBufferRange(i, i2, i3, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindFramebuffer(int i, int i2) {
        this.f5161a++;
        this.f5160g.glBindFramebuffer(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindRenderbuffer(int i, int i2) {
        this.f5161a++;
        this.f5160g.glBindRenderbuffer(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glBindSampler(int i, int i2) {
        this.f5161a++;
        this.f5160g.glBindSampler(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindTexture(int i, int i2) {
        this.f5162b++;
        this.f5161a++;
        this.f5160g.glBindTexture(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glBindTransformFeedback(int i, int i2) {
        this.f5161a++;
        this.f5160g.glBindTransformFeedback(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glBindVertexArray(int i) {
        this.f5161a++;
        this.f5160g.glBindVertexArray(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendColor(float f, float f2, float f3, float f4) {
        this.f5161a++;
        this.f5160g.glBlendColor(f, f2, f3, f4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendEquation(int i) {
        this.f5161a++;
        this.f5160g.glBlendEquation(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendEquationSeparate(int i, int i2) {
        this.f5161a++;
        this.f5160g.glBlendEquationSeparate(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendFunc(int i, int i2) {
        this.f5161a++;
        this.f5160g.glBlendFunc(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendFuncSeparate(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5160g.glBlendFuncSeparate(i, i2, i3, i4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBufferData(int i, int i2, Buffer buffer, int i3) {
        this.f5161a++;
        this.f5160g.glBufferData(i, i2, buffer, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBufferSubData(int i, int i2, int i3, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glBufferSubData(i, i2, i3, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glCheckFramebufferStatus(int i) {
        this.f5161a++;
        int glCheckFramebufferStatus = this.f5160g.glCheckFramebufferStatus(i);
        m23982a();
        return glCheckFramebufferStatus;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClear(int i) {
        this.f5161a++;
        this.f5160g.glClear(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glClearBufferfi(int i, int i2, float f, int i3) {
        this.f5161a++;
        this.f5160g.glClearBufferfi(i, i2, f, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glClearBufferfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glClearBufferfv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glClearBufferiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glClearBufferiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glClearBufferuiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glClearBufferuiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClearColor(float f, float f2, float f3, float f4) {
        this.f5161a++;
        this.f5160g.glClearColor(f, f2, f3, f4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClearDepthf(float f) {
        this.f5161a++;
        this.f5160g.glClearDepthf(f);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClearStencil(int i) {
        this.f5161a++;
        this.f5160g.glClearStencil(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glColorMask(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f5161a++;
        this.f5160g.glColorMask(z, z2, z3, z4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCompileShader(int i) {
        this.f5161a++;
        this.f5160g.glCompileShader(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glCopyBufferSubData(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5160g.glCopyBufferSubData(i, i2, i3, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glCreateProgram() {
        this.f5161a++;
        int glCreateProgram = this.f5160g.glCreateProgram();
        m23982a();
        return glCreateProgram;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glCreateShader(int i) {
        this.f5161a++;
        int glCreateShader = this.f5160g.glCreateShader(i);
        m23982a();
        return glCreateShader;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCullFace(int i) {
        this.f5161a++;
        this.f5160g.glCullFace(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteBuffer(int i) {
        this.f5161a++;
        this.f5160g.glDeleteBuffer(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteBuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glDeleteBuffers(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteFramebuffer(int i) {
        this.f5161a++;
        this.f5160g.glDeleteFramebuffer(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteFramebuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glDeleteFramebuffers(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteProgram(int i) {
        this.f5161a++;
        this.f5160g.glDeleteProgram(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteRenderbuffer(int i) {
        this.f5161a++;
        this.f5160g.glDeleteRenderbuffer(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteRenderbuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glDeleteRenderbuffers(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteShader(int i) {
        this.f5161a++;
        this.f5160g.glDeleteShader(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteTexture(int i) {
        this.f5161a++;
        this.f5160g.glDeleteTexture(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteTextures(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glDeleteTextures(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDepthFunc(int i) {
        this.f5161a++;
        this.f5160g.glDepthFunc(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDepthMask(boolean z) {
        this.f5161a++;
        this.f5160g.glDepthMask(z);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDepthRangef(float f, float f2) {
        this.f5161a++;
        this.f5160g.glDepthRangef(f, f2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDetachShader(int i, int i2) {
        this.f5161a++;
        this.f5160g.glDetachShader(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDisable(int i) {
        this.f5161a++;
        this.f5160g.glDisable(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDisableVertexAttribArray(int i) {
        this.f5161a++;
        this.f5160g.glDisableVertexAttribArray(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDrawArrays(int i, int i2, int i3) {
        this.f5165e.put(i3);
        this.f5163c++;
        this.f5161a++;
        this.f5160g.glDrawArrays(i, i2, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDrawArraysInstanced(int i, int i2, int i3, int i4) {
        this.f5165e.put(i3);
        this.f5163c++;
        this.f5161a++;
        this.f5160g.glDrawArraysInstanced(i, i2, i3, i4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDrawBuffers(int i, IntBuffer intBuffer) {
        this.f5163c++;
        this.f5161a++;
        this.f5160g.glDrawBuffers(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDrawElementsInstanced(int i, int i2, int i3, int i4, int i5) {
        this.f5165e.put(i2);
        this.f5163c++;
        this.f5161a++;
        this.f5160g.glDrawElementsInstanced(i, i2, i3, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glEnable(int i) {
        this.f5161a++;
        this.f5160g.glEnable(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glEnableVertexAttribArray(int i) {
        this.f5161a++;
        this.f5160g.glEnableVertexAttribArray(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glEndQuery(int i) {
        this.f5161a++;
        this.f5160g.glEndQuery(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glEndTransformFeedback() {
        this.f5161a++;
        this.f5160g.glEndTransformFeedback();
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFinish() {
        this.f5161a++;
        this.f5160g.glFinish();
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFlush() {
        this.f5161a++;
        this.f5160g.glFlush();
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glFlushMappedBufferRange(int i, int i2, int i3) {
        this.f5161a++;
        this.f5160g.glFlushMappedBufferRange(i, i2, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFramebufferRenderbuffer(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5160g.glFramebufferRenderbuffer(i, i2, i3, i4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFramebufferTexture2D(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5160g.glFramebufferTexture2D(i, i2, i3, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glFramebufferTextureLayer(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5160g.glFramebufferTextureLayer(i, i2, i3, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFrontFace(int i) {
        this.f5161a++;
        this.f5160g.glFrontFace(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenBuffer() {
        this.f5161a++;
        int glGenBuffer = this.f5160g.glGenBuffer();
        m23982a();
        return glGenBuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenBuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGenBuffers(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenFramebuffer() {
        this.f5161a++;
        int glGenFramebuffer = this.f5160g.glGenFramebuffer();
        m23982a();
        return glGenFramebuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenFramebuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGenFramebuffers(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenRenderbuffer() {
        this.f5161a++;
        int glGenRenderbuffer = this.f5160g.glGenRenderbuffer();
        m23982a();
        return glGenRenderbuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenRenderbuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGenRenderbuffers(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenTexture() {
        this.f5161a++;
        int glGenTexture = this.f5160g.glGenTexture();
        m23982a();
        return glGenTexture;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenTextures(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGenTextures(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenerateMipmap(int i) {
        this.f5161a++;
        this.f5160g.glGenerateMipmap(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetActiveAttrib(int i, int i2, IntBuffer intBuffer, IntBuffer intBuffer2) {
        this.f5161a++;
        String glGetActiveAttrib = this.f5160g.glGetActiveAttrib(i, i2, intBuffer, intBuffer2);
        m23982a();
        return glGetActiveAttrib;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetActiveUniform(int i, int i2, IntBuffer intBuffer, IntBuffer intBuffer2) {
        this.f5161a++;
        String glGetActiveUniform = this.f5160g.glGetActiveUniform(i, i2, intBuffer, intBuffer2);
        m23982a();
        return glGetActiveUniform;
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetActiveUniformBlockiv(int i, int i2, int i3, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetActiveUniformBlockiv(i, i2, i3, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetActiveUniformsiv(int i, int i2, IntBuffer intBuffer, int i3, IntBuffer intBuffer2) {
        this.f5161a++;
        this.f5160g.glGetActiveUniformsiv(i, i2, intBuffer, i3, intBuffer2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetAttachedShaders(int i, int i2, Buffer buffer, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetAttachedShaders(i, i2, buffer, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGetAttribLocation(int i, String str) {
        this.f5161a++;
        int glGetAttribLocation = this.f5160g.glGetAttribLocation(i, str);
        m23982a();
        return glGetAttribLocation;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetBooleanv(int i, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glGetBooleanv(i, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetBufferParameteri64v(int i, int i2, LongBuffer longBuffer) {
        this.f5161a++;
        this.f5160g.glGetBufferParameteri64v(i, i2, longBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetBufferParameteriv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetBufferParameteriv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public Buffer glGetBufferPointerv(int i, int i2) {
        this.f5161a++;
        Buffer glGetBufferPointerv = this.f5160g.glGetBufferPointerv(i, i2);
        m23982a();
        return glGetBufferPointerv;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGetError() {
        this.f5161a++;
        return this.f5160g.glGetError();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetFloatv(int i, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glGetFloatv(i, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public int glGetFragDataLocation(int i, String str) {
        this.f5161a++;
        int glGetFragDataLocation = this.f5160g.glGetFragDataLocation(i, str);
        m23982a();
        return glGetFragDataLocation;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetFramebufferAttachmentParameteriv(int i, int i2, int i3, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetFramebufferAttachmentParameteriv(i, i2, i3, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetInteger64v(int i, LongBuffer longBuffer) {
        this.f5161a++;
        this.f5160g.glGetInteger64v(i, longBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetIntegerv(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetIntegerv(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetProgramInfoLog(int i) {
        this.f5161a++;
        String glGetProgramInfoLog = this.f5160g.glGetProgramInfoLog(i);
        m23982a();
        return glGetProgramInfoLog;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetProgramiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetProgramiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetQueryObjectuiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetQueryObjectuiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetQueryiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetQueryiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetRenderbufferParameteriv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetRenderbufferParameteriv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetSamplerParameterfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glGetSamplerParameterfv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetSamplerParameteriv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetSamplerParameteriv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetShaderInfoLog(int i) {
        this.f5161a++;
        String glGetShaderInfoLog = this.f5160g.glGetShaderInfoLog(i);
        m23982a();
        return glGetShaderInfoLog;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetShaderPrecisionFormat(int i, int i2, IntBuffer intBuffer, IntBuffer intBuffer2) {
        this.f5161a++;
        this.f5160g.glGetShaderPrecisionFormat(i, i2, intBuffer, intBuffer2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetShaderiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetShaderiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetString(int i) {
        this.f5161a++;
        String glGetString = this.f5160g.glGetString(i);
        m23982a();
        return glGetString;
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public String glGetStringi(int i, int i2) {
        this.f5161a++;
        String glGetStringi = this.f5160g.glGetStringi(i, i2);
        m23982a();
        return glGetStringi;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetTexParameterfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glGetTexParameterfv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetTexParameteriv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetTexParameteriv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public int glGetUniformBlockIndex(int i, String str) {
        this.f5161a++;
        int glGetUniformBlockIndex = this.f5160g.glGetUniformBlockIndex(i, str);
        m23982a();
        return glGetUniformBlockIndex;
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetUniformIndices(int i, String[] strArr, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetUniformIndices(i, strArr, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGetUniformLocation(int i, String str) {
        this.f5161a++;
        int glGetUniformLocation = this.f5160g.glGetUniformLocation(i, str);
        m23982a();
        return glGetUniformLocation;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetUniformfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glGetUniformfv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetUniformiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetUniformiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetUniformuiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetUniformuiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetVertexAttribIiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetVertexAttribIiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGetVertexAttribIuiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetVertexAttribIuiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetVertexAttribPointerv(int i, int i2, Buffer buffer) {
        this.f5161a++;
        this.f5160g.glGetVertexAttribPointerv(i, i2, buffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetVertexAttribfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glGetVertexAttribfv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetVertexAttribiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGetVertexAttribiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glHint(int i, int i2) {
        this.f5161a++;
        this.f5160g.glHint(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glInvalidateFramebuffer(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glInvalidateFramebuffer(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsBuffer(int i) {
        this.f5161a++;
        boolean glIsBuffer = this.f5160g.glIsBuffer(i);
        m23982a();
        return glIsBuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsEnabled(int i) {
        this.f5161a++;
        boolean glIsEnabled = this.f5160g.glIsEnabled(i);
        m23982a();
        return glIsEnabled;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsFramebuffer(int i) {
        this.f5161a++;
        boolean glIsFramebuffer = this.f5160g.glIsFramebuffer(i);
        m23982a();
        return glIsFramebuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsProgram(int i) {
        this.f5161a++;
        boolean glIsProgram = this.f5160g.glIsProgram(i);
        m23982a();
        return glIsProgram;
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public boolean glIsQuery(int i) {
        this.f5161a++;
        boolean glIsQuery = this.f5160g.glIsQuery(i);
        m23982a();
        return glIsQuery;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsRenderbuffer(int i) {
        this.f5161a++;
        boolean glIsRenderbuffer = this.f5160g.glIsRenderbuffer(i);
        m23982a();
        return glIsRenderbuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public boolean glIsSampler(int i) {
        this.f5161a++;
        boolean glIsSampler = this.f5160g.glIsSampler(i);
        m23982a();
        return glIsSampler;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsShader(int i) {
        this.f5161a++;
        boolean glIsShader = this.f5160g.glIsShader(i);
        m23982a();
        return glIsShader;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsTexture(int i) {
        this.f5161a++;
        boolean glIsTexture = this.f5160g.glIsTexture(i);
        m23982a();
        return glIsTexture;
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public boolean glIsTransformFeedback(int i) {
        this.f5161a++;
        boolean glIsTransformFeedback = this.f5160g.glIsTransformFeedback(i);
        m23982a();
        return glIsTransformFeedback;
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public boolean glIsVertexArray(int i) {
        this.f5161a++;
        boolean glIsVertexArray = this.f5160g.glIsVertexArray(i);
        m23982a();
        return glIsVertexArray;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glLineWidth(float f) {
        this.f5161a++;
        this.f5160g.glLineWidth(f);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glLinkProgram(int i) {
        this.f5161a++;
        this.f5160g.glLinkProgram(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public Buffer glMapBufferRange(int i, int i2, int i3, int i4) {
        this.f5161a++;
        Buffer glMapBufferRange = this.f5160g.glMapBufferRange(i, i2, i3, i4);
        m23982a();
        return glMapBufferRange;
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glPauseTransformFeedback() {
        this.f5161a++;
        this.f5160g.glPauseTransformFeedback();
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glPixelStorei(int i, int i2) {
        this.f5161a++;
        this.f5160g.glPixelStorei(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glPolygonOffset(float f, float f2) {
        this.f5161a++;
        this.f5160g.glPolygonOffset(f, f2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glProgramParameteri(int i, int i2, int i3) {
        this.f5161a++;
        this.f5160g.glProgramParameteri(i, i2, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glReadBuffer(int i) {
        this.f5161a++;
        this.f5160g.glReadBuffer(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glReleaseShaderCompiler() {
        this.f5161a++;
        this.f5160g.glReleaseShaderCompiler();
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glRenderbufferStorage(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5160g.glRenderbufferStorage(i, i2, i3, i4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glRenderbufferStorageMultisample(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5160g.glRenderbufferStorageMultisample(i, i2, i3, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glResumeTransformFeedback() {
        this.f5161a++;
        this.f5160g.glResumeTransformFeedback();
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glSampleCoverage(float f, boolean z) {
        this.f5161a++;
        this.f5160g.glSampleCoverage(f, z);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glSamplerParameterf(int i, int i2, float f) {
        this.f5161a++;
        this.f5160g.glSamplerParameterf(i, i2, f);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glSamplerParameterfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glSamplerParameterfv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glSamplerParameteri(int i, int i2, int i3) {
        this.f5161a++;
        this.f5160g.glSamplerParameteri(i, i2, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glSamplerParameteriv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glSamplerParameteriv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glScissor(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5160g.glScissor(i, i2, i3, i4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glShaderBinary(int i, IntBuffer intBuffer, int i2, Buffer buffer, int i3) {
        this.f5161a++;
        this.f5160g.glShaderBinary(i, intBuffer, i2, buffer, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glShaderSource(int i, String str) {
        this.f5161a++;
        this.f5160g.glShaderSource(i, str);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilFunc(int i, int i2, int i3) {
        this.f5161a++;
        this.f5160g.glStencilFunc(i, i2, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilFuncSeparate(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5160g.glStencilFuncSeparate(i, i2, i3, i4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilMask(int i) {
        this.f5161a++;
        this.f5160g.glStencilMask(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilMaskSeparate(int i, int i2) {
        this.f5161a++;
        this.f5160g.glStencilMaskSeparate(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilOp(int i, int i2, int i3) {
        this.f5161a++;
        this.f5160g.glStencilOp(i, i2, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilOpSeparate(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5160g.glStencilOpSeparate(i, i2, i3, i4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameterf(int i, int i2, float f) {
        this.f5161a++;
        this.f5160g.glTexParameterf(i, i2, f);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameterfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glTexParameterfv(i, i2, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameteri(int i, int i2, int i3) {
        this.f5161a++;
        this.f5160g.glTexParameteri(i, i2, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameteriv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glTexParameteriv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glTransformFeedbackVaryings(int i, String[] strArr, int i2) {
        this.f5161a++;
        this.f5160g.glTransformFeedbackVaryings(i, strArr, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1f(int i, float f) {
        this.f5161a++;
        this.f5160g.glUniform1f(i, f);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1i(int i, int i2) {
        this.f5161a++;
        this.f5160g.glUniform1i(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glUniform1uiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glUniform1uiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2f(int i, float f, float f2) {
        this.f5161a++;
        this.f5160g.glUniform2f(i, f, f2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2i(int i, int i2, int i3) {
        this.f5161a++;
        this.f5160g.glUniform2i(i, i2, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3f(int i, float f, float f2, float f3) {
        this.f5161a++;
        this.f5160g.glUniform3f(i, f, f2, f3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3i(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5160g.glUniform3i(i, i2, i3, i4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glUniform3uiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glUniform3uiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4f(int i, float f, float f2, float f3, float f4) {
        this.f5161a++;
        this.f5160g.glUniform4f(i, f, f2, f3, f4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4i(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5160g.glUniform4i(i, i2, i3, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glUniform4uiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glUniform4uiv(i, i2, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glUniformBlockBinding(int i, int i2, int i3) {
        this.f5161a++;
        this.f5160g.glUniformBlockBinding(i, i2, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glUniformMatrix2x3fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniformMatrix2x3fv(i, i2, z, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glUniformMatrix2x4fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniformMatrix2x4fv(i, i2, z, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glUniformMatrix3x2fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniformMatrix3x2fv(i, i2, z, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glUniformMatrix3x4fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniformMatrix3x4fv(i, i2, z, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glUniformMatrix4x2fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniformMatrix4x2fv(i, i2, z, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glUniformMatrix4x3fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glUniformMatrix4x3fv(i, i2, z, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public boolean glUnmapBuffer(int i) {
        this.f5161a++;
        boolean glUnmapBuffer = this.f5160g.glUnmapBuffer(i);
        m23982a();
        return glUnmapBuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUseProgram(int i) {
        this.f5164d++;
        this.f5161a++;
        this.f5160g.glUseProgram(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glValidateProgram(int i) {
        this.f5161a++;
        this.f5160g.glValidateProgram(i);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib1f(int i, float f) {
        this.f5161a++;
        this.f5160g.glVertexAttrib1f(i, f);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib1fv(int i, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glVertexAttrib1fv(i, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib2f(int i, float f, float f2) {
        this.f5161a++;
        this.f5160g.glVertexAttrib2f(i, f, f2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib2fv(int i, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glVertexAttrib2fv(i, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib3f(int i, float f, float f2, float f3) {
        this.f5161a++;
        this.f5160g.glVertexAttrib3f(i, f, f2, f3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib3fv(int i, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glVertexAttrib3fv(i, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib4f(int i, float f, float f2, float f3, float f4) {
        this.f5161a++;
        this.f5160g.glVertexAttrib4f(i, f, f2, f3, f4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib4fv(int i, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5160g.glVertexAttrib4fv(i, floatBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glVertexAttribDivisor(int i, int i2) {
        this.f5161a++;
        this.f5160g.glVertexAttribDivisor(i, i2);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glVertexAttribI4i(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5160g.glVertexAttribI4i(i, i2, i3, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glVertexAttribI4ui(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5160g.glVertexAttribI4ui(i, i2, i3, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glVertexAttribIPointer(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5160g.glVertexAttribIPointer(i, i2, i3, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glViewport(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5160g.glViewport(i, i2, i3, i4);
        m23982a();
    }

    public GL30Interceptor(GLProfiler gLProfiler, GL30 gl30) {
        super(gLProfiler);
        this.f5160g = gl30;
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDeleteQueries(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glDeleteQueries(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDeleteSamplers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glDeleteSamplers(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDeleteTransformFeedbacks(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glDeleteTransformFeedbacks(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDeleteVertexArrays(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glDeleteVertexArrays(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGenQueries(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGenQueries(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGenSamplers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGenSamplers(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGenTransformFeedbacks(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGenTransformFeedbacks(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glGenVertexArrays(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5160g.glGenVertexArrays(i, intBuffer);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public String glGetActiveUniformBlockName(int i, int i2) {
        this.f5161a++;
        String glGetActiveUniformBlockName = this.f5160g.glGetActiveUniformBlockName(i, i2);
        m23982a();
        return glGetActiveUniformBlockName;
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glTexImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.f5161a++;
        this.f5160g.glTexImage3D(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glTexSubImage3D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        this.f5161a++;
        this.f5160g.glTexSubImage3D(i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1fv(int i, int i2, float[] fArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniform1fv(i, i2, fArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1iv(int i, int i2, int[] iArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniform1iv(i, i2, iArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2fv(int i, int i2, float[] fArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniform2fv(i, i2, fArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2iv(int i, int i2, int[] iArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniform2iv(i, i2, iArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3fv(int i, int i2, float[] fArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniform3fv(i, i2, fArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3iv(int i, int i2, int[] iArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniform3iv(i, i2, iArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4fv(int i, int i2, float[] fArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniform4fv(i, i2, fArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4iv(int i, int i2, int[] iArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniform4iv(i, i2, iArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix2fv(int i, int i2, boolean z, float[] fArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniformMatrix2fv(i, i2, z, fArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix3fv(int i, int i2, boolean z, float[] fArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniformMatrix3fv(i, i2, z, fArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix4fv(int i, int i2, boolean z, float[] fArr, int i3) {
        this.f5161a++;
        this.f5160g.glUniformMatrix4fv(i, i2, z, fArr, i3);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttribPointer(int i, int i2, int i3, boolean z, int i4, int i5) {
        this.f5161a++;
        this.f5160g.glVertexAttribPointer(i, i2, i3, z, i4, i5);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDrawElements(int i, int i2, int i3, int i4) {
        this.f5165e.put(i2);
        this.f5163c++;
        this.f5161a++;
        this.f5160g.glDrawElements(i, i2, i3, i4);
        m23982a();
    }

    @Override // com.badlogic.gdx.graphics.GL30
    public void glDrawRangeElements(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f5165e.put(i4);
        this.f5163c++;
        this.f5161a++;
        this.f5160g.glDrawRangeElements(i, i2, i3, i4, i5, i6);
        m23982a();
    }
}
