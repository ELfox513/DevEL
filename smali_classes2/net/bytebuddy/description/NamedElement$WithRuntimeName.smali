.class public interface abstract Lnet/bytebuddy/description/NamedElement$WithRuntimeName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/NamedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/NamedElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WithRuntimeName"
.end annotation


# virtual methods
.method public abstract getInternalName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method
