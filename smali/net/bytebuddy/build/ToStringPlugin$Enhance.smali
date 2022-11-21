.class public interface abstract annotation Lnet/bytebuddy/build/ToStringPlugin$Enhance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lnet/bytebuddy/build/ToStringPlugin$Enhance;
        includeSyntheticFields = false
        prefix = .enum Lnet/bytebuddy/build/ToStringPlugin$Enhance$Prefix;->SIMPLE:Lnet/bytebuddy/build/ToStringPlugin$Enhance$Prefix;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/ToStringPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Enhance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/ToStringPlugin$Enhance$Prefix;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract includeSyntheticFields()Z
.end method

.method public abstract prefix()Lnet/bytebuddy/build/ToStringPlugin$Enhance$Prefix;
.end method
