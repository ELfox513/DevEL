.class public interface abstract Lnet/bytebuddy/description/ModifierReviewable$ForFieldDescription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/ModifierReviewable$OfEnumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/ModifierReviewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForFieldDescription"
.end annotation


# virtual methods
.method public abstract getFieldManifestation()Lnet/bytebuddy/description/modifier/FieldManifestation;
.end method

.method public abstract getFieldPersistence()Lnet/bytebuddy/description/modifier/FieldPersistence;
.end method

.method public abstract isTransient()Z
.end method

.method public abstract isVolatile()Z
.end method
