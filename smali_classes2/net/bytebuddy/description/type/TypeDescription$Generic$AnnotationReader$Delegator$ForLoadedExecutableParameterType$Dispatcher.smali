.class public interface abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableParameterType$Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableParameterType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.reflect.Executable"
.end annotation


# virtual methods
.method public abstract getAnnotatedParameterTypes(Ljava/lang/Object;)[Ljava/lang/reflect/AnnotatedElement;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getAnnotatedParameterTypes"
    .end annotation
.end method
