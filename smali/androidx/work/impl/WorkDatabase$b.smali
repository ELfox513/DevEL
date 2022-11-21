.class public Landroidx/work/impl/WorkDatabase$b;
.super Ln0/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->u()Ln0/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln0/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lq0/b;)V
    .locals 1

    invoke-super {p0, p1}, Ln0/e$b;->c(Lq0/b;)V

    invoke-interface {p1}, Lq0/b;->u()V

    :try_start_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lq0/b;->B(Ljava/lang/String;)V

    invoke-interface {p1}, Lq0/b;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lq0/b;->s0()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lq0/b;->s0()V

    throw v0
.end method
