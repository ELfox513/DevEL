.class public final La3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/view/ViewGroup$LayoutParams;

.field public final c:Landroid/view/ViewGroup;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lr4/cs0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lr4/cs0;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, La3/j;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {p1}, Lr4/cs0;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {p1}, Lr4/cs0;->D0()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, La3/j;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, La3/j;->c:Landroid/view/ViewGroup;

    invoke-interface {p1}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iput v1, p0, La3/j;->a:I

    invoke-interface {p1}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lr4/cs0;->Y0(Z)V

    return-void

    :cond_0
    new-instance p1, La3/h;

    const-string v0, "Could not get the parent of the WebView for an overlay."

    invoke-direct {p1, v0}, La3/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method
