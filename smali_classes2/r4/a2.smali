.class public final Lr4/a2;
.super Lr4/e2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V
    .locals 7

    const-string v2, "TDjQ/ClZ1A6U11LRle5Q8IpNZYzzk0FLHirJ3MQW6+Xmi/90o6gFxPcIONwzxlWm"

    const-string v3, "ZlhR2acRJ5DFhes+PG5pnG7AissVCA1YeE0si8KUOuk="

    const/16 v6, 0x30

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lr4/za4;->Z(I)Lr4/za4;

    iget-object v0, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v3}, Lr4/v0;->c()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lr4/e2;->e:Lr4/za4;

    monitor-enter v2

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lr4/za4;->Z(I)Lr4/za4;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    invoke-virtual {v0, v1}, Lr4/za4;->Z(I)Lr4/za4;

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
