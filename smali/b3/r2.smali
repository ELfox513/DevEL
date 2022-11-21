.class public Lb3/r2;
.super Lb3/q2;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb3/q2;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Landroidx/activity/c;->a(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final j()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method
