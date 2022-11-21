.class public interface abstract Lnet/bytebuddy/description/ModifierReviewable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;,
        Lnet/bytebuddy/description/ModifierReviewable$ForParameterDescription;,
        Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;,
        Lnet/bytebuddy/description/ModifierReviewable$ForFieldDescription;,
        Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;,
        Lnet/bytebuddy/description/ModifierReviewable$OfEnumeration;,
        Lnet/bytebuddy/description/ModifierReviewable$OfAbstraction;,
        Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;
    }
.end annotation


# static fields
.field public static final EMPTY_MASK:I


# virtual methods
.method public abstract getModifiers()I
.end method

.method public abstract getSyntheticState()Lnet/bytebuddy/description/modifier/SyntheticState;
.end method

.method public abstract isFinal()Z
.end method

.method public abstract isSynthetic()Z
.end method
