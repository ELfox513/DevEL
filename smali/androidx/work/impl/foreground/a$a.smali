.class public Landroidx/work/impl/foreground/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/foreground/a;->i(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/work/impl/WorkDatabase;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Landroidx/work/impl/foreground/a;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/foreground/a$a;->d:Landroidx/work/impl/foreground/a;

    iput-object p2, p0, Landroidx/work/impl/foreground/a$a;->a:Landroidx/work/impl/WorkDatabase;

    iput-object p3, p0, Landroidx/work/impl/foreground/a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/foreground/a$a;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Lf1/q;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/foreground/a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf1/q;->m(Ljava/lang/String;)Lf1/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf1/p;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/work/impl/foreground/a$a;->d:Landroidx/work/impl/foreground/a;

    iget-object v1, v1, Landroidx/work/impl/foreground/a;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/foreground/a$a;->d:Landroidx/work/impl/foreground/a;

    iget-object v2, v2, Landroidx/work/impl/foreground/a;->r:Ljava/util/Map;

    iget-object v3, p0, Landroidx/work/impl/foreground/a$a;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/impl/foreground/a$a;->d:Landroidx/work/impl/foreground/a;

    iget-object v2, v2, Landroidx/work/impl/foreground/a;->s:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/work/impl/foreground/a$a;->d:Landroidx/work/impl/foreground/a;

    iget-object v2, v0, Landroidx/work/impl/foreground/a;->t:Lb1/d;

    iget-object v0, v0, Landroidx/work/impl/foreground/a;->s:Ljava/util/Set;

    invoke-virtual {v2, v0}, Lb1/d;->d(Ljava/lang/Iterable;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
