.class public interface abstract Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;,
        Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;
    }
.end annotation


# virtual methods
.method public abstract make(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;
.end method
