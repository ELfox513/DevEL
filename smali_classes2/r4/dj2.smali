.class public final Lr4/dj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/s92;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/s92<",
        "Lr4/p01;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/ej2;


# direct methods
.method public constructor <init>(Lr4/ej2;)V
    .locals 0

    iput-object p1, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lr4/p01;

    iget-object v0, p0, Lr4/dj2;->a:Lr4/ej2;

    iget-object v0, v0, Lr4/ej2;->v:Lr4/p01;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->b()V

    :cond_0
    iget-object v0, p0, Lr4/dj2;->a:Lr4/ej2;

    iput-object p1, v0, Lr4/ej2;->v:Lr4/p01;

    invoke-static {v0}, Lr4/ej2;->h7(Lr4/ej2;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-static {v0}, Lr4/ej2;->h7(Lr4/ej2;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lr4/p01;->h()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object v2

    invoke-virtual {v2}, Lb3/g;->j()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lr4/p01;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-static {v0}, Lr4/ej2;->j7(Lr4/ej2;)Lr4/im0;

    move-result-object v0

    iget v0, v0, Lr4/im0;->d:I

    sget-object v1, Lr4/rz;->B3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-static {v0, p1}, Lr4/ej2;->k7(Lr4/ej2;Lr4/p01;)La3/s;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Lr4/p01;->l()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_2

    const/16 v2, 0x9

    goto :goto_0

    :cond_2
    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Lr4/p01;->m()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lr4/p01;->k()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, La3/s;->a(Z)V

    iget-object v2, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-static {v2}, Lr4/ej2;->h7(Lr4/ej2;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-virtual {p1, v0}, Lr4/p01;->n(Lr4/bo;)V

    iget-object v0, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-static {v0}, Lr4/ej2;->h7(Lr4/ej2;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-static {v1}, Lr4/ej2;->l7(Lr4/ej2;)Lr4/yt;

    move-result-object v1

    iget v1, v1, Lr4/yt;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-static {v0}, Lr4/ej2;->h7(Lr4/ej2;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-static {v1}, Lr4/ej2;->l7(Lr4/ej2;)Lr4/yt;

    move-result-object v1

    iget v1, v1, Lr4/yt;->q:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v0, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-static {v0}, Lr4/ej2;->i7(Lr4/ej2;)Lr4/fk2;

    move-result-object v0

    new-instance v1, Lr4/d11;

    iget-object v2, p0, Lr4/dj2;->a:Lr4/ej2;

    invoke-direct {v1, p1, v2}, Lr4/d11;-><init>(Lr4/p01;Lr4/vv;)V

    invoke-virtual {v0, v1}, Lr4/fk2;->z(Lr4/do;)V

    invoke-virtual {p1}, Lr4/i31;->a()V

    return-void
.end method

.method public final zza()V
    .locals 2

    iget-object v0, p0, Lr4/dj2;->a:Lr4/ej2;

    const/4 v1, 0x0

    iput-object v1, v0, Lr4/ej2;->v:Lr4/p01;

    return-void
.end method
