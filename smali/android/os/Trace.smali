.class public final synthetic Landroid/os/Trace;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public static native synthetic beginSection(Ljava/lang/String;)V
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public static native synthetic endSection()V
.end method
