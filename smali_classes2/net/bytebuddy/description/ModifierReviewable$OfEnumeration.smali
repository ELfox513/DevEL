.class public interface abstract Lnet/bytebuddy/description/ModifierReviewable$OfEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/ModifierReviewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfEnumeration"
.end annotation


# virtual methods
.method public abstract getEnumerationState()Lnet/bytebuddy/description/modifier/EnumerationState;
.end method

.method public abstract isEnum()Z
.end method
