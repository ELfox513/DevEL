.class public final Lr4/gm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lr4/hm;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lr4/hm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/gm;->a:Landroid/os/Handler;

    iput-object p2, p0, Lr4/gm;->b:Lr4/hm;

    return-void
.end method

.method public static synthetic a(Lr4/gm;)Lr4/hm;
    .locals 0

    iget-object p0, p0, Lr4/gm;->b:Lr4/hm;

    return-object p0
.end method


# virtual methods
.method public final b(Lr4/gf;)V
    .locals 2

    iget-object v0, p0, Lr4/gm;->a:Landroid/os/Handler;

    new-instance v1, Lr4/zl;

    invoke-direct {v1, p0, p1}, Lr4/zl;-><init>(Lr4/gm;Lr4/gf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lr4/gm;->a:Landroid/os/Handler;

    new-instance v8, Lr4/am;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lr4/am;-><init>(Lr4/gm;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Lr4/id;)V
    .locals 2

    iget-object v0, p0, Lr4/gm;->a:Landroid/os/Handler;

    new-instance v1, Lr4/bm;

    invoke-direct {v1, p0, p1}, Lr4/bm;-><init>(Lr4/gm;Lr4/id;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(IJ)V
    .locals 2

    iget-object v0, p0, Lr4/gm;->a:Landroid/os/Handler;

    new-instance v1, Lr4/cm;

    invoke-direct {v1, p0, p1, p2, p3}, Lr4/cm;-><init>(Lr4/gm;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(IIIF)V
    .locals 8

    iget-object v0, p0, Lr4/gm;->a:Landroid/os/Handler;

    new-instance v7, Lr4/dm;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lr4/dm;-><init>(Lr4/gm;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lr4/gm;->a:Landroid/os/Handler;

    new-instance v1, Lr4/em;

    invoke-direct {v1, p0, p1}, Lr4/em;-><init>(Lr4/gm;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h(Lr4/gf;)V
    .locals 2

    iget-object v0, p0, Lr4/gm;->a:Landroid/os/Handler;

    new-instance v1, Lr4/fm;

    invoke-direct {v1, p0, p1}, Lr4/fm;-><init>(Lr4/gm;Lr4/gf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
