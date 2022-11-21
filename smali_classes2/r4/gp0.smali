.class public final Lr4/gp0;
.super Lr4/vn0;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lr4/eo0;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:F

.field public final d:Lr4/po0;

.field public final k:Lr4/qo0;

.field public final p:Z

.field public final q:Lr4/oo0;

.field public r:Lr4/un0;

.field public s:Landroid/view/Surface;

.field public t:Lr4/fo0;

.field public u:Ljava/lang/String;

.field public v:[Ljava/lang/String;

.field public w:Z

.field public x:I

.field public y:Lr4/mo0;

.field public final z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/qo0;Lr4/po0;ZZLr4/oo0;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/vn0;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lr4/gp0;->x:I

    iput-boolean p5, p0, Lr4/gp0;->p:Z

    iput-object p3, p0, Lr4/gp0;->d:Lr4/po0;

    iput-object p2, p0, Lr4/gp0;->k:Lr4/qo0;

    iput-boolean p4, p0, Lr4/gp0;->z:Z

    iput-object p6, p0, Lr4/gp0;->q:Lr4/oo0;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p2, p0}, Lr4/qo0;->a(Lr4/vn0;)V

    return-void
.end method

.method public static Y(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fo0;->F(I)V

    :cond_0
    return-void
.end method

.method public final B(I)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fo0;->G(I)V

    :cond_0
    return-void
.end method

.method public final C(I)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fo0;->Z(I)V

    :cond_0
    return-void
.end method

.method public final D()Lr4/fo0;
    .locals 4

    iget-object v0, p0, Lr4/gp0;->q:Lr4/oo0;

    iget-boolean v0, v0, Lr4/oo0;->m:Z

    if-eqz v0, :cond_0

    new-instance v0, Lr4/sr0;

    iget-object v1, p0, Lr4/gp0;->d:Lr4/po0;

    invoke-interface {v1}, Lr4/po0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lr4/gp0;->q:Lr4/oo0;

    iget-object v3, p0, Lr4/gp0;->d:Lr4/po0;

    invoke-direct {v0, v1, v2, v3}, Lr4/sr0;-><init>(Landroid/content/Context;Lr4/oo0;Lr4/po0;)V

    return-object v0

    :cond_0
    new-instance v0, Lr4/xp0;

    iget-object v1, p0, Lr4/gp0;->d:Lr4/po0;

    invoke-interface {v1}, Lr4/po0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lr4/gp0;->q:Lr4/oo0;

    iget-object v3, p0, Lr4/gp0;->d:Lr4/po0;

    invoke-direct {v0, v1, v2, v3}, Lr4/xp0;-><init>(Landroid/content/Context;Lr4/oo0;Lr4/po0;)V

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v0

    iget-object v1, p0, Lr4/gp0;->d:Lr4/po0;

    invoke-interface {v1}, Lr4/po0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lr4/gp0;->d:Lr4/po0;

    invoke-interface {v2}, Lr4/po0;->n()Lr4/im0;

    move-result-object v2

    iget-object v2, v2, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb3/k2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/un0;->i()V

    :cond_0
    return-void
.end method

.method public final synthetic G(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter exception"

    invoke-interface {v0, v1, p1}, Lr4/un0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic H(ZJ)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->d:Lr4/po0;

    invoke-interface {v0, p1, p2, p3}, Lr4/po0;->e1(ZJ)V

    return-void
.end method

.method public final synthetic I(I)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr4/un0;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public final synthetic J()V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/un0;->f()V

    :cond_0
    return-void
.end method

.method public final synthetic K(II)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lr4/un0;->d(II)V

    :cond_0
    return-void
.end method

.method public final synthetic L()V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/un0;->zza()V

    :cond_0
    return-void
.end method

.method public final synthetic M()V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/un0;->e()V

    :cond_0
    return-void
.end method

.method public final synthetic N()V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/un0;->b()V

    :cond_0
    return-void
.end method

.method public final synthetic O(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter error"

    invoke-interface {v0, v1, p1}, Lr4/un0;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic P()V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/un0;->c()V

    :cond_0
    return-void
.end method

.method public final synthetic Q()V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->r:Lr4/un0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/un0;->a()V

    :cond_0
    return-void
.end method

.method public final R()Z
    .locals 1

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fo0;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lr4/gp0;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final S()Z
    .locals 2

    invoke-virtual {p0}, Lr4/gp0;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lr4/gp0;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final T(Z)V
    .locals 6

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lr4/gp0;->u:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lr4/gp0;->s:Landroid/view/Surface;

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lr4/gp0;->R()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {p1}, Lr4/fo0;->X()V

    invoke-virtual {p0}, Lr4/gp0;->U()V

    goto :goto_1

    :cond_3
    const-string p1, "No valid ExoPlayerAdapter exists when switch source."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lr4/gp0;->u:Ljava/lang/String;

    const-string v0, "cache:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object p1, p0, Lr4/gp0;->d:Lr4/po0;

    iget-object v1, p0, Lr4/gp0;->u:Ljava/lang/String;

    invoke-interface {p1, v1}, Lr4/po0;->c0(Ljava/lang/String;)Lr4/qq0;

    move-result-object p1

    instance-of v1, p1, Lr4/zq0;

    if-eqz v1, :cond_6

    check-cast p1, Lr4/zq0;

    invoke-virtual {p1}, Lr4/zq0;->t()Lr4/fo0;

    move-result-object p1

    iput-object p1, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {p1}, Lr4/fo0;->A()Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string p1, "Precached video player has been released."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_6
    instance-of v1, p1, Lr4/wq0;

    if-eqz v1, :cond_8

    check-cast p1, Lr4/wq0;

    invoke-virtual {p0}, Lr4/gp0;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lr4/wq0;->v()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lr4/wq0;->u()Z

    move-result v3

    invoke-virtual {p1}, Lr4/wq0;->t()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "Stream cache URL is null."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lr4/gp0;->D()Lr4/fo0;

    move-result-object v4

    iput-object v4, p0, Lr4/gp0;->t:Lr4/fo0;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {v4, v5, v1, v2, v3}, Lr4/fo0;->S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lr4/gp0;->u:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Stream cache miss: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p0}, Lr4/gp0;->D()Lr4/fo0;

    move-result-object p1

    iput-object p1, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {p0}, Lr4/gp0;->E()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lr4/gp0;->v:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lr4/gp0;->v:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_b

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v2, v1, p1}, Lr4/fo0;->R([Landroid/net/Uri;Ljava/lang/String;)V

    :goto_4
    iget-object p1, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {p1, p0}, Lr4/fo0;->T(Lr4/eo0;)V

    iget-object p1, p0, Lr4/gp0;->s:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0}, Lr4/gp0;->V(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {p1}, Lr4/fo0;->A()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {p1}, Lr4/fo0;->B()I

    move-result p1

    iput p1, p0, Lr4/gp0;->x:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Lr4/gp0;->X()V

    :cond_c
    :goto_5
    return-void
.end method

.method public final U()V
    .locals 3

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lr4/gp0;->V(Landroid/view/Surface;Z)V

    iget-object v2, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lr4/fo0;->T(Lr4/eo0;)V

    iget-object v2, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v2}, Lr4/fo0;->U()V

    iput-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    :cond_0
    iput v1, p0, Lr4/gp0;->x:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/gp0;->w:Z

    iput-boolean v0, p0, Lr4/gp0;->A:Z

    iput-boolean v0, p0, Lr4/gp0;->B:Z

    :cond_1
    return-void
.end method

.method public final V(Landroid/view/Surface;Z)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lr4/fo0;->V(Landroid/view/Surface;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Trying to set surface before player is initialized."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final W(FZ)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lr4/fo0;->W(FZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Trying to set volume before player is initialized."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final X()V
    .locals 2

    iget-boolean v0, p0, Lr4/gp0;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/gp0;->A:Z

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/uo0;

    invoke-direct {v1, p0}, Lr4/uo0;-><init>(Lr4/gp0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lr4/gp0;->n()V

    iget-object v0, p0, Lr4/gp0;->k:Lr4/qo0;

    invoke-virtual {v0}, Lr4/qo0;->b()V

    iget-boolean v0, p0, Lr4/gp0;->B:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lr4/gp0;->k()V

    :cond_1
    return-void
.end method

.method public final Z()V
    .locals 2

    iget v0, p0, Lr4/gp0;->C:I

    iget v1, p0, Lr4/gp0;->D:I

    invoke-virtual {p0, v0, v1}, Lr4/gp0;->a0(II)V

    return-void
.end method

.method public final a(ZJ)V
    .locals 2

    iget-object v0, p0, Lr4/gp0;->d:Lr4/po0;

    if-eqz v0, :cond_0

    sget-object v0, Lr4/qm0;->e:Lr4/i83;

    new-instance v1, Lr4/fp0;

    invoke-direct {v1, p0, p1, p2, p3}, Lr4/fp0;-><init>(Lr4/gp0;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a0(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget p2, p0, Lr4/gp0;->G:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    iput p1, p0, Lr4/gp0;->G:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final b(II)V
    .locals 0

    iput p1, p0, Lr4/gp0;->C:I

    iput p2, p0, Lr4/gp0;->D:I

    invoke-virtual {p0}, Lr4/gp0;->Z()V

    return-void
.end method

.method public final b0()V
    .locals 2

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr4/fo0;->M(Z)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string p1, "onLoadException"

    invoke-static {p1, p2}, Lr4/gp0;->Y(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter exception: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    const-string v1, "AdExoPlayerView.onException"

    invoke-virtual {v0, p2, v1}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p2, Lb3/k2;->i:Lr4/c03;

    new-instance v0, Lr4/vo0;

    invoke-direct {v0, p0, p1}, Lr4/vo0;-><init>(Lr4/gp0;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c0()V
    .locals 2

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/fo0;->M(Z)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    invoke-static {p1, p2}, Lr4/gp0;->Y(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter error: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/gp0;->w:Z

    iget-object v0, p0, Lr4/gp0;->q:Lr4/oo0;

    iget-boolean v0, v0, Lr4/oo0;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lr4/gp0;->c0()V

    :cond_1
    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/yo0;

    invoke-direct {v1, p0, p1}, Lr4/yo0;-><init>(Lr4/gp0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p1

    const-string v0, "AdExoPlayerView.onError"

    invoke-virtual {p1, p2, v0}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fo0;->a0(I)V

    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/fo0;->b0(I)V

    :cond_0
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lr4/gp0;->z:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, " spherical"

    :goto_0
    const-string v1, "ExoPlayer/3"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public final h(Lr4/un0;)V
    .locals 0

    iput-object p1, p0, Lr4/gp0;->r:Lr4/un0;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr4/vn0;->z(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Lr4/gp0;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v0}, Lr4/fo0;->X()V

    invoke-virtual {p0}, Lr4/gp0;->U()V

    :cond_0
    iget-object v0, p0, Lr4/gp0;->k:Lr4/qo0;

    invoke-virtual {v0}, Lr4/qo0;->f()V

    iget-object v0, p0, Lr4/vn0;->b:Lr4/to0;

    invoke-virtual {v0}, Lr4/to0;->e()V

    iget-object v0, p0, Lr4/gp0;->k:Lr4/qo0;

    invoke-virtual {v0}, Lr4/qo0;->c()V

    return-void
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Lr4/gp0;->S()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/gp0;->q:Lr4/oo0;

    iget-boolean v0, v0, Lr4/oo0;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/gp0;->b0()V

    :cond_0
    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v0, v1}, Lr4/fo0;->E(Z)V

    iget-object v0, p0, Lr4/gp0;->k:Lr4/qo0;

    invoke-virtual {v0}, Lr4/qo0;->e()V

    iget-object v0, p0, Lr4/vn0;->b:Lr4/to0;

    invoke-virtual {v0}, Lr4/to0;->d()V

    iget-object v0, p0, Lr4/vn0;->a:Lr4/io0;

    invoke-virtual {v0}, Lr4/io0;->a()V

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/zo0;

    invoke-direct {v1, p0}, Lr4/zo0;-><init>(Lr4/gp0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iput-boolean v1, p0, Lr4/gp0;->B:Z

    return-void
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lr4/gp0;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/gp0;->q:Lr4/oo0;

    iget-boolean v0, v0, Lr4/oo0;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/gp0;->c0()V

    :cond_0
    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/fo0;->E(Z)V

    iget-object v0, p0, Lr4/gp0;->k:Lr4/qo0;

    invoke-virtual {v0}, Lr4/qo0;->f()V

    iget-object v0, p0, Lr4/vn0;->b:Lr4/to0;

    invoke-virtual {v0}, Lr4/to0;->e()V

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/ap0;

    invoke-direct {v1, p0}, Lr4/ap0;-><init>(Lr4/gp0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final m()I
    .locals 2

    invoke-virtual {p0}, Lr4/gp0;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v0}, Lr4/fo0;->H()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lr4/vn0;->b:Lr4/to0;

    invoke-virtual {v0}, Lr4/to0;->c()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lr4/gp0;->W(FZ)V

    return-void
.end method

.method public final o()I
    .locals 2

    invoke-virtual {p0}, Lr4/gp0;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v0}, Lr4/fo0;->C()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMeasure(II)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lr4/gp0;->G:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lr4/gp0;->y:Lr4/mo0;

    if-nez v2, :cond_1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v3, v2, v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    div-float/2addr v2, v0

    float-to-int p2, v2

    :cond_0
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    int-to-float p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v0, p0, Lr4/gp0;->y:Lr4/mo0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lr4/mo0;->b(II)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_9

    iget v0, p0, Lr4/gp0;->E:I

    if-lez v0, :cond_3

    if-ne v0, p1, :cond_4

    :cond_3
    iget v0, p0, Lr4/gp0;->F:I

    if-lez v0, :cond_8

    if-eq v0, p2, :cond_8

    :cond_4
    iget-boolean v0, p0, Lr4/gp0;->p:Z

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lr4/gp0;->R()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v0}, Lr4/fo0;->C()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v0}, Lr4/fo0;->D()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lr4/gp0;->W(FZ)V

    iget-object v1, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v1, v0}, Lr4/fo0;->E(Z)V

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v0}, Lr4/fo0;->C()J

    move-result-wide v0

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v2

    invoke-interface {v2}, Lc4/f;->a()J

    move-result-wide v2

    :cond_6
    invoke-virtual {p0}, Lr4/gp0;->R()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lr4/gp0;->t:Lr4/fo0;

    invoke-virtual {v4}, Lr4/fo0;->C()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_7

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v4

    invoke-interface {v4}, Lc4/f;->a()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xfa

    cmp-long v8, v4, v6

    if-lez v8, :cond_6

    :cond_7
    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/fo0;->E(Z)V

    invoke-virtual {p0}, Lr4/gp0;->n()V

    :cond_8
    :goto_0
    iput p1, p0, Lr4/gp0;->E:I

    iput p2, p0, Lr4/gp0;->F:I

    :cond_9
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-boolean v0, p0, Lr4/gp0;->z:Z

    if-eqz v0, :cond_1

    new-instance v0, Lr4/mo0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lr4/mo0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lr4/gp0;->y:Lr4/mo0;

    invoke-virtual {v0, p1, p2, p3}, Lr4/mo0;->a(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lr4/gp0;->y:Lr4/mo0;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lr4/gp0;->y:Lr4/mo0;

    invoke-virtual {v0}, Lr4/mo0;->d()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/gp0;->y:Lr4/mo0;

    invoke-virtual {v0}, Lr4/mo0;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/gp0;->y:Lr4/mo0;

    :cond_1
    :goto_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lr4/gp0;->s:Landroid/view/Surface;

    iget-object p1, p0, Lr4/gp0;->t:Lr4/fo0;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr4/gp0;->T(Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lr4/gp0;->V(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lr4/gp0;->q:Lr4/oo0;

    iget-boolean p1, p1, Lr4/oo0;->a:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lr4/gp0;->b0()V

    :cond_3
    :goto_1
    iget p1, p0, Lr4/gp0;->C:I

    if-eqz p1, :cond_5

    iget p1, p0, Lr4/gp0;->D:I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lr4/gp0;->Z()V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0, p2, p3}, Lr4/gp0;->a0(II)V

    :goto_3
    sget-object p1, Lb3/k2;->i:Lr4/c03;

    new-instance p2, Lr4/bp0;

    invoke-direct {p2, p0}, Lr4/bp0;-><init>(Lr4/gp0;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    invoke-virtual {p0}, Lr4/gp0;->l()V

    iget-object p1, p0, Lr4/gp0;->y:Lr4/mo0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lr4/mo0;->c()V

    iput-object v0, p0, Lr4/gp0;->y:Lr4/mo0;

    :cond_0
    iget-object p1, p0, Lr4/gp0;->t:Lr4/fo0;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lr4/gp0;->c0()V

    iget-object p1, p0, Lr4/gp0;->s:Landroid/view/Surface;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v0, p0, Lr4/gp0;->s:Landroid/view/Surface;

    invoke-virtual {p0, v0, v1}, Lr4/gp0;->V(Landroid/view/Surface;Z)V

    :cond_2
    sget-object p1, Lb3/k2;->i:Lr4/c03;

    new-instance v0, Lr4/dp0;

    invoke-direct {v0, p0}, Lr4/dp0;-><init>(Lr4/gp0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object p1, p0, Lr4/gp0;->y:Lr4/mo0;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lr4/mo0;->b(II)V

    :cond_0
    sget-object p1, Lb3/k2;->i:Lr4/c03;

    new-instance v0, Lr4/cp0;

    invoke-direct {v0, p0, p2, p3}, Lr4/cp0;-><init>(Lr4/gp0;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lr4/gp0;->k:Lr4/qo0;

    invoke-virtual {v0, p0}, Lr4/qo0;->d(Lr4/vn0;)V

    iget-object v0, p0, Lr4/vn0;->a:Lr4/io0;

    iget-object v1, p0, Lr4/gp0;->r:Lr4/un0;

    invoke-virtual {v0, p1, v1}, Lr4/io0;->b(Landroid/graphics/SurfaceTexture;Lr4/un0;)V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/ep0;

    invoke-direct {v1, p0, p1}, Lr4/ep0;-><init>(Lr4/gp0;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final p(I)V
    .locals 3

    invoke-virtual {p0}, Lr4/gp0;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lr4/fo0;->Y(J)V

    :cond_0
    return-void
.end method

.method public final q(FF)V
    .locals 1

    iget-object v0, p0, Lr4/gp0;->y:Lr4/mo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lr4/mo0;->e(FF)V

    :cond_0
    return-void
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lr4/gp0;->C:I

    return v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lr4/gp0;->D:I

    return v0
.end method

.method public final t()J
    .locals 2

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fo0;->I()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final u()J
    .locals 2

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fo0;->J()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final v()J
    .locals 2

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fo0;->K()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final w()I
    .locals 1

    iget-object v0, p0, Lr4/gp0;->t:Lr4/fo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/fo0;->L()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final x(I)V
    .locals 1

    iget v0, p0, Lr4/gp0;->x:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lr4/gp0;->x:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/gp0;->q:Lr4/oo0;

    iget-boolean p1, p1, Lr4/oo0;->a:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lr4/gp0;->c0()V

    :cond_1
    iget-object p1, p0, Lr4/gp0;->k:Lr4/qo0;

    invoke-virtual {p1}, Lr4/qo0;->f()V

    iget-object p1, p0, Lr4/vn0;->b:Lr4/to0;

    invoke-virtual {p1}, Lr4/to0;->e()V

    sget-object p1, Lb3/k2;->i:Lr4/c03;

    new-instance v0, Lr4/xo0;

    invoke-direct {v0, p0}, Lr4/xo0;-><init>(Lr4/gp0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lr4/gp0;->X()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 2

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/wo0;

    invoke-direct {v1, p0}, Lr4/wo0;-><init>(Lr4/gp0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final z(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    new-array p2, v0, [Ljava/lang/String;

    aput-object p1, p2, v1

    iput-object p2, p0, Lr4/gp0;->v:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lr4/gp0;->v:[Ljava/lang/String;

    :goto_0
    iget-object p2, p0, Lr4/gp0;->u:Ljava/lang/String;

    iget-object v2, p0, Lr4/gp0;->q:Lr4/oo0;

    iget-boolean v2, v2, Lr4/oo0;->n:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lr4/gp0;->x:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object p1, p0, Lr4/gp0;->u:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/gp0;->T(Z)V

    return-void
.end method
