.class public interface abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType$Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.reflect.Executable"
.end annotation


# virtual methods
.method public abstract getAnnotatedExceptionTypes(Ljava/lang/Object;)[Ljava/lang/reflect/AnnotatedElement;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getAnnotatedExceptionTypes"
    .end annotation
.end method
