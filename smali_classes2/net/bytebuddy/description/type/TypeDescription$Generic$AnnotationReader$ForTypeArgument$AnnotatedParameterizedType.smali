.class public interface abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeArgument$AnnotatedParameterizedType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnotatedParameterizedType"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.reflect.AnnotatedParameterizedType"
.end annotation


# virtual methods
.method public abstract getAnnotatedActualTypeArguments(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/reflect/AnnotatedElement;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getAnnotatedActualTypeArguments"
    .end annotation
.end method

.method public abstract isInstance(Ljava/lang/reflect/AnnotatedElement;)Z
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isInstance"
    .end annotation
.end method
