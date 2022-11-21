.class public final Lr4/n1;
.super Lr4/e2;
.source "SourceFile"


# static fields
.field public static volatile i:Ljava/lang/Long;

.field public static final j:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/n1;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V
    .locals 7

    const-string v2, "A1tPgHG2ugzZJCs1M+dp+hmS1POsS+eh/W2v7YCpLDG/34A+E/oOE4ZeCFsAYJwW"

    const-string v3, "qStL+/rRmChGKiFwdmBpG5d//S+c8NqJKVwR4OiL/ms="

    const/16 v6, 0x16

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lr4/n1;->i:Ljava/lang/Long;

    if-nez v0, :cond_1

    sget-object v0, Lr4/n1;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr4/n1;->i:Ljava/lang/Long;

    if-nez v1, :cond_0

    iget-object v1, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sput-object v1, Lr4/n1;->i:Ljava/lang/Long;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lr4/e2;->e:Lr4/za4;

    sget-object v2, Lr4/n1;->i:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr4/za4;->r0(J)Lr4/za4;

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
