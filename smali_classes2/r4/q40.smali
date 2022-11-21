.class public final Lr4/q40;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv2/f$b;

.field public final b:Lv2/f$a;

.field public c:Lv2/f;


# direct methods
.method public constructor <init>(Lv2/f$b;Lv2/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/q40;->a:Lv2/f$b;

    iput-object p2, p0, Lr4/q40;->b:Lv2/f$a;

    return-void
.end method

.method public static synthetic a(Lr4/q40;)Lv2/f$b;
    .locals 0

    iget-object p0, p0, Lr4/q40;->a:Lv2/f$b;

    return-object p0
.end method

.method public static synthetic b(Lr4/q40;)Lv2/f$a;
    .locals 0

    iget-object p0, p0, Lr4/q40;->b:Lv2/f$a;

    return-object p0
.end method

.method public static synthetic e(Lr4/q40;Lr4/g30;)Lv2/f;
    .locals 0

    invoke-virtual {p0, p1}, Lr4/q40;->f(Lr4/g30;)Lv2/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Lr4/t30;
    .locals 2

    new-instance v0, Lr4/p40;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr4/p40;-><init>(Lr4/q40;Lr4/n40;)V

    return-object v0
.end method

.method public final d()Lr4/q30;
    .locals 2

    iget-object v0, p0, Lr4/q40;->b:Lv2/f$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lr4/o40;

    invoke-direct {v0, p0, v1}, Lr4/o40;-><init>(Lr4/q40;Lr4/n40;)V

    return-object v0
.end method

.method public final declared-synchronized f(Lr4/g30;)Lv2/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/q40;->c:Lv2/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lr4/h30;

    invoke-direct {v0, p1}, Lr4/h30;-><init>(Lr4/g30;)V

    iput-object v0, p0, Lr4/q40;->c:Lv2/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
