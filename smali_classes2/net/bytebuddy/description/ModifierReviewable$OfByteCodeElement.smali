.class public interface abstract Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/ModifierReviewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/ModifierReviewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfByteCodeElement"
.end annotation


# virtual methods
.method public abstract getOwnership()Lnet/bytebuddy/description/modifier/Ownership;
.end method

.method public abstract getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
.end method

.method public abstract isDeprecated()Z
.end method

.method public abstract isPackagePrivate()Z
.end method

.method public abstract isPrivate()Z
.end method

.method public abstract isProtected()Z
.end method

.method public abstract isPublic()Z
.end method

.method public abstract isStatic()Z
.end method
