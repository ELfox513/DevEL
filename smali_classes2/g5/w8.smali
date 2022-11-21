.class public final Lg5/w8;
.super Lg5/f4;
.source "SourceFile"


# instance fields
.field public final c:Lg5/v8;

.field public d:Lg5/g3;

.field public volatile e:Ljava/lang/Boolean;

.field public final f:Lg5/n;

.field public final g:Lg5/n9;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lg5/n;


# direct methods
.method public constructor <init>(Lg5/b5;)V
    .locals 2

    invoke-direct {p0, p1}, Lg5/f4;-><init>(Lg5/b5;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg5/w8;->h:Ljava/util/List;

    new-instance v0, Lg5/n9;

    invoke-virtual {p1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lg5/n9;-><init>(Lc4/f;)V

    iput-object v0, p0, Lg5/w8;->g:Lg5/n9;

    new-instance v0, Lg5/v8;

    invoke-direct {v0, p0}, Lg5/v8;-><init>(Lg5/w8;)V

    iput-object v0, p0, Lg5/w8;->c:Lg5/v8;

    new-instance v0, Lg5/f8;

    invoke-direct {v0, p0, p1}, Lg5/f8;-><init>(Lg5/w8;Lg5/x5;)V

    iput-object v0, p0, Lg5/w8;->f:Lg5/n;

    new-instance v0, Lg5/i8;

    invoke-direct {v0, p0, p1}, Lg5/i8;-><init>(Lg5/w8;Lg5/x5;)V

    iput-object v0, p0, Lg5/w8;->i:Lg5/n;

    return-void
.end method

.method public static bridge synthetic C(Lg5/w8;)Lg5/g3;
    .locals 0

    iget-object p0, p0, Lg5/w8;->d:Lg5/g3;

    return-object p0
.end method

.method public static bridge synthetic D(Lg5/w8;)Lg5/v8;
    .locals 0

    iget-object p0, p0, Lg5/w8;->c:Lg5/v8;

    return-object p0
.end method

.method public static bridge synthetic H(Lg5/w8;Lg5/g3;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lg5/w8;->d:Lg5/g3;

    return-void
.end method

.method public static bridge synthetic I(Lg5/w8;)V
    .locals 0

    invoke-virtual {p0}, Lg5/w8;->y()V

    return-void
.end method

.method public static bridge synthetic J(Lg5/w8;Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/w8;->d:Lg5/g3;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lg5/w8;->d:Lg5/g3;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/w8;->M()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic K(Lg5/w8;)V
    .locals 0

    invoke-virtual {p0}, Lg5/w8;->z()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Runnable;)V
    .locals 5

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/w8;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lg5/w8;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lg5/w8;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg5/w8;->i:Lg5/n;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lg5/n;->d(J)V

    invoke-virtual {p0}, Lg5/w8;->M()V

    return-void
.end method

.method public final B()Z
    .locals 1

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->G()Lg5/b;

    const/4 v0, 0x1

    return v0
.end method

.method public final E()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lg5/w8;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final L()V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->x()Lg5/j3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/j3;->m()Z

    new-instance v1, Lg5/c8;

    invoke-direct {v1, p0, v0}, Lg5/c8;-><init>(Lg5/w8;Lg5/pa;)V

    invoke-virtual {p0, v1}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final M()V
    .locals 5

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    invoke-virtual {p0}, Lg5/w8;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg5/w8;->w()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->B()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->G()Lg5/b;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->G()Lg5/b;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lg5/w8;->c:Lg5/v8;

    invoke-virtual {v1, v0}, Lg5/v8;->b(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lg5/w8;->c:Lg5/v8;

    invoke-virtual {v0}, Lg5/v8;->c()V

    return-void
.end method

.method public final N()V
    .locals 3

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/w8;->c:Lg5/v8;

    invoke-virtual {v0}, Lg5/v8;->d()V

    :try_start_0
    invoke-static {}, Lb4/a;->b()Lb4/a;

    move-result-object v0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lg5/w8;->c:Lg5/v8;

    invoke-virtual {v0, v1, v2}, Lb4/a;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg5/w8;->d:Lg5/g3;

    return-void
.end method

.method public final R(Lb5/i1;)V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v0

    new-instance v1, Lg5/b8;

    invoke-direct {v1, p0, v0, p1}, Lg5/b8;-><init>(Lg5/w8;Lg5/pa;Lb5/i1;)V

    invoke-virtual {p0, v1}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final S(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v0

    new-instance v1, Lg5/a8;

    invoke-direct {v1, p0, p1, v0}, Lg5/a8;-><init>(Lg5/w8;Ljava/util/concurrent/atomic/AtomicReference;Lg5/pa;)V

    invoke-virtual {p0, v1}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final T(Lb5/i1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v5

    new-instance v0, Lg5/o8;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lg5/o8;-><init>(Lg5/w8;Ljava/lang/String;Ljava/lang/String;Lg5/pa;Lb5/i1;)V

    invoke-virtual {p0, v0}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final U(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lg5/c;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v6

    new-instance p2, Lg5/n8;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lg5/n8;-><init>(Lg5/w8;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg5/pa;)V

    invoke-virtual {p0, p2}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V(Lb5/i1;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v5

    new-instance v0, Lg5/x7;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lg5/x7;-><init>(Lg5/w8;Ljava/lang/String;Ljava/lang/String;Lg5/pa;ZLb5/i1;)V

    invoke-virtual {p0, v0}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lg5/ea;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v6

    new-instance p2, Lg5/p8;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lg5/p8;-><init>(Lg5/w8;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg5/pa;Z)V

    invoke-virtual {p0, p2}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j(Lg5/u;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    invoke-virtual {p0}, Lg5/w8;->B()Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->x()Lg5/j3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/j3;->q(Lg5/u;)Z

    move-result v5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v4

    new-instance v0, Lg5/l8;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lg5/l8;-><init>(Lg5/w8;ZLg5/pa;ZLg5/u;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Lb5/i1;Lg5/u;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {v0, v1}, Lg5/ia;->p0(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string p3, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p2, p3}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->K()Lg5/ia;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [B

    invoke-virtual {p2, p1, p3}, Lg5/ia;->A(Lb5/i1;[B)V

    return-void

    :cond_0
    new-instance v0, Lg5/g8;

    invoke-direct {v0, p0, p2, p3, p1}, Lg5/g8;-><init>(Lg5/w8;Lg5/u;Ljava/lang/String;Lb5/i1;)V

    invoke-virtual {p0, v0}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v0

    invoke-virtual {p0}, Lg5/w8;->B()Z

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->x()Lg5/j3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/j3;->l()V

    new-instance v1, Lg5/z7;

    invoke-direct {v1, p0, v0}, Lg5/z7;-><init>(Lg5/w8;Lg5/pa;)V

    invoke-virtual {p0, v1}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m(Lg5/g3;Ly3/a;Lg5/pa;)V
    .locals 10

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    invoke-virtual {p0}, Lg5/w8;->B()Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, 0x64

    :goto_0
    const/16 v4, 0x3e9

    if-ge v2, v4, :cond_6

    if-ne v3, v1, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->x()Lg5/j3;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg5/j3;->k(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz p2, :cond_1

    if-ge v4, v1, :cond_1

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly3/a;

    instance-of v8, v7, Lg5/u;

    if-eqz v8, :cond_2

    :try_start_0
    check-cast v7, Lg5/u;

    invoke-interface {p1, v7, p3}, Lg5/g3;->M3(Lg5/u;Lg5/pa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    iget-object v8, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->F()Lg5/q3;

    move-result-object v8

    invoke-virtual {v8}, Lg5/q3;->m()Lg5/o3;

    move-result-object v8

    const-string v9, "Failed to send event to the service"

    invoke-virtual {v8, v9, v7}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    instance-of v8, v7, Lg5/ea;

    if-eqz v8, :cond_3

    :try_start_1
    check-cast v7, Lg5/ea;

    invoke-interface {p1, v7, p3}, Lg5/g3;->N6(Lg5/ea;Lg5/pa;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    iget-object v8, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->F()Lg5/q3;

    move-result-object v8

    invoke-virtual {v8}, Lg5/q3;->m()Lg5/o3;

    move-result-object v8

    const-string v9, "Failed to send user property to the service"

    invoke-virtual {v8, v9, v7}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    instance-of v8, v7, Lg5/c;

    if-eqz v8, :cond_4

    :try_start_2
    check-cast v7, Lg5/c;

    invoke-interface {p1, v7, p3}, Lg5/g3;->a5(Lg5/c;Lg5/pa;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v7

    iget-object v8, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->F()Lg5/q3;

    move-result-object v8

    invoke-virtual {v8}, Lg5/q3;->m()Lg5/o3;

    move-result-object v8

    const-string v9, "Failed to send conditional user property to the service"

    invoke-virtual {v8, v9, v7}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->m()Lg5/o3;

    move-result-object v7

    const-string v8, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v7, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final n(Lg5/c;)V
    .locals 8

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->G()Lg5/b;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->x()Lg5/j3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/j3;->p(Lg5/c;)Z

    move-result v5

    new-instance v6, Lg5/c;

    invoke-direct {v6, p1}, Lg5/c;-><init>(Lg5/c;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v4

    new-instance v0, Lg5/m8;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lg5/m8;-><init>(Lg5/w8;ZLg5/pa;ZLg5/c;Lg5/c;)V

    invoke-virtual {p0, v0}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(Z)V
    .locals 1

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg5/w8;->B()Z

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->x()Lg5/j3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/j3;->l()V

    :cond_0
    invoke-virtual {p0}, Lg5/w8;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object p1

    new-instance v0, Lg5/k8;

    invoke-direct {v0, p0, p1}, Lg5/k8;-><init>(Lg5/w8;Lg5/pa;)V

    invoke-virtual {p0, v0}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final p(Lg5/p7;)V
    .locals 1

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    new-instance v0, Lg5/d8;

    invoke-direct {v0, p0, p1}, Lg5/d8;-><init>(Lg5/w8;Lg5/p7;)V

    invoke-virtual {p0, v0}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v0

    new-instance v1, Lg5/e8;

    invoke-direct {v1, p0, v0, p1}, Lg5/e8;-><init>(Lg5/w8;Lg5/pa;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v0

    new-instance v1, Lg5/j8;

    invoke-direct {v1, p0, v0}, Lg5/j8;-><init>(Lg5/w8;Lg5/pa;)V

    invoke-virtual {p0, v1}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s(Lg5/g3;)V
    .locals 0

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lg5/w8;->d:Lg5/g3;

    invoke-virtual {p0}, Lg5/w8;->z()V

    invoke-virtual {p0}, Lg5/w8;->y()V

    return-void
.end method

.method public final t(Lg5/ea;)V
    .locals 3

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    invoke-virtual {p0}, Lg5/w8;->B()Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->x()Lg5/j3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/j3;->r(Lg5/ea;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lg5/w8;->x(Z)Lg5/pa;

    move-result-object v1

    new-instance v2, Lg5/y7;

    invoke-direct {v2, p0, v1, v0, p1}, Lg5/y7;-><init>(Lg5/w8;Lg5/pa;ZLg5/ea;)V

    invoke-virtual {p0, v2}, Lg5/w8;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u()Z
    .locals 1

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/w8;->d:Lg5/g3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()Z
    .locals 4

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    invoke-virtual {p0}, Lg5/w8;->w()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    invoke-virtual {v0}, Lg5/ia;->o0()I

    move-result v0

    sget-object v2, Lg5/c3;->q0:Lg5/b3;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lg5/b3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public final w()Z
    .locals 6

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/w8;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    invoke-virtual {v0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "use_service"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->G()Lg5/b;

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->w()Lg5/h3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/h3;->j()I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_2
    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->q()Lg5/o3;

    move-result-object v4

    const-string v5, "Checking service availability"

    invoke-virtual {v4, v5}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->K()Lg5/ia;

    move-result-object v4

    const v5, 0xbdfcb8

    invoke-virtual {v4, v5}, Lg5/ia;->p0(I)I

    move-result v4

    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v0, 0x3

    if-eq v4, v0, :cond_5

    const/16 v0, 0x9

    if-eq v4, v0, :cond_4

    const/16 v0, 0x12

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->r()Lg5/o3;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Unexpected service status"

    invoke-virtual {v0, v4, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->r()Lg5/o3;

    move-result-object v0

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->r()Lg5/o3;

    move-result-object v0

    const-string v1, "Service invalid"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->r()Lg5/o3;

    move-result-object v0

    const-string v1, "Service disabled"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->l()Lg5/o3;

    move-result-object v4

    const-string v5, "Service container out of date"

    invoke-virtual {v4, v5}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->K()Lg5/ia;

    move-result-object v4

    invoke-virtual {v4}, Lg5/ia;->o0()I

    move-result v4

    const/16 v5, 0x4423

    if-ge v4, v5, :cond_7

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    move v3, v1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    const-string v4, "Service missing"

    invoke-virtual {v0, v4}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lg5/o3;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_4
    if-nez v3, :cond_b

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->B()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v1, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    invoke-virtual {v0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_5
    move v1, v3

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg5/w8;->e:Ljava/lang/Boolean;

    :cond_d
    iget-object v0, p0, Lg5/w8;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final x(Z)Lg5/pa;
    .locals 5

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->G()Lg5/b;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    iget-object v2, p1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->A()Lg5/g4;

    move-result-object v2

    iget-object v2, v2, Lg5/g4;->d:Lg5/d4;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->d:Lg5/d4;

    invoke-virtual {p1}, Lg5/d4;->a()Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v2, Lg5/g4;->x:Landroid/util/Pair;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lg5/h3;->l(Ljava/lang/String;)Lg5/pa;

    move-result-object p1

    return-object p1
.end method

.method public final y()V
    .locals 4

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    iget-object v1, p0, Lg5/w8;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lg5/w8;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->m()Lg5/o3;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg5/w8;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lg5/w8;->i:Lg5/n;

    invoke-virtual {v0}, Lg5/n;->b()V

    return-void
.end method

.method public final z()V
    .locals 3

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/w8;->g:Lg5/n9;

    invoke-virtual {v0}, Lg5/n9;->b()V

    iget-object v0, p0, Lg5/w8;->f:Lg5/n;

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    sget-object v1, Lg5/c3;->K:Lg5/b3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg5/b3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lg5/n;->d(J)V

    return-void
.end method
