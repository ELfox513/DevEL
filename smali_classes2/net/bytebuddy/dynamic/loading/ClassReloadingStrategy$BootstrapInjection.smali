.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BootstrapInjection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;,
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;
    }
.end annotation


# virtual methods
.method public abstract make(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end method
