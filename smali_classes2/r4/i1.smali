.class public final Lr4/i1;
.super Lr4/e2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V
    .locals 7

    const-string v2, "BEk7ZnZgUEtCcnEVmnqrsudDaU91B7wv3jOIcYFOdixfCZNd4CeUtXw9CNec1bEk"

    const-string v3, "yo4aeX8SQAYiyb+wCfW6Y7Ut6lHDx7k9wp/IaZ/McDY="

    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lr4/za4;->i0(J)Lr4/za4;

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    invoke-virtual {v0, v1, v2}, Lr4/za4;->j0(J)Lr4/za4;

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

    check-cast v0, [I

    iget-object v2, p0, Lr4/e2;->e:Lr4/za4;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lr4/e2;->e:Lr4/za4;

    aget v4, v0, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lr4/za4;->i0(J)Lr4/za4;

    iget-object v3, p0, Lr4/e2;->e:Lr4/za4;

    aget v1, v0, v1

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lr4/za4;->j0(J)Lr4/za4;

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lr4/e2;->e:Lr4/za4;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lr4/za4;->P(J)Lr4/za4;

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
