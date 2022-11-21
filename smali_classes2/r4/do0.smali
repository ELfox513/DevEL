.class public final Lr4/do0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/po0;

.field public final c:Landroid/view/ViewGroup;

.field public d:Lr4/co0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lr4/cs0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lr4/do0;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/do0;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lr4/do0;->b:Lr4/po0;

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/do0;->d:Lr4/co0;

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/do0;->d:Lr4/co0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lr4/co0;->v(IIII)V

    :cond_0
    return-void
.end method

.method public final b(IIIIIZLr4/oo0;)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lr4/do0;->d:Lr4/co0;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lr4/do0;->b:Lr4/po0;

    invoke-interface {v1}, Lr4/po0;->m()Lr4/e00;

    move-result-object v1

    invoke-virtual {v1}, Lr4/e00;->c()Lr4/h00;

    move-result-object v1

    iget-object v2, v0, Lr4/do0;->b:Lr4/po0;

    invoke-interface {v2}, Lr4/po0;->j()Lr4/d00;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "vpr2"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lr4/yz;->a(Lr4/h00;Lr4/d00;[Ljava/lang/String;)Z

    new-instance v1, Lr4/co0;

    iget-object v7, v0, Lr4/do0;->a:Landroid/content/Context;

    iget-object v8, v0, Lr4/do0;->b:Lr4/po0;

    invoke-interface {v8}, Lr4/po0;->m()Lr4/e00;

    move-result-object v2

    invoke-virtual {v2}, Lr4/e00;->c()Lr4/h00;

    move-result-object v11

    move-object v6, v1

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lr4/co0;-><init>(Landroid/content/Context;Lr4/po0;IZLr4/h00;Lr4/oo0;)V

    iput-object v1, v0, Lr4/do0;->d:Lr4/co0;

    iget-object v2, v0, Lr4/do0;->c:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lr4/do0;->d:Lr4/co0;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    invoke-virtual {v1, p1, p2, v4, v6}, Lr4/co0;->v(IIII)V

    iget-object v1, v0, Lr4/do0;->b:Lr4/po0;

    invoke-interface {v1, v5}, Lr4/po0;->n0(Z)V

    return-void
.end method

.method public final c()Lr4/co0;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/do0;->d:Lr4/co0;

    return-object v0
.end method

.method public final d()V
    .locals 1

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/do0;->d:Lr4/co0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/co0;->z()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/do0;->d:Lr4/co0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/co0;->n()V

    iget-object v0, p0, Lr4/do0;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lr4/do0;->d:Lr4/co0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/do0;->d:Lr4/co0;

    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 1

    const-string v0, "setPlayerBackgroundColor must be called from the UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/do0;->d:Lr4/co0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/co0;->u(I)V

    :cond_0
    return-void
.end method
