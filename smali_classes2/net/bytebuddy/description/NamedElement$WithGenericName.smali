.class public interface abstract Lnet/bytebuddy/description/NamedElement$WithGenericName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/NamedElement$WithRuntimeName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/NamedElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WithGenericName"
.end annotation


# virtual methods
.method public abstract toGenericString()Ljava/lang/String;
.end method
