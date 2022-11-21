.class public final synthetic Landroid/hardware/display/DisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method


# virtual methods
.method public native synthetic getDisplay(I)Landroid/view/Display;
.end method

.method public native synthetic registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
.end method

.method public native synthetic unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
.end method
