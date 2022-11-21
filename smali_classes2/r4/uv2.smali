.class public final Lr4/uv2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Lr4/uv2;


# instance fields
.field public a:F

.field public final b:Lr4/mv2;

.field public final c:Lr4/kv2;

.field public d:Lr4/lv2;

.field public e:Lr4/nv2;


# direct methods
.method public constructor <init>(Lr4/mv2;Lr4/kv2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr4/uv2;->a:F

    iput-object p1, p0, Lr4/uv2;->b:Lr4/mv2;

    iput-object p2, p0, Lr4/uv2;->c:Lr4/kv2;

    return-void
.end method

.method public static a()Lr4/uv2;
    .locals 3

    sget-object v0, Lr4/uv2;->f:Lr4/uv2;

    if-nez v0, :cond_0

    new-instance v0, Lr4/kv2;

    invoke-direct {v0}, Lr4/kv2;-><init>()V

    new-instance v1, Lr4/mv2;

    invoke-direct {v1}, Lr4/mv2;-><init>()V

    new-instance v2, Lr4/uv2;

    invoke-direct {v2, v1, v0}, Lr4/uv2;-><init>(Lr4/mv2;Lr4/kv2;)V

    sput-object v2, Lr4/uv2;->f:Lr4/uv2;

    :cond_0
    sget-object v0, Lr4/uv2;->f:Lr4/uv2;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 7

    new-instance v3, Lr4/jv2;

    invoke-direct {v3}, Lr4/jv2;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lr4/lv2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lr4/lv2;-><init>(Landroid/os/Handler;Landroid/content/Context;Lr4/jv2;Lr4/uv2;[B)V

    iput-object v6, p0, Lr4/uv2;->d:Lr4/lv2;

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-static {}, Lr4/pv2;->a()Lr4/pv2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr4/pv2;->g(Lr4/uv2;)V

    invoke-static {}, Lr4/pv2;->a()Lr4/pv2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/pv2;->c()V

    invoke-static {}, Lr4/pv2;->a()Lr4/pv2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/pv2;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lr4/sw2;->f()Lr4/sw2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/sw2;->g()V

    :cond_0
    iget-object v0, p0, Lr4/uv2;->d:Lr4/lv2;

    invoke-virtual {v0}, Lr4/lv2;->a()V

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-static {}, Lr4/sw2;->f()Lr4/sw2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/sw2;->h()V

    invoke-static {}, Lr4/pv2;->a()Lr4/pv2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/pv2;->d()V

    iget-object v0, p0, Lr4/uv2;->d:Lr4/lv2;

    invoke-virtual {v0}, Lr4/lv2;->b()V

    return-void
.end method

.method public final e(F)V
    .locals 2

    iput p1, p0, Lr4/uv2;->a:F

    iget-object v0, p0, Lr4/uv2;->e:Lr4/nv2;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/nv2;->a()Lr4/nv2;

    move-result-object v0

    iput-object v0, p0, Lr4/uv2;->e:Lr4/nv2;

    :cond_0
    iget-object v0, p0, Lr4/uv2;->e:Lr4/nv2;

    invoke-virtual {v0}, Lr4/nv2;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/cv2;

    invoke-virtual {v1}, Lr4/cv2;->g()Lr4/cw2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/cw2;->j(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Lr4/uv2;->a:F

    return v0
.end method
