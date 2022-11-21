.class public interface abstract annotation Lnet/bytebuddy/implementation/bind/annotation/Super;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lnet/bytebuddy/implementation/bind/annotation/Super;
        constructorParameters = {}
        ignoreFinalizer = true
        proxyType = V
        serializableProxy = false
        strategy = .enum Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->CONSTRUCTOR:Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/Super$Binder;,
        Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract constructorParameters()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract ignoreFinalizer()Z
.end method

.method public abstract proxyType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract serializableProxy()Z
.end method

.method public abstract strategy()Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;
.end method
