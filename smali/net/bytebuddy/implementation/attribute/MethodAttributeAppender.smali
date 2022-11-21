.class public interface abstract Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Compound;,
        Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForReceiverType;,
        Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;,
        Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;,
        Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;,
        Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
.end method
