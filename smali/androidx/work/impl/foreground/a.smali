.class public Landroidx/work/impl/foreground/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/c;
.implements Lx0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/foreground/a$b;
    }
.end annotation


# static fields
.field public static final v:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lx0/i;

.field public final d:Li1/a;

.field public final k:Ljava/lang/Object;

.field public p:Ljava/lang/String;

.field public final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf1/p;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lf1/p;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lb1/d;

.field public u:Landroidx/work/impl/foreground/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    invoke-static {v0}, Lw0/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/a;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->k:Ljava/lang/Object;

    invoke-static {p1}, Lx0/i;->n(Landroid/content/Context;)Lx0/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->b:Lx0/i;

    invoke-virtual {p1}, Lx0/i;->s()Li1/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->d:Li1/a;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->q:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->s:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->r:Ljava/util/Map;

    new-instance v0, Lb1/d;

    iget-object v1, p0, Landroidx/work/impl/foreground/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lb1/d;-><init>(Landroid/content/Context;Li1/a;Lb1/c;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->t:Lb1/d;

    iget-object p1, p0, Landroidx/work/impl/foreground/a;->b:Lx0/i;

    invoke-virtual {p1}, Lx0/i;->p()Lx0/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lx0/d;->c(Lx0/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lw0/e;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_NOTIFY"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lw0/e;->c()I

    move-result p0

    const-string v1, "KEY_NOTIFICATION_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2}, Lw0/e;->a()I

    move-result p0

    const-string v1, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2}, Lw0/e;->b()Landroid/app/Notification;

    move-result-object p0

    const-string p2, "KEY_NOTIFICATION"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lw0/e;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lw0/e;->c()I

    move-result v1

    const-string v2, "KEY_NOTIFICATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2}, Lw0/e;->a()I

    move-result v1

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2}, Lw0/e;->b()Landroid/app/Notification;

    move-result-object p2

    const-string v1, "KEY_NOTIFICATION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/foreground/a;->v:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints unmet for WorkSpec %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/work/impl/foreground/a;->b:Lx0/i;

    invoke-virtual {v1, v0}, Lx0/i;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 7

    iget-object p2, p0, Landroidx/work/impl/foreground/a;->k:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/work/impl/foreground/a;->s:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->t:Lb1/d;

    iget-object v2, p0, Landroidx/work/impl/foreground/a;->s:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lb1/d;->d(Ljava/lang/Iterable;)V

    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroidx/work/impl/foreground/a;->q:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lw0/e;

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/e;

    iget-object v2, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    invoke-virtual {v0}, Lw0/e;->c()I

    move-result v3

    invoke-virtual {v0}, Lw0/e;->a()I

    move-result v4

    invoke-virtual {v0}, Lw0/e;->b()Landroid/app/Notification;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroidx/work/impl/foreground/a$b;->c(IILandroid/app/Notification;)V

    iget-object v2, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    invoke-virtual {v0}, Lw0/e;->c()I

    move-result v0

    invoke-interface {v2, v0}, Landroidx/work/impl/foreground/a$b;->e(I)V

    :cond_3
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/foreground/a;->v:Ljava/lang/String;

    const-string v4, "Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lw0/e;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 p1, 0x2

    invoke-virtual {p2}, Lw0/e;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, p1, v1}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lw0/e;->c()I

    move-result p1

    invoke-interface {v0, p1}, Landroidx/work/impl/foreground/a$b;->e(I)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final g(Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/a;->v:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Stopping foreground work for %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v0, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->b:Lx0/i;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx0/i;->i(Ljava/util/UUID;)Lw0/m;

    :cond_0
    return-void
.end method

.method public final h(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_NOTIFICATION"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/foreground/a;->v:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "Notifying with (id: %s, workSpecId: %s, notificationType: %s)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    if-eqz p1, :cond_2

    iget-object v4, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    if-eqz v4, :cond_2

    new-instance v4, Lw0/e;

    invoke-direct {v4, v0, p1, v2}, Lw0/e;-><init>(ILandroid/app/Notification;I)V

    iget-object v5, p0, Landroidx/work/impl/foreground/a;->q:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v3, p0, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    invoke-interface {v1, v0, v2, p1}, Landroidx/work/impl/foreground/a$b;->c(IILandroid/app/Notification;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    invoke-interface {v3, v0, p1}, Landroidx/work/impl/foreground/a$b;->d(ILandroid/app/Notification;)V

    if-eqz v2, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Landroidx/work/impl/foreground/a;->q:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/e;

    invoke-virtual {v0}, Lw0/e;->a()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/work/impl/foreground/a;->q:Ljava/util/Map;

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->p:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/e;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    invoke-virtual {p1}, Lw0/e;->c()I

    move-result v2

    invoke-virtual {p1}, Lw0/e;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-interface {v0, v2, v1, p1}, Landroidx/work/impl/foreground/a$b;->c(IILandroid/app/Notification;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final i(Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/a;->v:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Started foreground service %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v0, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->b:Lx0/i;

    invoke-virtual {v0}, Lx0/i;->r()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/foreground/a;->d:Li1/a;

    new-instance v2, Landroidx/work/impl/foreground/a$a;

    invoke-direct {v2, p0, v0, p1}, Landroidx/work/impl/foreground/a$a;-><init>(Landroidx/work/impl/foreground/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Li1/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j(Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/a;->v:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Stopping foreground service"

    invoke-virtual {p1, v0, v2, v1}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object p1, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/work/impl/foreground/a$b;->stop()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/foreground/a;->t:Lb1/d;

    invoke-virtual {v1}, Lb1/d;->e()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->b:Lx0/i;

    invoke-virtual {v0}, Lx0/i;->p()Lx0/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx0/d;->i(Lx0/b;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public l(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_START_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->i(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->h(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "ACTION_NOTIFY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->h(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "ACTION_CANCEL_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->g(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->j(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public m(Landroidx/work/impl/foreground/a$b;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    if-eqz v0, :cond_0

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/a;->v:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "A callback already exists."

    invoke-virtual {p1, v0, v2, v1}, Lw0/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/work/impl/foreground/a;->u:Landroidx/work/impl/foreground/a$b;

    return-void
.end method
