.class public final Lr4/hu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/et3;
.implements Lr4/d04;
.implements Lr4/bx3;
.implements Lr4/hx3;
.implements Lr4/tu3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/et3;",
        "Lr4/d04;",
        "Lr4/bx3;",
        "Lr4/hx3;",
        "Lr4/tu3;"
    }
.end annotation


# static fields
.field public static final W:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final X:Lr4/e5;


# instance fields
.field public A:[Lr4/uu3;

.field public B:[Lr4/fu3;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Lr4/gu3;

.field public G:Lr4/z04;

.field public H:J

.field public I:Z

.field public J:I

.field public K:Z

.field public L:Z

.field public M:I

.field public N:J

.field public O:J

.field public P:J

.field public Q:Z

.field public R:I

.field public S:Z

.field public T:Z

.field public final U:Lr4/ww3;

.field public final V:Lr4/qw3;

.field public final a:Landroid/net/Uri;

.field public final b:Lr4/o8;

.field public final d:Lr4/ut2;

.field public final k:Lr4/ot3;

.field public final p:Lr4/po2;

.field public final q:Lr4/du3;

.field public final r:J

.field public final s:Lr4/kx3;

.field public final t:Lr4/xt3;

.field public final u:Lr4/ma;

.field public final v:Ljava/lang/Runnable;

.field public final w:Ljava/lang/Runnable;

.field public final x:Landroid/os/Handler;

.field public y:Lr4/dt3;

.field public z:Lr4/v8;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lr4/hu3;->W:Ljava/util/Map;

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    const-string v1, "icy"

    invoke-virtual {v0, v1}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object v0

    sput-object v0, Lr4/hu3;->X:Lr4/e5;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lr4/o8;Lr4/xt3;Lr4/ut2;Lr4/po2;Lr4/ww3;Lr4/ot3;Lr4/du3;Lr4/qw3;Ljava/lang/String;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hu3;->a:Landroid/net/Uri;

    iput-object p2, p0, Lr4/hu3;->b:Lr4/o8;

    iput-object p4, p0, Lr4/hu3;->d:Lr4/ut2;

    iput-object p5, p0, Lr4/hu3;->p:Lr4/po2;

    iput-object p6, p0, Lr4/hu3;->U:Lr4/ww3;

    iput-object p7, p0, Lr4/hu3;->k:Lr4/ot3;

    iput-object p8, p0, Lr4/hu3;->q:Lr4/du3;

    iput-object p9, p0, Lr4/hu3;->V:Lr4/qw3;

    int-to-long p1, p11

    iput-wide p1, p0, Lr4/hu3;->r:J

    new-instance p1, Lr4/kx3;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lr4/kx3;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lr4/hu3;->s:Lr4/kx3;

    iput-object p3, p0, Lr4/hu3;->t:Lr4/xt3;

    new-instance p1, Lr4/ma;

    sget-object p2, Lr4/ka;->a:Lr4/ka;

    invoke-direct {p1, p2}, Lr4/ma;-><init>(Lr4/ka;)V

    iput-object p1, p0, Lr4/hu3;->u:Lr4/ma;

    new-instance p1, Lr4/yt3;

    invoke-direct {p1, p0}, Lr4/yt3;-><init>(Lr4/hu3;)V

    iput-object p1, p0, Lr4/hu3;->v:Ljava/lang/Runnable;

    new-instance p1, Lr4/zt3;

    invoke-direct {p1, p0}, Lr4/zt3;-><init>(Lr4/hu3;)V

    iput-object p1, p0, Lr4/hu3;->w:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-static {p1}, Lr4/lc;->M(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lr4/hu3;->x:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lr4/fu3;

    iput-object p2, p0, Lr4/hu3;->B:[Lr4/fu3;

    new-array p1, p1, [Lr4/uu3;

    iput-object p1, p0, Lr4/hu3;->A:[Lr4/uu3;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/hu3;->P:J

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lr4/hu3;->N:J

    iput-wide p1, p0, Lr4/hu3;->H:J

    const/4 p1, 0x1

    iput p1, p0, Lr4/hu3;->J:I

    return-void
.end method

.method public static synthetic M()Ljava/util/Map;
    .locals 1

    sget-object v0, Lr4/hu3;->W:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic N()Lr4/e5;
    .locals 1

    sget-object v0, Lr4/hu3;->X:Lr4/e5;

    return-object v0
.end method

.method public static synthetic O(Lr4/hu3;)J
    .locals 2

    iget-wide v0, p0, Lr4/hu3;->r:J

    return-wide v0
.end method

.method public static synthetic P(Lr4/hu3;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lr4/hu3;->w:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic Q(Lr4/hu3;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lr4/hu3;->x:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic R(Lr4/hu3;Lr4/v8;)Lr4/v8;
    .locals 0

    iput-object p1, p0, Lr4/hu3;->z:Lr4/v8;

    return-object p1
.end method

.method public static synthetic S(Lr4/hu3;)Lr4/v8;
    .locals 0

    iget-object p0, p0, Lr4/hu3;->z:Lr4/v8;

    return-object p0
.end method

.method public static synthetic v(Lr4/hu3;)J
    .locals 2

    invoke-virtual {p0}, Lr4/hu3;->J()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final A(I)V
    .locals 10

    invoke-virtual {p0}, Lr4/hu3;->L()V

    iget-object v0, p0, Lr4/hu3;->F:Lr4/gu3;

    iget-object v1, v0, Lr4/gu3;->d:[Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, Lr4/gu3;->a:Lr4/j44;

    invoke-virtual {v0, p1}, Lr4/j44;->a(I)Lr4/h24;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lr4/h24;->a(I)Lr4/e5;

    move-result-object v5

    iget-object v3, p0, Lr4/hu3;->k:Lr4/ot3;

    iget-object v0, v5, Lr4/e5;->l:Ljava/lang/String;

    invoke-static {v0}, Lr4/kb;->f(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lr4/hu3;->O:J

    invoke-virtual/range {v3 .. v9}, Lr4/ot3;->l(ILr4/e5;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public final B(I)V
    .locals 4

    invoke-virtual {p0}, Lr4/hu3;->L()V

    iget-object v0, p0, Lr4/hu3;->F:Lr4/gu3;

    iget-object v0, v0, Lr4/gu3;->b:[Z

    iget-boolean v1, p0, Lr4/hu3;->Q:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/uu3;->C(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lr4/hu3;->P:J

    iput-boolean v0, p0, Lr4/hu3;->Q:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/hu3;->L:Z

    iput-wide v1, p0, Lr4/hu3;->O:J

    iput v0, p0, Lr4/hu3;->R:I

    iget-object p1, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, Lr4/uu3;->t(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lr4/hu3;->y:Lr4/dt3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lr4/wu3;->j(Lr4/xu3;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final C()Z
    .locals 1

    iget-boolean v0, p0, Lr4/hu3;->L:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr4/hu3;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final D(Lr4/fu3;)Lr4/d14;
    .locals 8

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lr4/hu3;->B:[Lr4/fu3;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lr4/fu3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lr4/hu3;->V:Lr4/qw3;

    iget-object v1, p0, Lr4/hu3;->x:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lr4/hu3;->d:Lr4/ut2;

    iget-object v6, p0, Lr4/hu3;->p:Lr4/po2;

    new-instance v1, Lr4/uu3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lr4/uu3;-><init>(Lr4/qw3;Landroid/os/Looper;Lr4/ut2;Lr4/po2;[B)V

    invoke-virtual {v1, p0}, Lr4/uu3;->J(Lr4/tu3;)V

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lr4/hu3;->B:[Lr4/fu3;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lr4/fu3;

    aput-object p1, v3, v0

    invoke-static {v3}, Lr4/lc;->J([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lr4/fu3;

    iput-object p1, p0, Lr4/hu3;->B:[Lr4/fu3;

    iget-object p1, p0, Lr4/hu3;->A:[Lr4/uu3;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lr4/uu3;

    aput-object v1, p1, v0

    invoke-static {p1}, Lr4/lc;->J([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lr4/uu3;

    iput-object p1, p0, Lr4/hu3;->A:[Lr4/uu3;

    return-object v1
.end method

.method public final E()V
    .locals 4

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lr4/uu3;->s()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/hu3;->t:Lr4/xt3;

    invoke-interface {v0}, Lr4/xt3;->a()V

    return-void
.end method

.method public final F()V
    .locals 11

    iget-boolean v0, p0, Lr4/hu3;->T:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lr4/hu3;->D:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lr4/hu3;->C:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lr4/hu3;->G:Lr4/z04;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lr4/uu3;->z()Lr4/e5;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lr4/hu3;->u:Lr4/ma;

    invoke-virtual {v0}, Lr4/ma;->b()Z

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v0, v0

    new-array v1, v0, [Lr4/h24;

    new-array v3, v0, [Z

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v0, :cond_9

    iget-object v6, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lr4/uu3;->z()Lr4/e5;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lr4/e5;->l:Ljava/lang/String;

    invoke-static {v7}, Lr4/kb;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Lr4/kb;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    aput-boolean v7, v3, v4

    iget-boolean v9, p0, Lr4/hu3;->E:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lr4/hu3;->E:Z

    iget-object v7, p0, Lr4/hu3;->z:Lr4/v8;

    if-eqz v7, :cond_8

    if-nez v8, :cond_5

    iget-object v9, p0, Lr4/hu3;->B:[Lr4/fu3;

    aget-object v9, v9, v4

    iget-boolean v9, v9, Lr4/fu3;->b:Z

    if-eqz v9, :cond_7

    :cond_5
    iget-object v9, v6, Lr4/e5;->j:Lr4/j8;

    if-nez v9, :cond_6

    new-instance v9, Lr4/j8;

    new-array v10, v5, [Lr4/i8;

    aput-object v7, v10, v2

    invoke-direct {v9, v10}, Lr4/j8;-><init>([Lr4/i8;)V

    goto :goto_4

    :cond_6
    new-array v10, v5, [Lr4/i8;

    aput-object v7, v10, v2

    invoke-virtual {v9, v10}, Lr4/j8;->l([Lr4/i8;)Lr4/j8;

    move-result-object v9

    :goto_4
    invoke-virtual {v6}, Lr4/e5;->a()Lr4/c5;

    move-result-object v6

    invoke-virtual {v6, v9}, Lr4/c5;->l(Lr4/j8;)Lr4/c5;

    invoke-virtual {v6}, Lr4/c5;->I()Lr4/e5;

    move-result-object v6

    :cond_7
    if-eqz v8, :cond_8

    iget v8, v6, Lr4/e5;->f:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    iget v8, v6, Lr4/e5;->g:I

    if-ne v8, v9, :cond_8

    iget v8, v7, Lr4/v8;->a:I

    if-eq v8, v9, :cond_8

    invoke-virtual {v6}, Lr4/e5;->a()Lr4/c5;

    move-result-object v6

    iget v7, v7, Lr4/v8;->a:I

    invoke-virtual {v6, v7}, Lr4/c5;->i(I)Lr4/c5;

    invoke-virtual {v6}, Lr4/c5;->I()Lr4/e5;

    move-result-object v6

    :cond_8
    iget-object v7, p0, Lr4/hu3;->d:Lr4/ut2;

    invoke-interface {v7, v6}, Lr4/ut2;->a(Lr4/e5;)I

    move-result v7

    invoke-virtual {v6, v7}, Lr4/e5;->b(I)Lr4/e5;

    move-result-object v6

    new-instance v7, Lr4/h24;

    new-array v5, v5, [Lr4/e5;

    aput-object v6, v5, v2

    invoke-direct {v7, v5}, Lr4/h24;-><init>([Lr4/e5;)V

    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lr4/gu3;

    new-instance v2, Lr4/j44;

    invoke-direct {v2, v1}, Lr4/j44;-><init>([Lr4/h24;)V

    invoke-direct {v0, v2, v3}, Lr4/gu3;-><init>(Lr4/j44;[Z)V

    iput-object v0, p0, Lr4/hu3;->F:Lr4/gu3;

    iput-boolean v5, p0, Lr4/hu3;->D:Z

    iget-object v0, p0, Lr4/hu3;->y:Lr4/dt3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lr4/dt3;->h(Lr4/et3;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final G(Lr4/cu3;)V
    .locals 5

    iget-wide v0, p0, Lr4/hu3;->N:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {p1}, Lr4/cu3;->h(Lr4/cu3;)J

    move-result-wide v0

    iput-wide v0, p0, Lr4/hu3;->N:J

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 28

    move-object/from16 v7, p0

    new-instance v8, Lr4/cu3;

    iget-object v2, v7, Lr4/hu3;->a:Landroid/net/Uri;

    iget-object v3, v7, Lr4/hu3;->b:Lr4/o8;

    iget-object v4, v7, Lr4/hu3;->t:Lr4/xt3;

    iget-object v6, v7, Lr4/hu3;->u:Lr4/ma;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lr4/cu3;-><init>(Lr4/hu3;Landroid/net/Uri;Lr4/o8;Lr4/xt3;Lr4/d04;Lr4/ma;)V

    iget-boolean v0, v7, Lr4/hu3;->D:Z

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lr4/hu3;->K()Z

    move-result v0

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iget-wide v0, v7, Lr4/hu3;->H:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, v7, Lr4/hu3;->P:J

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v7, Lr4/hu3;->S:Z

    iput-wide v2, v7, Lr4/hu3;->P:J

    return-void

    :cond_1
    :goto_0
    iget-object v0, v7, Lr4/hu3;->G:Lr4/z04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v7, Lr4/hu3;->P:J

    invoke-interface {v0, v4, v5}, Lr4/z04;->a(J)Lr4/x04;

    move-result-object v0

    iget-object v0, v0, Lr4/x04;->a:Lr4/a14;

    iget-wide v0, v0, Lr4/a14;->b:J

    iget-wide v4, v7, Lr4/hu3;->P:J

    invoke-static {v8, v0, v1, v4, v5}, Lr4/cu3;->i(Lr4/cu3;JJ)V

    iget-object v0, v7, Lr4/hu3;->A:[Lr4/uu3;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-wide v9, v7, Lr4/hu3;->P:J

    invoke-virtual {v5, v9, v10}, Lr4/uu3;->u(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-wide v2, v7, Lr4/hu3;->P:J

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lr4/hu3;->I()I

    move-result v0

    iput v0, v7, Lr4/hu3;->R:I

    iget-object v0, v7, Lr4/hu3;->s:Lr4/kx3;

    iget v1, v7, Lr4/hu3;->J:I

    invoke-static {v1}, Lr4/ww3;->a(I)I

    move-result v1

    invoke-virtual {v0, v8, v7, v1}, Lr4/kx3;->h(Lr4/fx3;Lr4/bx3;I)J

    move-result-wide v15

    invoke-static {v8}, Lr4/cu3;->e(Lr4/cu3;)Lr4/vc;

    move-result-object v12

    iget-object v0, v7, Lr4/hu3;->k:Lr4/ot3;

    new-instance v1, Lr4/ws3;

    invoke-static {v8}, Lr4/cu3;->b(Lr4/cu3;)J

    move-result-wide v10

    iget-object v13, v12, Lr4/vc;->a:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v20}, Lr4/ws3;-><init>(JLr4/vc;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    const/16 v19, 0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static {v8}, Lr4/cu3;->d(Lr4/cu3;)J

    move-result-wide v24

    iget-wide v2, v7, Lr4/hu3;->H:J

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-wide/from16 v26, v2

    invoke-virtual/range {v17 .. v27}, Lr4/ot3;->d(Lr4/ws3;IILr4/e5;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final I()I
    .locals 5

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lr4/uu3;->v()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final J()J
    .locals 7

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lr4/uu3;->A()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final K()Z
    .locals 5

    iget-wide v0, p0, Lr4/hu3;->P:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final L()V
    .locals 1

    iget-boolean v0, p0, Lr4/hu3;->D:Z

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iget-object v0, p0, Lr4/hu3;->F:Lr4/gu3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/hu3;->G:Lr4/z04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final T()V
    .locals 4

    iget-boolean v0, p0, Lr4/hu3;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lr4/uu3;->w()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/hu3;->s:Lr4/kx3;

    invoke-virtual {v0, p0}, Lr4/kx3;->k(Lr4/hx3;)V

    iget-object v0, p0, Lr4/hu3;->x:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lr4/hu3;->y:Lr4/dt3;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/hu3;->T:Z

    return-void
.end method

.method public final U(I)Z
    .locals 1

    invoke-virtual {p0}, Lr4/hu3;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lr4/hu3;->S:Z

    invoke-virtual {p1, v0}, Lr4/uu3;->C(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final V(I)V
    .locals 1

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lr4/uu3;->x()V

    invoke-virtual {p0}, Lr4/hu3;->W()V

    return-void
.end method

.method public final W()V
    .locals 2

    iget-object v0, p0, Lr4/hu3;->s:Lr4/kx3;

    iget v1, p0, Lr4/hu3;->J:I

    invoke-static {v1}, Lr4/ww3;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lr4/kx3;->l(I)V

    return-void
.end method

.method public final X(ILr4/f5;Lr4/i4;I)I
    .locals 3

    invoke-virtual {p0}, Lr4/hu3;->C()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lr4/hu3;->A(I)V

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lr4/hu3;->S:Z

    invoke-virtual {v0, p2, p3, p4, v2}, Lr4/uu3;->D(Lr4/f5;Lr4/i4;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, p1}, Lr4/hu3;->B(I)V

    :cond_1
    return p2
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lr4/hu3;->W()V

    iget-boolean v0, p0, Lr4/hu3;->S:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/hu3;->D:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Loading finished before preparation is complete."

    invoke-static {v1, v0}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(J)Z
    .locals 0

    iget-boolean p1, p0, Lr4/hu3;->S:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lr4/hu3;->s:Lr4/kx3;

    invoke-virtual {p1}, Lr4/kx3;->f()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lr4/hu3;->Q:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lr4/hu3;->D:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lr4/hu3;->M:I

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lr4/hu3;->u:Lr4/ma;

    invoke-virtual {p1}, Lr4/ma;->a()Z

    move-result p1

    iget-object p2, p0, Lr4/hu3;->s:Lr4/kx3;

    invoke-virtual {p2}, Lr4/kx3;->i()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lr4/hu3;->H()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final d([Lr4/hv3;[Z[Lr4/vu3;[ZJ)J
    .locals 7

    invoke-virtual {p0}, Lr4/hu3;->L()V

    iget-object v0, p0, Lr4/hu3;->F:Lr4/gu3;

    iget-object v1, v0, Lr4/gu3;->a:Lr4/j44;

    iget-object v0, v0, Lr4/gu3;->c:[Z

    iget v2, p0, Lr4/hu3;->M:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v4

    if-nez v6, :cond_1

    :cond_0
    check-cast v5, Lr4/eu3;

    invoke-static {v5}, Lr4/eu3;->e(Lr4/eu3;)I

    move-result v5

    aget-boolean v6, v0, v5

    invoke-static {v6}, Lr4/ja;->d(Z)V

    iget v6, p0, Lr4/hu3;->M:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lr4/hu3;->M:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lr4/hu3;->K:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v2, 0x0

    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_9

    aget-object v5, p3, v2

    if-nez v5, :cond_8

    aget-object v5, p1, v2

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lr4/hv3;->b()I

    move-result v6

    if-ne v6, v4, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    invoke-static {v6}, Lr4/ja;->d(Z)V

    invoke-virtual {v5, v3}, Lr4/hv3;->d(I)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-static {v6}, Lr4/ja;->d(Z)V

    invoke-virtual {v5}, Lr4/hv3;->a()Lr4/h24;

    move-result-object v5

    invoke-virtual {v1, v5}, Lr4/j44;->b(Lr4/h24;)I

    move-result v5

    aget-boolean v6, v0, v5

    xor-int/2addr v6, v4

    invoke-static {v6}, Lr4/ja;->d(Z)V

    iget v6, p0, Lr4/hu3;->M:I

    add-int/2addr v6, v4

    iput v6, p0, Lr4/hu3;->M:I

    aput-boolean v4, v0, v5

    new-instance v6, Lr4/eu3;

    invoke-direct {v6, p0, v5}, Lr4/eu3;-><init>(Lr4/hu3;I)V

    aput-object v6, p3, v2

    aput-boolean v4, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object p2, p2, v5

    invoke-virtual {p2, p5, p6, v4}, Lr4/uu3;->E(JZ)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p2}, Lr4/uu3;->y()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lr4/hu3;->M:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lr4/hu3;->Q:Z

    iput-boolean v3, p0, Lr4/hu3;->L:Z

    iget-object p1, p0, Lr4/hu3;->s:Lr4/kx3;

    invoke-virtual {p1}, Lr4/kx3;->i()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    invoke-virtual {p3}, Lr4/uu3;->I()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lr4/hu3;->s:Lr4/kx3;

    invoke-virtual {p1}, Lr4/kx3;->j()V

    goto :goto_a

    :cond_b
    iget-object p1, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    invoke-virtual {p4, v3}, Lr4/uu3;->t(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Lr4/hu3;->p(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    aput-boolean v4, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v4, p0, Lr4/hu3;->K:Z

    return-wide p5
.end method

.method public final e()Lr4/j44;
    .locals 1

    invoke-virtual {p0}, Lr4/hu3;->L()V

    iget-object v0, p0, Lr4/hu3;->F:Lr4/gu3;

    iget-object v0, v0, Lr4/gu3;->a:Lr4/j44;

    return-object v0
.end method

.method public final f()J
    .locals 11

    invoke-virtual {p0}, Lr4/hu3;->L()V

    iget-object v0, p0, Lr4/hu3;->F:Lr4/gu3;

    iget-object v0, v0, Lr4/gu3;->b:[Z

    iget-boolean v1, p0, Lr4/hu3;->S:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lr4/hu3;->K()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v0, p0, Lr4/hu3;->P:J

    return-wide v0

    :cond_1
    iget-boolean v1, p0, Lr4/hu3;->E:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    iget-object v1, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lr4/uu3;->B()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lr4/uu3;->A()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lr4/hu3;->J()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    iget-wide v0, p0, Lr4/hu3;->O:J

    return-wide v0

    :cond_6
    return-wide v7
.end method

.method public final g()J
    .locals 2

    iget-boolean v0, p0, Lr4/hu3;->L:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/hu3;->S:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr4/hu3;->I()I

    move-result v0

    iget v1, p0, Lr4/hu3;->R:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/hu3;->L:Z

    iget-wide v0, p0, Lr4/hu3;->O:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final h(Lr4/e5;)V
    .locals 1

    iget-object p1, p0, Lr4/hu3;->x:Landroid/os/Handler;

    iget-object v0, p0, Lr4/hu3;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i()J
    .locals 2

    iget v0, p0, Lr4/hu3;->M:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lr4/hu3;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j(Lr4/z04;)V
    .locals 2

    iget-object v0, p0, Lr4/hu3;->x:Landroid/os/Handler;

    new-instance v1, Lr4/bu3;

    invoke-direct {v1, p0, p1}, Lr4/bu3;-><init>(Lr4/hu3;Lr4/z04;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic k(Lr4/fx3;JJ)V
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lr4/hu3;->H:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Lr4/hu3;->G:Lr4/z04;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lr4/z04;->c()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lr4/hu3;->J()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    :goto_0
    iput-wide v2, v0, Lr4/hu3;->H:J

    iget-object v4, v0, Lr4/hu3;->q:Lr4/du3;

    iget-boolean v5, v0, Lr4/hu3;->I:Z

    invoke-interface {v4, v2, v3, v1, v5}, Lr4/du3;->i(JZZ)V

    :cond_1
    move-object/from16 v1, p1

    check-cast v1, Lr4/cu3;

    invoke-static {v1}, Lr4/cu3;->c(Lr4/cu3;)Lr4/sx3;

    move-result-object v2

    new-instance v15, Lr4/ws3;

    invoke-static {v1}, Lr4/cu3;->b(Lr4/cu3;)J

    move-result-wide v4

    invoke-static {v1}, Lr4/cu3;->e(Lr4/cu3;)Lr4/vc;

    move-result-object v6

    invoke-virtual {v2}, Lr4/sx3;->o()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lr4/sx3;->r()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lr4/sx3;->n()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lr4/ws3;-><init>(JLr4/vc;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    invoke-static {v1}, Lr4/cu3;->b(Lr4/cu3;)J

    iget-object v3, v0, Lr4/hu3;->k:Lr4/ot3;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1}, Lr4/cu3;->d(Lr4/cu3;)J

    move-result-wide v10

    iget-wide v12, v0, Lr4/hu3;->H:J

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lr4/ot3;->f(Lr4/ws3;IILr4/e5;ILjava/lang/Object;JJ)V

    invoke-virtual {v0, v1}, Lr4/hu3;->G(Lr4/cu3;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr4/hu3;->S:Z

    iget-object v1, v0, Lr4/hu3;->y:Lr4/dt3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lr4/wu3;->j(Lr4/xu3;)V

    return-void
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lr4/hu3;->s:Lr4/kx3;

    invoke-virtual {v0}, Lr4/kx3;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/hu3;->u:Lr4/ma;

    invoke-virtual {v0}, Lr4/ma;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m(Lr4/dt3;J)V
    .locals 0

    iput-object p1, p0, Lr4/hu3;->y:Lr4/dt3;

    iget-object p1, p0, Lr4/hu3;->u:Lr4/ma;

    invoke-virtual {p1}, Lr4/ma;->a()Z

    invoke-virtual {p0}, Lr4/hu3;->H()V

    return-void
.end method

.method public final bridge synthetic n(Lr4/fx3;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lr4/cu3;

    invoke-static {v1}, Lr4/cu3;->c(Lr4/cu3;)Lr4/sx3;

    move-result-object v2

    new-instance v15, Lr4/ws3;

    invoke-static {v1}, Lr4/cu3;->b(Lr4/cu3;)J

    move-result-wide v4

    invoke-static {v1}, Lr4/cu3;->e(Lr4/cu3;)Lr4/vc;

    move-result-object v6

    invoke-virtual {v2}, Lr4/sx3;->o()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lr4/sx3;->r()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lr4/sx3;->n()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lr4/ws3;-><init>(JLr4/vc;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    invoke-static {v1}, Lr4/cu3;->b(Lr4/cu3;)J

    iget-object v3, v0, Lr4/hu3;->k:Lr4/ot3;

    invoke-static {v1}, Lr4/cu3;->d(Lr4/cu3;)J

    move-result-wide v10

    iget-wide v12, v0, Lr4/hu3;->H:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lr4/ot3;->h(Lr4/ws3;IILr4/e5;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_1

    invoke-virtual {v0, v1}, Lr4/hu3;->G(Lr4/cu3;)V

    iget-object v1, v0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Lr4/uu3;->t(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lr4/hu3;->M:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lr4/hu3;->y:Lr4/dt3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lr4/wu3;->j(Lr4/xu3;)V

    :cond_1
    return-void
.end method

.method public final o(JLr4/k7;)J
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Lr4/hu3;->L()V

    iget-object v1, v0, Lr4/hu3;->G:Lr4/z04;

    invoke-interface {v1}, Lr4/z04;->c()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, v0, Lr4/hu3;->G:Lr4/z04;

    invoke-interface {v1, v7, v8}, Lr4/z04;->a(J)Lr4/x04;

    move-result-object v1

    iget-object v4, v1, Lr4/x04;->a:Lr4/a14;

    iget-wide v10, v4, Lr4/a14;->a:J

    iget-object v1, v1, Lr4/x04;->b:Lr4/a14;

    iget-wide v12, v1, Lr4/a14;->a:J

    iget-wide v4, v9, Lr4/k7;->a:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    iget-wide v14, v9, Lr4/k7;->b:J

    cmp-long v1, v14, v2

    if-nez v1, :cond_1

    move-wide v12, v7

    goto :goto_3

    :cond_1
    const-wide/high16 v14, -0x8000000000000000L

    move-wide/from16 v1, p1

    move-wide v3, v4

    move-wide v5, v14

    invoke-static/range {v1 .. v6}, Lr4/lc;->b(JJJ)J

    move-result-wide v14

    iget-wide v3, v9, Lr4/k7;->b:J

    const-wide v5, 0x7fffffffffffffffL

    invoke-static/range {v1 .. v6}, Lr4/lc;->a(JJJ)J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, v14, v10

    if-gtz v5, :cond_2

    cmp-long v5, v10, v1

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    cmp-long v6, v14, v12

    if-gtz v6, :cond_3

    cmp-long v6, v12, v1

    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    sub-long v1, v10, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long v3, v12, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_4

    goto :goto_2

    :cond_4
    return-wide v12

    :cond_5
    if-eqz v5, :cond_6

    :goto_2
    move-wide v12, v10

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    :goto_3
    return-wide v12

    :cond_7
    return-wide v14
.end method

.method public final p(J)J
    .locals 5

    invoke-virtual {p0}, Lr4/hu3;->L()V

    iget-object v0, p0, Lr4/hu3;->F:Lr4/gu3;

    iget-object v0, v0, Lr4/gu3;->b:[Z

    iget-object v1, p0, Lr4/hu3;->G:Lr4/z04;

    invoke-interface {v1}, Lr4/z04;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lr4/hu3;->L:Z

    iput-wide p1, p0, Lr4/hu3;->O:J

    invoke-virtual {p0}, Lr4/hu3;->K()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide p1, p0, Lr4/hu3;->P:J

    return-wide p1

    :cond_1
    iget v2, p0, Lr4/hu3;->J:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2, v1}, Lr4/uu3;->E(JZ)Z

    move-result v4

    if-nez v4, :cond_2

    aget-boolean v4, v0, v3

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lr4/hu3;->E:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide p1

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lr4/hu3;->Q:Z

    iput-wide p1, p0, Lr4/hu3;->P:J

    iput-boolean v1, p0, Lr4/hu3;->S:Z

    iget-object v0, p0, Lr4/hu3;->s:Lr4/kx3;

    invoke-virtual {v0}, Lr4/kx3;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lr4/uu3;->I()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lr4/hu3;->s:Lr4/kx3;

    invoke-virtual {v0}, Lr4/kx3;->j()V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lr4/hu3;->s:Lr4/kx3;

    invoke-virtual {v0}, Lr4/kx3;->g()V

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Lr4/uu3;->t(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-wide p1
.end method

.method public final q(JZ)V
    .locals 5

    invoke-virtual {p0}, Lr4/hu3;->L()V

    invoke-virtual {p0}, Lr4/hu3;->K()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lr4/hu3;->F:Lr4/gu3;

    iget-object p3, p3, Lr4/gu3;->c:[Z

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object v3, v3, v2

    aget-boolean v4, p3, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lr4/uu3;->H(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r(II)Lr4/d14;
    .locals 1

    new-instance p2, Lr4/fu3;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lr4/fu3;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lr4/hu3;->D(Lr4/fu3;)Lr4/d14;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic s(Lr4/fx3;JJLjava/io/IOException;I)Lr4/dx3;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lr4/cu3;

    invoke-virtual {v0, v1}, Lr4/hu3;->G(Lr4/cu3;)V

    invoke-static {v1}, Lr4/cu3;->c(Lr4/cu3;)Lr4/sx3;

    move-result-object v2

    new-instance v15, Lr4/ws3;

    invoke-static {v1}, Lr4/cu3;->b(Lr4/cu3;)J

    move-result-wide v4

    invoke-static {v1}, Lr4/cu3;->e(Lr4/cu3;)Lr4/vc;

    move-result-object v6

    invoke-virtual {v2}, Lr4/sx3;->o()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lr4/sx3;->r()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lr4/sx3;->n()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lr4/ws3;-><init>(JLr4/vc;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v2, Lr4/ct3;

    invoke-static {v1}, Lr4/cu3;->d(Lr4/cu3;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lr4/e3;->a(J)J

    move-result-wide v22

    iget-wide v3, v0, Lr4/hu3;->H:J

    invoke-static {v3, v4}, Lr4/e3;->a(J)J

    move-result-wide v24

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v25}, Lr4/ct3;-><init>(IILr4/e5;ILjava/lang/Object;JJ)V

    new-instance v3, Lr4/ax3;

    move-object/from16 v14, p6

    move/from16 v4, p7

    invoke-direct {v3, v15, v2, v14, v4}, Lr4/ax3;-><init>(Lr4/ws3;Lr4/ct3;Ljava/io/IOException;I)V

    iget-object v2, v3, Lr4/ax3;->c:Ljava/io/IOException;

    instance-of v4, v2, Lr4/l6;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_2

    instance-of v4, v2, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_2

    instance-of v4, v2, Lr4/ei;

    if-nez v4, :cond_2

    instance-of v4, v2, Lr4/jx3;

    if-nez v4, :cond_2

    :goto_0
    if-eqz v2, :cond_1

    instance-of v4, v2, Lr4/p9;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lr4/p9;

    iget v4, v4, Lr4/p9;->a:I

    const/16 v7, 0x7d8

    if-ne v4, v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget v2, v3, Lr4/ax3;->d:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v2, v5

    :goto_2
    const/4 v4, 0x1

    cmp-long v7, v2, v5

    if-nez v7, :cond_3

    sget-object v2, Lr4/kx3;->g:Lr4/dx3;

    goto :goto_7

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lr4/hu3;->I()I

    move-result v7

    iget v8, v0, Lr4/hu3;->R:I

    const/4 v9, 0x0

    if-le v7, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    iget-wide v10, v0, Lr4/hu3;->N:J

    const-wide/16 v12, -0x1

    cmp-long v16, v10, v12

    if-nez v16, :cond_8

    iget-object v10, v0, Lr4/hu3;->G:Lr4/z04;

    if-eqz v10, :cond_5

    invoke-interface {v10}, Lr4/z04;->g()J

    move-result-wide v10

    cmp-long v12, v10, v5

    if-eqz v12, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v5, v0, Lr4/hu3;->D:Z

    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lr4/hu3;->C()Z

    move-result v5

    if-nez v5, :cond_6

    iput-boolean v4, v0, Lr4/hu3;->Q:Z

    sget-object v2, Lr4/kx3;->f:Lr4/dx3;

    goto :goto_7

    :cond_6
    iget-boolean v5, v0, Lr4/hu3;->D:Z

    iput-boolean v5, v0, Lr4/hu3;->L:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lr4/hu3;->O:J

    iput v9, v0, Lr4/hu3;->R:I

    iget-object v7, v0, Lr4/hu3;->A:[Lr4/uu3;

    array-length v10, v7

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_7

    aget-object v12, v7, v11

    invoke-virtual {v12, v9}, Lr4/uu3;->t(Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v1, v5, v6, v5, v6}, Lr4/cu3;->i(Lr4/cu3;JJ)V

    goto :goto_6

    :cond_8
    :goto_5
    iput v7, v0, Lr4/hu3;->R:I

    :goto_6
    invoke-static {v8, v2, v3}, Lr4/kx3;->e(ZJ)Lr4/dx3;

    move-result-object v2

    :goto_7
    invoke-virtual {v2}, Lr4/dx3;->c()Z

    move-result v3

    xor-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lr4/hu3;->k:Lr4/ot3;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1}, Lr4/cu3;->d(Lr4/cu3;)J

    move-result-wide v10

    iget-wide v12, v0, Lr4/hu3;->H:J

    move-object v4, v15

    move-object/from16 v14, p6

    move/from16 v15, v16

    invoke-virtual/range {v3 .. v15}, Lr4/ot3;->j(Lr4/ws3;IILr4/e5;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v16, :cond_9

    invoke-static {v1}, Lr4/cu3;->b(Lr4/cu3;)J

    :cond_9
    return-object v2
.end method

.method public final t(IJ)I
    .locals 3

    invoke-virtual {p0}, Lr4/hu3;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lr4/hu3;->A(I)V

    iget-object v0, p0, Lr4/hu3;->A:[Lr4/uu3;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lr4/hu3;->S:Z

    invoke-virtual {v0, p2, p3, v2}, Lr4/uu3;->F(JZ)I

    move-result p2

    invoke-virtual {v0, p2}, Lr4/uu3;->G(I)V

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lr4/hu3;->B(I)V

    return v1

    :cond_1
    return p2
.end method

.method public final u()Lr4/d14;
    .locals 3

    new-instance v0, Lr4/fu3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr4/fu3;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lr4/hu3;->D(Lr4/fu3;)Lr4/d14;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic w(Lr4/z04;)V
    .locals 9

    iget-object v0, p0, Lr4/hu3;->z:Lr4/v8;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/y04;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lr4/y04;-><init>(JJ)V

    :goto_0
    iput-object v0, p0, Lr4/hu3;->G:Lr4/z04;

    invoke-interface {p1}, Lr4/z04;->g()J

    move-result-wide v3

    iput-wide v3, p0, Lr4/hu3;->H:J

    iget-wide v3, p0, Lr4/hu3;->N:J

    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_1

    invoke-interface {p1}, Lr4/z04;->g()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lr4/hu3;->I:Z

    if-eq v7, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x7

    :goto_1
    iput v7, p0, Lr4/hu3;->J:I

    iget-object v0, p0, Lr4/hu3;->q:Lr4/du3;

    iget-wide v1, p0, Lr4/hu3;->H:J

    invoke-interface {p1}, Lr4/z04;->c()Z

    move-result p1

    iget-boolean v3, p0, Lr4/hu3;->I:Z

    invoke-interface {v0, v1, v2, p1, v3}, Lr4/du3;->i(JZZ)V

    iget-boolean p1, p0, Lr4/hu3;->D:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lr4/hu3;->F()V

    :cond_3
    return-void
.end method

.method public final synthetic x()V
    .locals 1

    iget-boolean v0, p0, Lr4/hu3;->T:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/hu3;->y:Lr4/dt3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lr4/wu3;->j(Lr4/xu3;)V

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/hu3;->C:Z

    iget-object v0, p0, Lr4/hu3;->x:Landroid/os/Handler;

    iget-object v1, p0, Lr4/hu3;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic z()V
    .locals 0

    invoke-virtual {p0}, Lr4/hu3;->F()V

    return-void
.end method
