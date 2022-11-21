package com.badlogic.gdx.backends.android;

import android.opengl.GLES20;
import com.badlogic.gdx.graphics.GL20;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
/* loaded from: classes.dex */
public class AndroidGL20 implements GL20 {

    /* renamed from: a */
    public int[] f3634a = new int[1];

    /* renamed from: b */
    public int[] f3635b = new int[1];

    /* renamed from: c */
    public int[] f3636c = new int[1];

    /* renamed from: d */
    public byte[] f3637d = new byte[512];

    @Override // com.badlogic.gdx.graphics.GL20
    public void glActiveTexture(int i) {
        GLES20.glActiveTexture(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glAttachShader(int i, int i2) {
        GLES20.glAttachShader(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindAttribLocation(int i, int i2, String str) {
        GLES20.glBindAttribLocation(i, i2, str);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindBuffer(int i, int i2) {
        GLES20.glBindBuffer(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindFramebuffer(int i, int i2) {
        GLES20.glBindFramebuffer(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindRenderbuffer(int i, int i2) {
        GLES20.glBindRenderbuffer(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBindTexture(int i, int i2) {
        GLES20.glBindTexture(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendColor(float f, float f2, float f3, float f4) {
        GLES20.glBlendColor(f, f2, f3, f4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendEquation(int i) {
        GLES20.glBlendEquation(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendEquationSeparate(int i, int i2) {
        GLES20.glBlendEquationSeparate(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendFunc(int i, int i2) {
        GLES20.glBlendFunc(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBlendFuncSeparate(int i, int i2, int i3, int i4) {
        GLES20.glBlendFuncSeparate(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBufferData(int i, int i2, Buffer buffer, int i3) {
        GLES20.glBufferData(i, i2, buffer, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glBufferSubData(int i, int i2, int i3, Buffer buffer) {
        GLES20.glBufferSubData(i, i2, i3, buffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glCheckFramebufferStatus(int i) {
        return GLES20.glCheckFramebufferStatus(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClear(int i) {
        GLES20.glClear(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClearColor(float f, float f2, float f3, float f4) {
        GLES20.glClearColor(f, f2, f3, f4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClearDepthf(float f) {
        GLES20.glClearDepthf(f);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glClearStencil(int i) {
        GLES20.glClearStencil(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glColorMask(boolean z, boolean z2, boolean z3, boolean z4) {
        GLES20.glColorMask(z, z2, z3, z4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCompileShader(int i) {
        GLES20.glCompileShader(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCompressedTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, Buffer buffer) {
        GLES20.glCompressedTexImage2D(i, i2, i3, i4, i5, i6, i7, buffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCompressedTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        GLES20.glCompressedTexSubImage2D(i, i2, i3, i4, i5, i6, i7, i8, buffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCopyTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        GLES20.glCopyTexImage2D(i, i2, i3, i4, i5, i6, i7, i8);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCopyTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        GLES20.glCopyTexSubImage2D(i, i2, i3, i4, i5, i6, i7, i8);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glCreateProgram() {
        return GLES20.glCreateProgram();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glCreateShader(int i) {
        return GLES20.glCreateShader(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glCullFace(int i) {
        GLES20.glCullFace(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteBuffers(int i, IntBuffer intBuffer) {
        GLES20.glDeleteBuffers(i, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteFramebuffers(int i, IntBuffer intBuffer) {
        GLES20.glDeleteFramebuffers(i, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteProgram(int i) {
        GLES20.glDeleteProgram(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteRenderbuffers(int i, IntBuffer intBuffer) {
        GLES20.glDeleteRenderbuffers(i, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteShader(int i) {
        GLES20.glDeleteShader(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteTextures(int i, IntBuffer intBuffer) {
        GLES20.glDeleteTextures(i, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDepthFunc(int i) {
        GLES20.glDepthFunc(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDepthMask(boolean z) {
        GLES20.glDepthMask(z);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDepthRangef(float f, float f2) {
        GLES20.glDepthRangef(f, f2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDetachShader(int i, int i2) {
        GLES20.glDetachShader(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDisable(int i) {
        GLES20.glDisable(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDisableVertexAttribArray(int i) {
        GLES20.glDisableVertexAttribArray(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDrawArrays(int i, int i2, int i3) {
        GLES20.glDrawArrays(i, i2, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDrawElements(int i, int i2, int i3, Buffer buffer) {
        GLES20.glDrawElements(i, i2, i3, buffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glEnable(int i) {
        GLES20.glEnable(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glEnableVertexAttribArray(int i) {
        GLES20.glEnableVertexAttribArray(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFinish() {
        GLES20.glFinish();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFlush() {
        GLES20.glFlush();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFramebufferRenderbuffer(int i, int i2, int i3, int i4) {
        GLES20.glFramebufferRenderbuffer(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFramebufferTexture2D(int i, int i2, int i3, int i4, int i5) {
        GLES20.glFramebufferTexture2D(i, i2, i3, i4, i5);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glFrontFace(int i) {
        GLES20.glFrontFace(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenBuffers(int i, IntBuffer intBuffer) {
        GLES20.glGenBuffers(i, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenFramebuffers(int i, IntBuffer intBuffer) {
        GLES20.glGenFramebuffers(i, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenRenderbuffers(int i, IntBuffer intBuffer) {
        GLES20.glGenRenderbuffers(i, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenTextures(int i, IntBuffer intBuffer) {
        GLES20.glGenTextures(i, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGenerateMipmap(int i) {
        GLES20.glGenerateMipmap(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetAttachedShaders(int i, int i2, Buffer buffer, IntBuffer intBuffer) {
        GLES20.glGetAttachedShaders(i, i2, (IntBuffer) buffer, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGetAttribLocation(int i, String str) {
        return GLES20.glGetAttribLocation(i, str);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetBooleanv(int i, Buffer buffer) {
        GLES20.glGetBooleanv(i, (IntBuffer) buffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetBufferParameteriv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glGetBufferParameteriv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGetError() {
        return GLES20.glGetError();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetFloatv(int i, FloatBuffer floatBuffer) {
        GLES20.glGetFloatv(i, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetFramebufferAttachmentParameteriv(int i, int i2, int i3, IntBuffer intBuffer) {
        GLES20.glGetFramebufferAttachmentParameteriv(i, i2, i3, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetIntegerv(int i, IntBuffer intBuffer) {
        GLES20.glGetIntegerv(i, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetProgramInfoLog(int i) {
        return GLES20.glGetProgramInfoLog(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetProgramiv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glGetProgramiv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetRenderbufferParameteriv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glGetRenderbufferParameteriv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetShaderInfoLog(int i) {
        return GLES20.glGetShaderInfoLog(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetShaderPrecisionFormat(int i, int i2, IntBuffer intBuffer, IntBuffer intBuffer2) {
        GLES20.glGetShaderPrecisionFormat(i, i2, intBuffer, intBuffer2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetShaderiv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glGetShaderiv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetString(int i) {
        return GLES20.glGetString(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetTexParameterfv(int i, int i2, FloatBuffer floatBuffer) {
        GLES20.glGetTexParameterfv(i, i2, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetTexParameteriv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glGetTexParameteriv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGetUniformLocation(int i, String str) {
        return GLES20.glGetUniformLocation(i, str);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetUniformfv(int i, int i2, FloatBuffer floatBuffer) {
        GLES20.glGetUniformfv(i, i2, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetUniformiv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glGetUniformiv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetVertexAttribPointerv(int i, int i2, Buffer buffer) {
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetVertexAttribfv(int i, int i2, FloatBuffer floatBuffer) {
        GLES20.glGetVertexAttribfv(i, i2, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glGetVertexAttribiv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glGetVertexAttribiv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glHint(int i, int i2) {
        GLES20.glHint(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsBuffer(int i) {
        return GLES20.glIsBuffer(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsEnabled(int i) {
        return GLES20.glIsEnabled(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsFramebuffer(int i) {
        return GLES20.glIsFramebuffer(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsProgram(int i) {
        return GLES20.glIsProgram(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsRenderbuffer(int i) {
        return GLES20.glIsRenderbuffer(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsShader(int i) {
        return GLES20.glIsShader(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public boolean glIsTexture(int i) {
        return GLES20.glIsTexture(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glLineWidth(float f) {
        GLES20.glLineWidth(f);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glLinkProgram(int i) {
        GLES20.glLinkProgram(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glPixelStorei(int i, int i2) {
        GLES20.glPixelStorei(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glPolygonOffset(float f, float f2) {
        GLES20.glPolygonOffset(f, f2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glReadPixels(int i, int i2, int i3, int i4, int i5, int i6, Buffer buffer) {
        GLES20.glReadPixels(i, i2, i3, i4, i5, i6, buffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glReleaseShaderCompiler() {
        GLES20.glReleaseShaderCompiler();
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glRenderbufferStorage(int i, int i2, int i3, int i4) {
        GLES20.glRenderbufferStorage(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glSampleCoverage(float f, boolean z) {
        GLES20.glSampleCoverage(f, z);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glScissor(int i, int i2, int i3, int i4) {
        GLES20.glScissor(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glShaderBinary(int i, IntBuffer intBuffer, int i2, Buffer buffer, int i3) {
        GLES20.glShaderBinary(i, intBuffer, i2, buffer, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glShaderSource(int i, String str) {
        GLES20.glShaderSource(i, str);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilFunc(int i, int i2, int i3) {
        GLES20.glStencilFunc(i, i2, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilFuncSeparate(int i, int i2, int i3, int i4) {
        GLES20.glStencilFuncSeparate(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilMask(int i) {
        GLES20.glStencilMask(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilMaskSeparate(int i, int i2) {
        GLES20.glStencilMaskSeparate(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilOp(int i, int i2, int i3) {
        GLES20.glStencilOp(i, i2, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glStencilOpSeparate(int i, int i2, int i3, int i4) {
        GLES20.glStencilOpSeparate(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        GLES20.glTexImage2D(i, i2, i3, i4, i5, i6, i7, i8, buffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameterf(int i, int i2, float f) {
        GLES20.glTexParameterf(i, i2, f);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameterfv(int i, int i2, FloatBuffer floatBuffer) {
        GLES20.glTexParameterfv(i, i2, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameteri(int i, int i2, int i3) {
        GLES20.glTexParameteri(i, i2, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexParameteriv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glTexParameteriv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        GLES20.glTexSubImage2D(i, i2, i3, i4, i5, i6, i7, i8, buffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1f(int i, float f) {
        GLES20.glUniform1f(i, f);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1fv(int i, int i2, FloatBuffer floatBuffer) {
        GLES20.glUniform1fv(i, i2, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1i(int i, int i2) {
        GLES20.glUniform1i(i, i2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1iv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glUniform1iv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2f(int i, float f, float f2) {
        GLES20.glUniform2f(i, f, f2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2fv(int i, int i2, FloatBuffer floatBuffer) {
        GLES20.glUniform2fv(i, i2, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2i(int i, int i2, int i3) {
        GLES20.glUniform2i(i, i2, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2iv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glUniform2iv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3f(int i, float f, float f2, float f3) {
        GLES20.glUniform3f(i, f, f2, f3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3fv(int i, int i2, FloatBuffer floatBuffer) {
        GLES20.glUniform3fv(i, i2, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3i(int i, int i2, int i3, int i4) {
        GLES20.glUniform3i(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3iv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glUniform3iv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4f(int i, float f, float f2, float f3, float f4) {
        GLES20.glUniform4f(i, f, f2, f3, f4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4fv(int i, int i2, FloatBuffer floatBuffer) {
        GLES20.glUniform4fv(i, i2, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4i(int i, int i2, int i3, int i4, int i5) {
        GLES20.glUniform4i(i, i2, i3, i4, i5);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4iv(int i, int i2, IntBuffer intBuffer) {
        GLES20.glUniform4iv(i, i2, intBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix2fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        GLES20.glUniformMatrix2fv(i, i2, z, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix3fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        GLES20.glUniformMatrix3fv(i, i2, z, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix4fv(int i, int i2, boolean z, FloatBuffer floatBuffer) {
        GLES20.glUniformMatrix4fv(i, i2, z, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUseProgram(int i) {
        GLES20.glUseProgram(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glValidateProgram(int i) {
        GLES20.glValidateProgram(i);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib1f(int i, float f) {
        GLES20.glVertexAttrib1f(i, f);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib1fv(int i, FloatBuffer floatBuffer) {
        GLES20.glVertexAttrib1fv(i, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib2f(int i, float f, float f2) {
        GLES20.glVertexAttrib2f(i, f, f2);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib2fv(int i, FloatBuffer floatBuffer) {
        GLES20.glVertexAttrib2fv(i, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib3f(int i, float f, float f2, float f3) {
        GLES20.glVertexAttrib3f(i, f, f2, f3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib3fv(int i, FloatBuffer floatBuffer) {
        GLES20.glVertexAttrib3fv(i, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib4f(int i, float f, float f2, float f3, float f4) {
        GLES20.glVertexAttrib4f(i, f, f2, f3, f4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttrib4fv(int i, FloatBuffer floatBuffer) {
        GLES20.glVertexAttrib4fv(i, floatBuffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttribPointer(int i, int i2, int i3, boolean z, int i4, Buffer buffer) {
        GLES20.glVertexAttribPointer(i, i2, i3, z, i4, buffer);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glViewport(int i, int i2, int i3, int i4) {
        GLES20.glViewport(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteBuffer(int i) {
        int[] iArr = this.f3634a;
        iArr[0] = i;
        GLES20.glDeleteBuffers(1, iArr, 0);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteFramebuffer(int i) {
        int[] iArr = this.f3634a;
        iArr[0] = i;
        GLES20.glDeleteFramebuffers(1, iArr, 0);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteRenderbuffer(int i) {
        int[] iArr = this.f3634a;
        iArr[0] = i;
        GLES20.glDeleteRenderbuffers(1, iArr, 0);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDeleteTexture(int i) {
        int[] iArr = this.f3634a;
        iArr[0] = i;
        GLES20.glDeleteTextures(1, iArr, 0);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glDrawElements(int i, int i2, int i3, int i4) {
        GLES20.glDrawElements(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenBuffer() {
        GLES20.glGenBuffers(1, this.f3634a, 0);
        return this.f3634a[0];
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenFramebuffer() {
        GLES20.glGenFramebuffers(1, this.f3634a, 0);
        return this.f3634a[0];
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenRenderbuffer() {
        GLES20.glGenRenderbuffers(1, this.f3634a, 0);
        return this.f3634a[0];
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public int glGenTexture() {
        GLES20.glGenTextures(1, this.f3634a, 0);
        return this.f3634a[0];
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetActiveAttrib(int i, int i2, IntBuffer intBuffer, IntBuffer intBuffer2) {
        byte[] bArr = this.f3637d;
        GLES20.glGetActiveAttrib(i, i2, bArr.length, this.f3634a, 0, this.f3635b, 0, this.f3636c, 0, bArr, 0);
        intBuffer.put(this.f3635b[0]);
        intBuffer2.put(this.f3636c[0]);
        return new String(this.f3637d, 0, this.f3634a[0]);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public String glGetActiveUniform(int i, int i2, IntBuffer intBuffer, IntBuffer intBuffer2) {
        byte[] bArr = this.f3637d;
        GLES20.glGetActiveUniform(i, i2, bArr.length, this.f3634a, 0, this.f3635b, 0, this.f3636c, 0, bArr, 0);
        intBuffer.put(this.f3635b[0]);
        intBuffer2.put(this.f3636c[0]);
        return new String(this.f3637d, 0, this.f3634a[0]);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1fv(int i, int i2, float[] fArr, int i3) {
        GLES20.glUniform1fv(i, i2, fArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform1iv(int i, int i2, int[] iArr, int i3) {
        GLES20.glUniform1iv(i, i2, iArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2fv(int i, int i2, float[] fArr, int i3) {
        GLES20.glUniform2fv(i, i2, fArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform2iv(int i, int i2, int[] iArr, int i3) {
        GLES20.glUniform2iv(i, i2, iArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3fv(int i, int i2, float[] fArr, int i3) {
        GLES20.glUniform3fv(i, i2, fArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform3iv(int i, int i2, int[] iArr, int i3) {
        GLES20.glUniform3iv(i, i2, iArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4fv(int i, int i2, float[] fArr, int i3) {
        GLES20.glUniform4fv(i, i2, fArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniform4iv(int i, int i2, int[] iArr, int i3) {
        GLES20.glUniform4iv(i, i2, iArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix2fv(int i, int i2, boolean z, float[] fArr, int i3) {
        GLES20.glUniformMatrix2fv(i, i2, z, fArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix3fv(int i, int i2, boolean z, float[] fArr, int i3) {
        GLES20.glUniformMatrix3fv(i, i2, z, fArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glUniformMatrix4fv(int i, int i2, boolean z, float[] fArr, int i3) {
        GLES20.glUniformMatrix4fv(i, i2, z, fArr, i3);
    }

    @Override // com.badlogic.gdx.graphics.GL20
    public void glVertexAttribPointer(int i, int i2, int i3, boolean z, int i4, int i5) {
        GLES20.glVertexAttribPointer(i, i2, i3, z, i4, i5);
    }
}
