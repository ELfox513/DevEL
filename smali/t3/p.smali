.class public Lt3/p;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# instance fields
.field public u0:Landroid/app/Dialog;

.field public v0:Landroid/content/DialogInterface$OnCancelListener;

.field public w0:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method public static g0(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lt3/p;
    .locals 2
    .param p0    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    new-instance v0, Lt3/p;

    invoke-direct {v0}, Lt3/p;-><init>()V

    const-string v1, "Cannot display null dialog"

    invoke-static {p0, v1}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p0, v0, Lt3/p;->u0:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    iput-object p1, v0, Lt3/p;->v0:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public c0(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object p1, p0, Lt3/p;->u0:Landroid/app/Dialog;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->d0(Z)V

    iget-object p1, p0, Lt3/p;->w0:Landroid/app/Dialog;

    if-nez p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lt3/p;->w0:Landroid/app/Dialog;

    :cond_0
    iget-object p1, p0, Lt3/p;->w0:Landroid/app/Dialog;

    :cond_1
    return-object p1
.end method

.method public f0(Landroidx/fragment/app/i;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/i;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/c;->f0(Landroidx/fragment/app/i;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lt3/p;->v0:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
