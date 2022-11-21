.class public synthetic Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final native synthetic finish()V
.end method

.method public native synthetic getWindow()Landroid/view/Window;
.end method

.method public native synthetic onDetachedFromWindow()V
.end method

.method public native synthetic onDreamingStarted()V
.end method

.method public native synthetic onDreamingStopped()V
.end method

.method public native synthetic setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public native synthetic setFullscreen(Z)V
.end method
