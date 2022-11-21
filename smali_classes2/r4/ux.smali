.class public final Lr4/ux;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/cb0;

.field public final b:Lr4/xt;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lt2/v;

.field public final e:Lr4/zu;

.field public f:Lr4/gt;

.field public g:Lt2/c;

.field public h:[Lt2/g;

.field public i:Lu2/c;

.field public j:Lr4/vv;

.field public k:Lt2/w;

.field public l:Ljava/lang/String;

.field public final m:Landroid/view/ViewGroup;

.field public n:I

.field public o:Z

.field public p:Lt2/q;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 7

    sget-object v4, Lr4/xt;->a:Lr4/xt;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lr4/ux;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLr4/xt;Lr4/vv;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLr4/xt;Lr4/vv;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lr4/cb0;

    invoke-direct {p5}, Lr4/cb0;-><init>()V

    iput-object p5, p0, Lr4/ux;->a:Lr4/cb0;

    new-instance p5, Lt2/v;

    invoke-direct {p5}, Lt2/v;-><init>()V

    iput-object p5, p0, Lr4/ux;->d:Lt2/v;

    new-instance p5, Lr4/tx;

    invoke-direct {p5, p0}, Lr4/tx;-><init>(Lr4/ux;)V

    iput-object p5, p0, Lr4/ux;->e:Lr4/zu;

    iput-object p1, p0, Lr4/ux;->m:Landroid/view/ViewGroup;

    iput-object p4, p0, Lr4/ux;->b:Lr4/xt;

    const/4 p4, 0x0

    iput-object p4, p0, Lr4/ux;->j:Lr4/vv;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lr4/ux;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lr4/ux;->n:I

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_0
    new-instance p6, Lr4/gu;

    invoke-direct {p6, p4, p2}, Lr4/gu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p6, p3}, Lr4/gu;->a(Z)[Lt2/g;

    move-result-object p2

    iput-object p2, p0, Lr4/ux;->h:[Lt2/g;

    invoke-virtual {p6}, Lr4/gu;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lr4/ux;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    move-result-object p2

    iget-object p3, p0, Lr4/ux;->h:[Lt2/g;

    aget-object p3, p3, p5

    iget p5, p0, Lr4/ux;->n:I

    sget-object p6, Lt2/g;->q:Lt2/g;

    invoke-virtual {p3, p6}, Lt2/g;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-static {}, Lr4/yt;->b1()Lr4/yt;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p6, Lr4/yt;

    invoke-direct {p6, p4, p3}, Lr4/yt;-><init>(Landroid/content/Context;Lt2/g;)V

    invoke-static {p5}, Lr4/ux;->b(I)Z

    move-result p3

    iput-boolean p3, p6, Lr4/yt;->u:Z

    move-object p3, p6

    :goto_0
    const-string p4, "Ads by Google"

    invoke-virtual {p2, p1, p3, p4}, Lr4/vl0;->c(Landroid/view/ViewGroup;Lr4/yt;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    move-result-object p3

    new-instance p5, Lr4/yt;

    sget-object p6, Lt2/g;->i:Lt2/g;

    invoke-direct {p5, p4, p6}, Lr4/yt;-><init>(Landroid/content/Context;Lt2/g;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p5, p4, p2}, Lr4/vl0;->b(Landroid/view/ViewGroup;Lr4/yt;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;[Lt2/g;I)Lr4/yt;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    sget-object v3, Lt2/g;->q:Lt2/g;

    invoke-virtual {v2, v3}, Lt2/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lr4/yt;->b1()Lr4/yt;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lr4/yt;

    invoke-direct {v0, p0, p1}, Lr4/yt;-><init>(Landroid/content/Context;[Lt2/g;)V

    invoke-static {p2}, Lr4/ux;->b(I)Z

    move-result p0

    iput-boolean p0, v0, Lr4/yt;->u:Z

    return-object v0
.end method

.method public static b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Lr4/ux;)Lt2/v;
    .locals 0

    iget-object p0, p0, Lr4/ux;->d:Lt2/v;

    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/vv;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()Lt2/c;
    .locals 1

    iget-object v0, p0, Lr4/ux;->g:Lt2/c;

    return-object v0
.end method

.method public final f()Lt2/g;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/vv;->t()Lr4/yt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lr4/yt;->p:I

    iget v2, v0, Lr4/yt;->b:I

    iget-object v0, v0, Lr4/yt;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lt2/x;->a(IILjava/lang/String;)Lt2/g;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lr4/ux;->h:[Lt2/g;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()[Lt2/g;
    .locals 1

    iget-object v0, p0, Lr4/ux;->h:[Lt2/g;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr4/ux;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lr4/vv;->P()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/ux;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lr4/ux;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lu2/c;
    .locals 1

    iget-object v0, p0, Lr4/ux;->i:Lu2/c;

    return-object v0
.end method

.method public final j(Lr4/sx;)V
    .locals 10

    const-string v0, "#007 Could not call remote method."

    :try_start_0
    iget-object v1, p0, Lr4/ux;->j:Lr4/vv;

    if-nez v1, :cond_6

    iget-object v1, p0, Lr4/ux;->h:[Lt2/g;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lr4/ux;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lr4/ux;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lr4/ux;->h:[Lt2/g;

    iget v3, p0, Lr4/ux;->n:I

    invoke-static {v1, v2, v3}, Lr4/ux;->a(Landroid/content/Context;[Lt2/g;I)Lr4/yt;

    move-result-object v5

    const-string v2, "search_v2"

    iget-object v3, v5, Lr4/yt;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lr4/yu;->b()Lr4/wu;

    move-result-object v2

    iget-object v3, p0, Lr4/ux;->l:Ljava/lang/String;

    new-instance v4, Lr4/pu;

    invoke-direct {v4, v2, v1, v5, v3}, Lr4/pu;-><init>(Lr4/wu;Landroid/content/Context;Lr4/yt;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v8}, Lr4/xu;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/vv;

    goto :goto_0

    :cond_0
    invoke-static {}, Lr4/yu;->b()Lr4/wu;

    move-result-object v3

    iget-object v6, p0, Lr4/ux;->l:Ljava/lang/String;

    iget-object v7, p0, Lr4/ux;->a:Lr4/cb0;

    new-instance v9, Lr4/ou;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lr4/ou;-><init>(Lr4/wu;Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/fb0;)V

    invoke-virtual {v9, v1, v8}, Lr4/xu;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/vv;

    :goto_0
    iput-object v1, p0, Lr4/ux;->j:Lr4/vv;

    new-instance v2, Lr4/ot;

    iget-object v3, p0, Lr4/ux;->e:Lr4/zu;

    invoke-direct {v2, v3}, Lr4/ot;-><init>(Lt2/c;)V

    invoke-interface {v1, v2}, Lr4/vv;->S1(Lr4/iv;)V

    iget-object v1, p0, Lr4/ux;->f:Lr4/gt;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lr4/ux;->j:Lr4/vv;

    new-instance v3, Lr4/ht;

    invoke-direct {v3, v1}, Lr4/ht;-><init>(Lr4/gt;)V

    invoke-interface {v2, v3}, Lr4/vv;->B6(Lr4/ev;)V

    :cond_1
    iget-object v1, p0, Lr4/ux;->i:Lu2/c;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lr4/ux;->j:Lr4/vv;

    new-instance v3, Lr4/bn;

    invoke-direct {v3, v1}, Lr4/bn;-><init>(Lu2/c;)V

    invoke-interface {v2, v3}, Lr4/vv;->v4(Lr4/cw;)V

    :cond_2
    iget-object v1, p0, Lr4/ux;->k:Lt2/w;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lr4/ux;->j:Lr4/vv;

    new-instance v3, Lr4/xy;

    invoke-direct {v3, v1}, Lr4/xy;-><init>(Lt2/w;)V

    invoke-interface {v2, v3}, Lr4/vv;->Z1(Lr4/xy;)V

    :cond_3
    iget-object v1, p0, Lr4/ux;->j:Lr4/vv;

    new-instance v2, Lr4/ry;

    iget-object v3, p0, Lr4/ux;->p:Lt2/q;

    invoke-direct {v2, v3}, Lr4/ry;-><init>(Lt2/q;)V

    invoke-interface {v1, v2}, Lr4/vv;->X4(Lr4/ex;)V

    iget-object v1, p0, Lr4/ux;->j:Lr4/vv;

    iget-boolean v2, p0, Lr4/ux;->o:Z

    invoke-interface {v1, v2}, Lr4/vv;->J4(Z)V

    iget-object v1, p0, Lr4/ux;->j:Lr4/vv;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-interface {v1}, Lr4/vv;->j()Lf4/a;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lr4/ux;->m:Landroid/view/ViewGroup;

    invoke-static {v1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v0, v1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iget-object v1, p0, Lr4/ux;->j:Lr4/vv;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    iget-object v2, p0, Lr4/ux;->b:Lr4/xt;

    iget-object v3, p0, Lr4/ux;->m:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lr4/xt;->a(Landroid/content/Context;Lr4/sx;)Lr4/tt;

    move-result-object v2

    invoke-interface {v1, v2}, Lr4/vv;->w5(Lr4/tt;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lr4/ux;->a:Lr4/cb0;

    invoke-virtual {p1}, Lr4/sx;->l()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr4/cb0;->g7(Ljava/util/Map;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    return-void

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/vv;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/vv;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m(Lt2/c;)V
    .locals 1

    iput-object p1, p0, Lr4/ux;->g:Lt2/c;

    iget-object v0, p0, Lr4/ux;->e:Lr4/zu;

    invoke-virtual {v0, p1}, Lr4/zu;->u(Lt2/c;)V

    return-void
.end method

.method public final n(Lr4/gt;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lr4/ux;->f:Lr4/gt;

    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lr4/ht;

    invoke-direct {v1, p1}, Lr4/ht;-><init>(Lr4/gt;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lr4/vv;->B6(Lr4/ev;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs o([Lt2/g;)V
    .locals 1

    iget-object v0, p0, Lr4/ux;->h:[Lt2/g;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lr4/ux;->p([Lt2/g;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs p([Lt2/g;)V
    .locals 3

    iput-object p1, p0, Lr4/ux;->h:[Lt2/g;

    :try_start_0
    iget-object p1, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lr4/ux;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lr4/ux;->h:[Lt2/g;

    iget v2, p0, Lr4/ux;->n:I

    invoke-static {v0, v1, v2}, Lr4/ux;->a(Landroid/content/Context;[Lt2/g;I)Lr4/yt;

    move-result-object v0

    invoke-interface {p1, v0}, Lr4/vv;->S0(Lr4/yt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lr4/ux;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/ux;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lr4/ux;->l:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Lu2/c;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lr4/ux;->i:Lu2/c;

    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lr4/bn;

    invoke-direct {v1, p1}, Lr4/bn;-><init>(Lu2/c;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lr4/vv;->v4(Lr4/cw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s(Z)V
    .locals 1

    iput-boolean p1, p0, Lr4/ux;->o:Z

    :try_start_0
    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr4/vv;->J4(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t()Lt2/u;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lr4/vv;->z()Lr4/hx;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lt2/u;->d(Lr4/hx;)Lt2/u;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lt2/q;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lr4/ux;->p:Lt2/q;

    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/ry;

    invoke-direct {v1, p1}, Lr4/ry;-><init>(Lt2/q;)V

    invoke-interface {v0, v1}, Lr4/vv;->X4(Lr4/ex;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v()Lt2/q;
    .locals 1

    iget-object v0, p0, Lr4/ux;->p:Lt2/q;

    return-object v0
.end method

.method public final w()Lt2/v;
    .locals 1

    iget-object v0, p0, Lr4/ux;->d:Lt2/v;

    return-object v0
.end method

.method public final x()Lr4/lx;
    .locals 3

    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lr4/vv;->w0()Lr4/lx;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public final y(Lt2/w;)V
    .locals 2

    iput-object p1, p0, Lr4/ux;->k:Lt2/w;

    :try_start_0
    iget-object v0, p0, Lr4/ux;->j:Lr4/vv;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/xy;

    invoke-direct {v1, p1}, Lr4/xy;-><init>(Lt2/w;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lr4/vv;->Z1(Lr4/xy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final z()Lt2/w;
    .locals 1

    iget-object v0, p0, Lr4/ux;->k:Lt2/w;

    return-object v0
.end method
