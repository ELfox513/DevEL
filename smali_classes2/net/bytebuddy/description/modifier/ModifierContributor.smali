.class public interface abstract Lnet/bytebuddy/description/modifier/ModifierContributor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;,
        Lnet/bytebuddy/description/modifier/ModifierContributor$ForParameter;,
        Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;,
        Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;,
        Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;
    }
.end annotation


# static fields
.field public static final EMPTY_MASK:I


# virtual methods
.method public abstract getMask()I
.end method

.method public abstract getRange()I
.end method

.method public abstract isDefault()Z
.end method
