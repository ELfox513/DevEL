.class public interface abstract Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/ModifierReviewable$OfAbstraction;
.implements Lnet/bytebuddy/description/ModifierReviewable$OfEnumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/ModifierReviewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForTypeDefinition"
.end annotation


# virtual methods
.method public abstract getTypeManifestation()Lnet/bytebuddy/description/modifier/TypeManifestation;
.end method

.method public abstract isAnnotation()Z
.end method

.method public abstract isInterface()Z
.end method
