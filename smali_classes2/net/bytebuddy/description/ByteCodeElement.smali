.class public interface abstract Lnet/bytebuddy/description/ByteCodeElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/NamedElement$WithRuntimeName;
.implements Lnet/bytebuddy/description/NamedElement$WithDescriptor;
.implements Lnet/bytebuddy/description/ModifierReviewable;
.implements Lnet/bytebuddy/description/DeclaredByType;
.implements Lnet/bytebuddy/description/annotation/AnnotationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/ByteCodeElement$Token;,
        Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    }
.end annotation


# virtual methods
.method public abstract isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method

.method public abstract isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method
