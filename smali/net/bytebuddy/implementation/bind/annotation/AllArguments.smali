.class public interface abstract annotation Lnet/bytebuddy/implementation/bind/annotation/AllArguments;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lnet/bytebuddy/implementation/bind/annotation/AllArguments;
        includeSelf = false
        nullIfEmpty = false
        value = .enum Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->STRICT:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;,
        Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;
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
.method public abstract includeSelf()Z
.end method

.method public abstract nullIfEmpty()Z
.end method

.method public abstract value()Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;
.end method
