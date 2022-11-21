.class public interface abstract annotation Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
        includeSyntheticFields = false
        invokeSuper = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;->IF_DECLARED:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;
        permitSubclassEquality = false
        simpleComparisonsFirst = true
        useTypeHashConstant = true
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Enhance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;
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

.method public abstract invokeSuper()Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;
.end method

.method public abstract permitSubclassEquality()Z
.end method

.method public abstract simpleComparisonsFirst()Z
.end method

.method public abstract useTypeHashConstant()Z
.end method
