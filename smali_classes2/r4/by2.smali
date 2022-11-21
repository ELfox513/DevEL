.class public final Lr4/by2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lr4/hx2;

.field public final d:Lr4/jx2;

.field public final e:Lr4/ay2;

.field public final f:Lr4/ay2;

.field public g:Lj5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/i<",
            "Lr4/pb4;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lj5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/i<",
            "Lr4/pb4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/hx2;Lr4/jx2;Lr4/xx2;Lr4/yx2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/by2;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/by2;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/by2;->c:Lr4/hx2;

    iput-object p4, p0, Lr4/by2;->d:Lr4/jx2;

    iput-object p5, p0, Lr4/by2;->e:Lr4/ay2;

    iput-object p6, p0, Lr4/by2;->f:Lr4/ay2;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/hx2;Lr4/jx2;)Lr4/by2;
    .locals 8

    new-instance v7, Lr4/by2;

    new-instance v5, Lr4/xx2;

    invoke-direct {v5}, Lr4/xx2;-><init>()V

    new-instance v6, Lr4/yx2;

    invoke-direct {v6}, Lr4/yx2;-><init>()V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lr4/by2;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/hx2;Lr4/jx2;Lr4/xx2;Lr4/yx2;)V

    iget-object p0, v7, Lr4/by2;->d:Lr4/jx2;

    invoke-virtual {p0}, Lr4/jx2;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lr4/ux2;

    invoke-direct {p0, v7}, Lr4/ux2;-><init>(Lr4/by2;)V

    invoke-virtual {v7, p0}, Lr4/by2;->g(Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object p0

    iput-object p0, v7, Lr4/by2;->g:Lj5/i;

    goto :goto_0

    :cond_0
    iget-object p0, v7, Lr4/by2;->e:Lr4/ay2;

    invoke-interface {p0}, Lr4/ay2;->zza()Lr4/pb4;

    move-result-object p0

    invoke-static {p0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p0

    iput-object p0, v7, Lr4/by2;->g:Lj5/i;

    :goto_0
    new-instance p0, Lr4/vx2;

    invoke-direct {p0, v7}, Lr4/vx2;-><init>(Lr4/by2;)V

    invoke-virtual {v7, p0}, Lr4/by2;->g(Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object p0

    iput-object p0, v7, Lr4/by2;->h:Lj5/i;

    return-object v7
.end method

.method public static h(Lj5/i;Lr4/pb4;)Lr4/pb4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/i<",
            "Lr4/pb4;",
            ">;",
            "Lr4/pb4;",
            ")",
            "Lr4/pb4;"
        }
    .end annotation

    invoke-virtual {p0}, Lj5/i;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/pb4;

    return-object p0
.end method


# virtual methods
.method public final b()Lr4/pb4;
    .locals 2

    iget-object v0, p0, Lr4/by2;->g:Lj5/i;

    iget-object v1, p0, Lr4/by2;->e:Lr4/ay2;

    invoke-interface {v1}, Lr4/ay2;->zza()Lr4/pb4;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/by2;->h(Lj5/i;Lr4/pb4;)Lr4/pb4;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lr4/pb4;
    .locals 2

    iget-object v0, p0, Lr4/by2;->h:Lj5/i;

    iget-object v1, p0, Lr4/by2;->f:Lr4/ay2;

    invoke-interface {v1}, Lr4/ay2;->zza()Lr4/pb4;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/by2;->h(Lj5/i;Lr4/pb4;)Lr4/pb4;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Ljava/lang/Exception;)V
    .locals 4

    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lr4/by2;->c:Lr4/hx2;

    const/16 v1, 0x7e9

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lr4/hx2;->c(IJLjava/lang/Exception;)Lj5/i;

    return-void
.end method

.method public final synthetic e()Lr4/pb4;
    .locals 4

    iget-object v0, p0, Lr4/by2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lr4/px2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lr4/pb4;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lr4/pb4;
    .locals 7

    iget-object v0, p0, Lr4/by2;->a:Landroid/content/Context;

    invoke-static {}, Lr4/pb4;->z0()Lr4/za4;

    move-result-object v1

    invoke-static {v0}, Lw2/a;->b(Landroid/content/Context;)Lw2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lw2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v2, 0xb

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lr4/za4;->W(Ljava/lang/String;)Lr4/za4;

    invoke-virtual {v0}, Lw2/a$a;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lr4/za4;->X(Z)Lr4/za4;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lr4/za4;->f0(I)Lr4/za4;

    :cond_1
    invoke-virtual {v1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v0

    check-cast v0, Lr4/pb4;

    return-object v0
.end method

.method public final g(Ljava/util/concurrent/Callable;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lr4/pb4;",
            ">;)",
            "Lj5/i<",
            "Lr4/pb4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/by2;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lj5/l;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object p1

    iget-object v0, p0, Lr4/by2;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lr4/wx2;

    invoke-direct {v1, p0}, Lr4/wx2;-><init>(Lr4/by2;)V

    invoke-virtual {p1, v0, v1}, Lj5/i;->e(Ljava/util/concurrent/Executor;Lj5/e;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
