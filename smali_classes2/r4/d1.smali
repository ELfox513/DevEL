.class public final Lr4/d1;
.super Lr4/e2;
.source "SourceFile"


# instance fields
.field public final i:Landroid/app/Activity;

.field public final j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    const-string v2, "h8EVC95dwYnFQkP2MhkDIC/tXo0ux4wCcOlQmWH2MzSwaPfcZ/24kCQO32wp6PV0"

    const-string v3, "0H2C2EeQe84lGZgr+dAw2Fmmx+KWvzkBWNdP/wQOLp8="

    const/16 v6, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    iput-object p7, p0, Lr4/d1;->j:Landroid/view/View;

    iput-object p8, p0, Lr4/d1;->i:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lr4/d1;->j:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr4/rz;->J1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lr4/d1;->j:Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lr4/d1;->i:Landroid/app/Activity;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lr4/e2;->e:Lr4/za4;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lr4/e2;->e:Lr4/za4;

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lr4/za4;->T(J)Lr4/za4;

    iget-object v3, p0, Lr4/e2;->e:Lr4/za4;

    aget-object v4, v1, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lr4/za4;->U(J)Lr4/za4;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    aget-object v1, v1, v6

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr4/za4;->V(Ljava/lang/String;)Lr4/za4;

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
