.class public final Lr4/v1;
.super Lr4/e2;
.source "SourceFile"


# instance fields
.field public final i:Z


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V
    .locals 7

    const-string v2, "QXlICfiT7SVSRUb0DD1a74y++UqnSLMKlPOXAn9FNLrl7qN9uprYrk5dswjj/dLi"

    const-string v3, "yqGfvaGOT1fOScq8M0g9vywM6jvcTWdjxf27npfqtn0="

    const/16 v6, 0x3d

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-virtual {p1}, Lr4/v0;->l()Z

    move-result p1

    iput-boolean p1, p0, Lr4/v1;->i:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v2}, Lr4/v0;->c()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lr4/v1;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lr4/e2;->e:Lr4/za4;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lr4/e2;->e:Lr4/za4;

    invoke-virtual {v3, v0, v1}, Lr4/za4;->S(J)Lr4/za4;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
