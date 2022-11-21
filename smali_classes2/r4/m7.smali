.class public final Lr4/m7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/j7;

.field public final c:Lr4/ka;

.field public d:Lr4/aw3;

.field public final e:Lr4/qt3;

.field public f:Lr4/h5;

.field public final g:Lr4/kw3;

.field public final h:Lr4/c41;

.field public final i:Landroid/os/Looper;

.field public final j:Lr4/dg3;

.field public final k:Lr4/k7;

.field public l:Z

.field public final m:Lr4/g3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/j7;)V
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lr4/wz3;

    invoke-direct {v2}, Lr4/wz3;-><init>()V

    new-instance v3, Lr4/uv3;

    invoke-direct {v3, v1}, Lr4/uv3;-><init>(Landroid/content/Context;)V

    new-instance v4, Lr4/ss3;

    invoke-direct {v4, v1, v2}, Lr4/ss3;-><init>(Landroid/content/Context;Lr4/g04;)V

    new-instance v2, Lr4/i3;

    invoke-direct {v2}, Lr4/i3;-><init>()V

    invoke-static/range {p1 .. p1}, Lr4/tw3;->d(Landroid/content/Context;)Lr4/tw3;

    move-result-object v5

    new-instance v6, Lr4/c41;

    sget-object v7, Lr4/ka;->a:Lr4/ka;

    invoke-direct {v6, v7}, Lr4/c41;-><init>(Lr4/ka;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lr4/m7;->a:Landroid/content/Context;

    move-object/from16 v1, p2

    iput-object v1, v0, Lr4/m7;->b:Lr4/j7;

    iput-object v3, v0, Lr4/m7;->d:Lr4/aw3;

    iput-object v4, v0, Lr4/m7;->e:Lr4/qt3;

    iput-object v2, v0, Lr4/m7;->f:Lr4/h5;

    iput-object v5, v0, Lr4/m7;->g:Lr4/kw3;

    iput-object v6, v0, Lr4/m7;->h:Lr4/c41;

    invoke-static {}, Lr4/lc;->P()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lr4/m7;->i:Landroid/os/Looper;

    sget-object v1, Lr4/dg3;->c:Lr4/dg3;

    iput-object v1, v0, Lr4/m7;->j:Lr4/dg3;

    sget-object v1, Lr4/k7;->g:Lr4/k7;

    iput-object v1, v0, Lr4/m7;->k:Lr4/k7;

    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Lr4/e3;->b(J)J

    move-result-wide v14

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Lr4/e3;->b(J)J

    move-result-wide v16

    new-instance v1, Lr4/g3;

    const v9, 0x3f7851ec    # 0.97f

    const v10, 0x3f83d70a    # 1.03f

    const-wide/16 v11, 0x3e8

    const v13, 0x33d6bf95    # 1.0E-7f

    const v18, 0x3f7fbe77    # 0.999f

    const/16 v19, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v19}, Lr4/g3;-><init>(FFJFJJFLr4/f3;)V

    iput-object v1, v0, Lr4/m7;->m:Lr4/g3;

    iput-object v7, v0, Lr4/m7;->c:Lr4/ka;

    return-void
.end method

.method public static synthetic a(Lr4/m7;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lr4/m7;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lr4/m7;)Lr4/j7;
    .locals 0

    iget-object p0, p0, Lr4/m7;->b:Lr4/j7;

    return-object p0
.end method

.method public static synthetic c(Lr4/m7;)Lr4/ka;
    .locals 0

    iget-object p0, p0, Lr4/m7;->c:Lr4/ka;

    return-object p0
.end method

.method public static synthetic d(Lr4/m7;)Lr4/aw3;
    .locals 0

    iget-object p0, p0, Lr4/m7;->d:Lr4/aw3;

    return-object p0
.end method

.method public static synthetic e(Lr4/m7;)Lr4/qt3;
    .locals 0

    iget-object p0, p0, Lr4/m7;->e:Lr4/qt3;

    return-object p0
.end method

.method public static synthetic f(Lr4/m7;)Lr4/h5;
    .locals 0

    iget-object p0, p0, Lr4/m7;->f:Lr4/h5;

    return-object p0
.end method

.method public static synthetic g(Lr4/m7;)Lr4/kw3;
    .locals 0

    iget-object p0, p0, Lr4/m7;->g:Lr4/kw3;

    return-object p0
.end method

.method public static synthetic h(Lr4/m7;)Lr4/c41;
    .locals 0

    iget-object p0, p0, Lr4/m7;->h:Lr4/c41;

    return-object p0
.end method

.method public static synthetic i(Lr4/m7;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lr4/m7;->i:Landroid/os/Looper;

    return-object p0
.end method

.method public static synthetic j(Lr4/m7;)Lr4/dg3;
    .locals 0

    iget-object p0, p0, Lr4/m7;->j:Lr4/dg3;

    return-object p0
.end method

.method public static synthetic k(Lr4/m7;)Lr4/k7;
    .locals 0

    iget-object p0, p0, Lr4/m7;->k:Lr4/k7;

    return-object p0
.end method

.method public static synthetic o(Lr4/m7;)Lr4/g3;
    .locals 0

    iget-object p0, p0, Lr4/m7;->m:Lr4/g3;

    return-object p0
.end method


# virtual methods
.method public final l(Lr4/aw3;)Lr4/m7;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lr4/m7;->l:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iput-object p1, p0, Lr4/m7;->d:Lr4/aw3;

    return-object p0
.end method

.method public final m(Lr4/h5;)Lr4/m7;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lr4/m7;->l:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iput-object p1, p0, Lr4/m7;->f:Lr4/h5;

    return-object p0
.end method

.method public final n()Lr4/q7;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lr4/m7;->l:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iput-boolean v1, p0, Lr4/m7;->l:Z

    new-instance v0, Lr4/q7;

    invoke-direct {v0, p0}, Lr4/q7;-><init>(Lr4/m7;)V

    return-object v0
.end method
