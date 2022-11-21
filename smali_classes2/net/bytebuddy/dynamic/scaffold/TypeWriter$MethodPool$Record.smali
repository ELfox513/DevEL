.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForNonImplementedMethod;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
.end method

.method public abstract applyAttributes(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
.end method

.method public abstract applyBody(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
.end method

.method public abstract applyCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
.end method

.method public abstract applyHead(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
.end method

.method public abstract getMethod()Lnet/bytebuddy/description/method/MethodDescription;
.end method

.method public abstract getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;
.end method

.method public abstract getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
.end method

.method public abstract prepend(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
.end method
