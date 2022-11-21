.class public final Lr4/k1;
.super Lr4/e2;
.source "SourceFile"


# instance fields
.field public final i:J


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;JII)V
    .locals 7

    const-string v2, "bwYfemyqKvs+5mX5RaQoUxmdyIG97sQWktW0fw649v7l/u+oM9fVxJ1I47AdFZo9"

    const-string v3, "ue4Q/YADEXoviiBHZurTF9IPPlfQKRVJdzRZ56oggWM="

    const/16 v6, 0x19

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    iput-wide p5, p0, Lr4/k1;->i:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

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

    invoke-virtual {v3, v0, v1}, Lr4/za4;->Y(J)Lr4/za4;

    iget-wide v3, p0, Lr4/k1;->i:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    iget-object v5, p0, Lr4/e2;->e:Lr4/za4;

    sub-long/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Lr4/za4;->p0(J)Lr4/za4;

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    iget-wide v3, p0, Lr4/k1;->i:J

    invoke-virtual {v0, v3, v4}, Lr4/za4;->s0(J)Lr4/za4;

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
