.class public Lh7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lc7/a;


# instance fields
.field public final a:Ljava/lang/Runtime;

.field public final b:Landroid/app/ActivityManager;

.field public final c:Landroid/app/ActivityManager$MemoryInfo;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Lh7/f;->f:Lc7/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lh7/f;-><init>(Ljava/lang/Runtime;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runtime;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7/f;->a:Ljava/lang/Runtime;

    iput-object p2, p0, Lh7/f;->e:Landroid/content/Context;

    const-string p1, "activity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lh7/f;->b:Landroid/app/ActivityManager;

    new-instance p2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object p2, p0, Lh7/f;->c:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-virtual {p0}, Lh7/f;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh7/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p0, Lh7/f;->b:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_0

    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lh7/f;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 3

    sget-object v0, Lj7/g;->q:Lj7/g;

    iget-object v1, p0, Lh7/f;->c:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v0, v1, v2}, Lj7/g;->c(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj7/k;->c(J)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 3

    sget-object v0, Lj7/g;->q:Lj7/g;

    iget-object v1, p0, Lh7/f;->a:Ljava/lang/Runtime;

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj7/g;->c(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj7/k;->c(J)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 3

    sget-object v0, Lj7/g;->k:Lj7/g;

    iget-object v1, p0, Lh7/f;->b:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj7/g;->c(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj7/k;->c(J)I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh7/f;->d:Ljava/lang/String;

    return-object v0
.end method
