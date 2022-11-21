.class public Lj/b1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lj/b1;


# direct methods
.method public constructor <init>(Lj/b1;)V
    .locals 0

    iput-object p1, p0, Lj/b1$e;->a:Lj/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lj/b1$e;->a:Lj/b1;

    invoke-virtual {p1}, Lj/b1;->v()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lj/b1$e;->a:Lj/b1;

    iget-object p1, p1, Lj/b1;->Q:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj/b1$e;->a:Lj/b1;

    iget-object p2, p1, Lj/b1;->M:Landroid/os/Handler;

    iget-object p1, p1, Lj/b1;->H:Lj/b1$g;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lj/b1$e;->a:Lj/b1;

    iget-object p1, p1, Lj/b1;->H:Lj/b1$g;

    invoke-virtual {p1}, Lj/b1$g;->run()V

    :cond_0
    return-void
.end method
