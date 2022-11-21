.class public interface abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardUpperBoundType$AnnotatedWildcardType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardUpperBoundType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnotatedWildcardType"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.reflect.AnnotatedWildcardType"
.end annotation


# virtual methods
.method public abstract getAnnotatedUpperBounds(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/reflect/AnnotatedElement;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getAnnotatedUpperBounds"
    .end annotation
.end method

.method public abstract isInstance(Ljava/lang/reflect/AnnotatedElement;)Z
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isInstance"
    .end annotation
.end method
