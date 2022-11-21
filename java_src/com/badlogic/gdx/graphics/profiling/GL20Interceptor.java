package com.badlogic.gdx.graphics.profiling;

import com.badlogic.gdx.graphics.GL20;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
/* loaded from: classes.dex */
public class GL20Interceptor extends GLInterceptor {

    /* renamed from: g */
    public final GL20 f5159g;

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCompressedTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, Buffer buffer) {
        this.f5161a++;
        this.f5159g.glCompressedTexImage2D(i, i2, i3, i4, i5, i6, i7, buffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCompressedTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        this.f5161a++;
        this.f5159g.glCompressedTexSubImage2D(i, i2, i3, i4, i5, i6, i7, i8, buffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCopyTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f5161a++;
        this.f5159g.glCopyTexImage2D(i, i2, i3, i4, i5, i6, i7, i8);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCopyTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f5161a++;
        this.f5159g.glCopyTexSubImage2D(i, i2, i3, i4, i5, i6, i7, i8);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDrawElements(int i, int i2, int i3, Buffer buffer) {
        this.f5165e.put(i2);
        this.f5163c++;
        this.f5161a++;
        this.f5159g.glDrawElements(i, i2, i3, buffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glReadPixels(int i, int i2, int i3, int i4, int i5, int i6, Buffer buffer) {
        this.f5161a++;
        this.f5159g.glReadPixels(i, i2, i3, i4, i5, i6, buffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        this.f5161a++;
        this.f5159g.glTexImage2D(i, i2, i3, i4, i5, i6, i7, i8, buffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        this.f5161a++;
        this.f5159g.glTexSubImage2D(i, i2, i3, i4, i5, i6, i7, i8, buffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1fv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glUniform1fv(i, i2, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1iv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glUniform1iv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2fv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glUniform2fv(i, i2, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2iv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glUniform2iv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3fv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glUniform3fv(i, i2, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3iv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glUniform3iv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4fv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glUniform4fv(i, i2, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4iv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glUniform4iv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix2fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glUniformMatrix2fv(i, i2, z, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix3fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glUniformMatrix3fv(i, i2, z, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix4fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glUniformMatrix4fv(i, i2, z, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttribPointer(int i, int i2, int i3, boolean z, int i4, Buffer buffer) {
        this.f5161a++;
        this.f5159g.glVertexAttribPointer(i, i2, i3, z, i4, buffer);
        m23983a();
    }

    /* renamed from: a */
    public final void m23983a() {
        int glGetError = this.f5159g.glGetError();
        while (glGetError != 0) {
            this.f5166f.getListener().onError(glGetError);
            glGetError = this.f5159g.glGetError();
        }
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glActiveTexture(int i) {
        this.f5161a++;
        this.f5159g.glActiveTexture(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glAttachShader(int i, int i2) {
        this.f5161a++;
        this.f5159g.glAttachShader(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindAttribLocation(int i, int i2, String str) {
        this.f5161a++;
        this.f5159g.glBindAttribLocation(i, i2, str);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindBuffer(int i, int i2) {
        this.f5161a++;
        this.f5159g.glBindBuffer(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindFramebuffer(int i, int i2) {
        this.f5161a++;
        this.f5159g.glBindFramebuffer(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindRenderbuffer(int i, int i2) {
        this.f5161a++;
        this.f5159g.glBindRenderbuffer(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindTexture(int i, int i2) {
        this.f5162b++;
        this.f5161a++;
        this.f5159g.glBindTexture(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendColor(float f, float f2, float f3, float f4) {
        this.f5161a++;
        this.f5159g.glBlendColor(f, f2, f3, f4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendEquation(int i) {
        this.f5161a++;
        this.f5159g.glBlendEquation(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendEquationSeparate(int i, int i2) {
        this.f5161a++;
        this.f5159g.glBlendEquationSeparate(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendFunc(int i, int i2) {
        this.f5161a++;
        this.f5159g.glBlendFunc(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendFuncSeparate(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5159g.glBlendFuncSeparate(i, i2, i3, i4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBufferData(int i, int i2, Buffer buffer, int i3) {
        this.f5161a++;
        this.f5159g.glBufferData(i, i2, buffer, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBufferSubData(int i, int i2, int i3, Buffer buffer) {
        this.f5161a++;
        this.f5159g.glBufferSubData(i, i2, i3, buffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glCheckFramebufferStatus(int i) {
        this.f5161a++;
        int glCheckFramebufferStatus = this.f5159g.glCheckFramebufferStatus(i);
        m23983a();
        return glCheckFramebufferStatus;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClear(int i) {
        this.f5161a++;
        this.f5159g.glClear(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClearColor(float f, float f2, float f3, float f4) {
        this.f5161a++;
        this.f5159g.glClearColor(f, f2, f3, f4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClearDepthf(float f) {
        this.f5161a++;
        this.f5159g.glClearDepthf(f);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClearStencil(int i) {
        this.f5161a++;
        this.f5159g.glClearStencil(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glColorMask(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f5161a++;
        this.f5159g.glColorMask(z, z2, z3, z4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCompileShader(int i) {
        this.f5161a++;
        this.f5159g.glCompileShader(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glCreateProgram() {
        this.f5161a++;
        int glCreateProgram = this.f5159g.glCreateProgram();
        m23983a();
        return glCreateProgram;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glCreateShader(int i) {
        this.f5161a++;
        int glCreateShader = this.f5159g.glCreateShader(i);
        m23983a();
        return glCreateShader;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCullFace(int i) {
        this.f5161a++;
        this.f5159g.glCullFace(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteBuffer(int i) {
        this.f5161a++;
        this.f5159g.glDeleteBuffer(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteBuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glDeleteBuffers(i, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteFramebuffer(int i) {
        this.f5161a++;
        this.f5159g.glDeleteFramebuffer(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteFramebuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glDeleteFramebuffers(i, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteProgram(int i) {
        this.f5161a++;
        this.f5159g.glDeleteProgram(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteRenderbuffer(int i) {
        this.f5161a++;
        this.f5159g.glDeleteRenderbuffer(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteRenderbuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glDeleteRenderbuffers(i, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteShader(int i) {
        this.f5161a++;
        this.f5159g.glDeleteShader(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteTexture(int i) {
        this.f5161a++;
        this.f5159g.glDeleteTexture(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteTextures(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glDeleteTextures(i, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDepthFunc(int i) {
        this.f5161a++;
        this.f5159g.glDepthFunc(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDepthMask(boolean z) {
        this.f5161a++;
        this.f5159g.glDepthMask(z);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDepthRangef(float f, float f2) {
        this.f5161a++;
        this.f5159g.glDepthRangef(f, f2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDetachShader(int i, int i2) {
        this.f5161a++;
        this.f5159g.glDetachShader(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDisable(int i) {
        this.f5161a++;
        this.f5159g.glDisable(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDisableVertexAttribArray(int i) {
        this.f5161a++;
        this.f5159g.glDisableVertexAttribArray(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDrawArrays(int i, int i2, int i3) {
        this.f5165e.put(i3);
        this.f5163c++;
        this.f5161a++;
        this.f5159g.glDrawArrays(i, i2, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glEnable(int i) {
        this.f5161a++;
        this.f5159g.glEnable(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glEnableVertexAttribArray(int i) {
        this.f5161a++;
        this.f5159g.glEnableVertexAttribArray(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFinish() {
        this.f5161a++;
        this.f5159g.glFinish();
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFlush() {
        this.f5161a++;
        this.f5159g.glFlush();
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFramebufferRenderbuffer(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5159g.glFramebufferRenderbuffer(i, i2, i3, i4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFramebufferTexture2D(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5159g.glFramebufferTexture2D(i, i2, i3, i4, i5);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFrontFace(int i) {
        this.f5161a++;
        this.f5159g.glFrontFace(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenBuffer() {
        this.f5161a++;
        int glGenBuffer = this.f5159g.glGenBuffer();
        m23983a();
        return glGenBuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenBuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGenBuffers(i, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenFramebuffer() {
        this.f5161a++;
        int glGenFramebuffer = this.f5159g.glGenFramebuffer();
        m23983a();
        return glGenFramebuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenFramebuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGenFramebuffers(i, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenRenderbuffer() {
        this.f5161a++;
        int glGenRenderbuffer = this.f5159g.glGenRenderbuffer();
        m23983a();
        return glGenRenderbuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenRenderbuffers(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGenRenderbuffers(i, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenTexture() {
        this.f5161a++;
        int glGenTexture = this.f5159g.glGenTexture();
        m23983a();
        return glGenTexture;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenTextures(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGenTextures(i, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenerateMipmap(int i) {
        this.f5161a++;
        this.f5159g.glGenerateMipmap(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetActiveAttrib(int i, int i2, IntBuffer intBuffer, IntBuffer intBuffer2) {
        this.f5161a++;
        String glGetActiveAttrib = this.f5159g.glGetActiveAttrib(i, i2, intBuffer, intBuffer2);
        m23983a();
        return glGetActiveAttrib;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetActiveUniform(int i, int i2, IntBuffer intBuffer, IntBuffer intBuffer2) {
        this.f5161a++;
        String glGetActiveUniform = this.f5159g.glGetActiveUniform(i, i2, intBuffer, intBuffer2);
        m23983a();
        return glGetActiveUniform;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetAttachedShaders(int i, int i2, Buffer buffer, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGetAttachedShaders(i, i2, buffer, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGetAttribLocation(int i, String str) {
        this.f5161a++;
        int glGetAttribLocation = this.f5159g.glGetAttribLocation(i, str);
        m23983a();
        return glGetAttribLocation;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetBooleanv(int i, Buffer buffer) {
        this.f5161a++;
        this.f5159g.glGetBooleanv(i, buffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetBufferParameteriv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGetBufferParameteriv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGetError() {
        this.f5161a++;
        return this.f5159g.glGetError();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetFloatv(int i, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glGetFloatv(i, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetFramebufferAttachmentParameteriv(int i, int i2, int i3, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGetFramebufferAttachmentParameteriv(i, i2, i3, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetIntegerv(int i, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGetIntegerv(i, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetProgramInfoLog(int i) {
        this.f5161a++;
        String glGetProgramInfoLog = this.f5159g.glGetProgramInfoLog(i);
        m23983a();
        return glGetProgramInfoLog;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetProgramiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGetProgramiv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetRenderbufferParameteriv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGetRenderbufferParameteriv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetShaderInfoLog(int i) {
        this.f5161a++;
        String glGetShaderInfoLog = this.f5159g.glGetShaderInfoLog(i);
        m23983a();
        return glGetShaderInfoLog;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetShaderPrecisionFormat(int i, int i2, IntBuffer intBuffer, IntBuffer intBuffer2) {
        this.f5161a++;
        this.f5159g.glGetShaderPrecisionFormat(i, i2, intBuffer, intBuffer2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetShaderiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGetShaderiv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetString(int i) {
        this.f5161a++;
        String glGetString = this.f5159g.glGetString(i);
        m23983a();
        return glGetString;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetTexParameterfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glGetTexParameterfv(i, i2, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetTexParameteriv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGetTexParameteriv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGetUniformLocation(int i, String str) {
        this.f5161a++;
        int glGetUniformLocation = this.f5159g.glGetUniformLocation(i, str);
        m23983a();
        return glGetUniformLocation;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetUniformfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glGetUniformfv(i, i2, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetUniformiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGetUniformiv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetVertexAttribPointerv(int i, int i2, Buffer buffer) {
        this.f5161a++;
        this.f5159g.glGetVertexAttribPointerv(i, i2, buffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetVertexAttribfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glGetVertexAttribfv(i, i2, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetVertexAttribiv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glGetVertexAttribiv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glHint(int i, int i2) {
        this.f5161a++;
        this.f5159g.glHint(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsBuffer(int i) {
        this.f5161a++;
        boolean glIsBuffer = this.f5159g.glIsBuffer(i);
        m23983a();
        return glIsBuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsEnabled(int i) {
        this.f5161a++;
        boolean glIsEnabled = this.f5159g.glIsEnabled(i);
        m23983a();
        return glIsEnabled;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsFramebuffer(int i) {
        this.f5161a++;
        boolean glIsFramebuffer = this.f5159g.glIsFramebuffer(i);
        m23983a();
        return glIsFramebuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsProgram(int i) {
        this.f5161a++;
        boolean glIsProgram = this.f5159g.glIsProgram(i);
        m23983a();
        return glIsProgram;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsRenderbuffer(int i) {
        this.f5161a++;
        boolean glIsRenderbuffer = this.f5159g.glIsRenderbuffer(i);
        m23983a();
        return glIsRenderbuffer;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsShader(int i) {
        this.f5161a++;
        boolean glIsShader = this.f5159g.glIsShader(i);
        m23983a();
        return glIsShader;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsTexture(int i) {
        this.f5161a++;
        boolean glIsTexture = this.f5159g.glIsTexture(i);
        m23983a();
        return glIsTexture;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glLineWidth(float f) {
        this.f5161a++;
        this.f5159g.glLineWidth(f);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glLinkProgram(int i) {
        this.f5161a++;
        this.f5159g.glLinkProgram(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glPixelStorei(int i, int i2) {
        this.f5161a++;
        this.f5159g.glPixelStorei(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glPolygonOffset(float f, float f2) {
        this.f5161a++;
        this.f5159g.glPolygonOffset(f, f2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glReleaseShaderCompiler() {
        this.f5161a++;
        this.f5159g.glReleaseShaderCompiler();
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glRenderbufferStorage(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5159g.glRenderbufferStorage(i, i2, i3, i4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glSampleCoverage(float f, boolean z) {
        this.f5161a++;
        this.f5159g.glSampleCoverage(f, z);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glScissor(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5159g.glScissor(i, i2, i3, i4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glShaderBinary(int i, IntBuffer intBuffer, int i2, Buffer buffer, int i3) {
        this.f5161a++;
        this.f5159g.glShaderBinary(i, intBuffer, i2, buffer, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glShaderSource(int i, String str) {
        this.f5161a++;
        this.f5159g.glShaderSource(i, str);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilFunc(int i, int i2, int i3) {
        this.f5161a++;
        this.f5159g.glStencilFunc(i, i2, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilFuncSeparate(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5159g.glStencilFuncSeparate(i, i2, i3, i4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilMask(int i) {
        this.f5161a++;
        this.f5159g.glStencilMask(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilMaskSeparate(int i, int i2) {
        this.f5161a++;
        this.f5159g.glStencilMaskSeparate(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilOp(int i, int i2, int i3) {
        this.f5161a++;
        this.f5159g.glStencilOp(i, i2, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilOpSeparate(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5159g.glStencilOpSeparate(i, i2, i3, i4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameterf(int i, int i2, float f) {
        this.f5161a++;
        this.f5159g.glTexParameterf(i, i2, f);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameterfv(int i, int i2, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glTexParameterfv(i, i2, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameteri(int i, int i2, int i3) {
        this.f5161a++;
        this.f5159g.glTexParameteri(i, i2, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameteriv(int i, int i2, IntBuffer intBuffer) {
        this.f5161a++;
        this.f5159g.glTexParameteriv(i, i2, intBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1f(int i, float f) {
        this.f5161a++;
        this.f5159g.glUniform1f(i, f);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1i(int i, int i2) {
        this.f5161a++;
        this.f5159g.glUniform1i(i, i2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2f(int i, float f, float f2) {
        this.f5161a++;
        this.f5159g.glUniform2f(i, f, f2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2i(int i, int i2, int i3) {
        this.f5161a++;
        this.f5159g.glUniform2i(i, i2, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3f(int i, float f, float f2, float f3) {
        this.f5161a++;
        this.f5159g.glUniform3f(i, f, f2, f3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3i(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5159g.glUniform3i(i, i2, i3, i4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4f(int i, float f, float f2, float f3, float f4) {
        this.f5161a++;
        this.f5159g.glUniform4f(i, f, f2, f3, f4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4i(int i, int i2, int i3, int i4, int i5) {
        this.f5161a++;
        this.f5159g.glUniform4i(i, i2, i3, i4, i5);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUseProgram(int i) {
        this.f5164d++;
        this.f5161a++;
        this.f5159g.glUseProgram(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glValidateProgram(int i) {
        this.f5161a++;
        this.f5159g.glValidateProgram(i);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib1f(int i, float f) {
        this.f5161a++;
        this.f5159g.glVertexAttrib1f(i, f);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib1fv(int i, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glVertexAttrib1fv(i, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib2f(int i, float f, float f2) {
        this.f5161a++;
        this.f5159g.glVertexAttrib2f(i, f, f2);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib2fv(int i, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glVertexAttrib2fv(i, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib3f(int i, float f, float f2, float f3) {
        this.f5161a++;
        this.f5159g.glVertexAttrib3f(i, f, f2, f3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib3fv(int i, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glVertexAttrib3fv(i, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib4f(int i, float f, float f2, float f3, float f4) {
        this.f5161a++;
        this.f5159g.glVertexAttrib4f(i, f, f2, f3, f4);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib4fv(int i, FloatBuffer floatBuffer) {
        this.f5161a++;
        this.f5159g.glVertexAttrib4fv(i, floatBuffer);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glViewport(int i, int i2, int i3, int i4) {
        this.f5161a++;
        this.f5159g.glViewport(i, i2, i3, i4);
        m23983a();
    }

    public GL20Interceptor(GLProfiler gLProfiler, GL20 gl20) {
        super(gLProfiler);
        this.f5159g = gl20;
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1fv(int i, int i2, float[] fArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniform1fv(i, i2, fArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1iv(int i, int i2, int[] iArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniform1iv(i, i2, iArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2fv(int i, int i2, float[] fArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniform2fv(i, i2, fArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2iv(int i, int i2, int[] iArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniform2iv(i, i2, iArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3fv(int i, int i2, float[] fArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniform3fv(i, i2, fArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3iv(int i, int i2, int[] iArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniform3iv(i, i2, iArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4fv(int i, int i2, float[] fArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniform4fv(i, i2, fArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4iv(int i, int i2, int[] iArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniform4iv(i, i2, iArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix2fv(int i, int i2, boolean z, float[] fArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniformMatrix2fv(i, i2, z, fArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix3fv(int i, int i2, boolean z, float[] fArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniformMatrix3fv(i, i2, z, fArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix4fv(int i, int i2, boolean z, float[] fArr, int i3) {
        this.f5161a++;
        this.f5159g.glUniformMatrix4fv(i, i2, z, fArr, i3);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttribPointer(int i, int i2, int i3, boolean z, int i4, int i5) {
        this.f5161a++;
        this.f5159g.glVertexAttribPointer(i, i2, i3, z, i4, i5);
        m23983a();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDrawElements(int i, int i2, int i3, int i4) {
        this.f5165e.put(i2);
        this.f5163c++;
        this.f5161a++;
        this.f5159g.glDrawElements(i, i2, i3, i4);
        m23983a();
    }
}
