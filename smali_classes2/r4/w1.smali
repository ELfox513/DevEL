.class public final Lr4/w1;
.super Lr4/e2;
.source "SourceFile"


# instance fields
.field public final i:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    const-string v2, "FW/4CvJE7gSaOIcNy9aPqAkZHcIOptuimuYgHtkFyrZcR+XexyybvWr2/z62L/0t"

    const-string v3, "gw9HX1g5D/FveKxEJmgn0Xdlo8h06mYt4u8/nHkUo04="

    const/16 v6, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    iput-object p7, p0, Lr4/w1;->i:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lr4/w1;->i:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lr4/n0;

    invoke-direct {v1, v0}, Lr4/n0;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v4, v1, Lr4/n0;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lr4/za4;->z(J)Lr4/za4;

    iget-object v3, v1, Lr4/n0;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v1, v1, Lr4/n0;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 v2, 0x2

    :cond_0
    invoke-virtual {v3, v2}, Lr4/za4;->b0(I)Lr4/za4;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr4/e2;->e:Lr4/za4;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lr4/za4;->b0(I)Lr4/za4;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method
