.class public Lx3/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lx3/c;


# direct methods
.method public constructor <init>(Lx3/c;)V
    .locals 0

    iput-object p1, p0, Lx3/c$d;->a:Lx3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt3/b;)V
    .locals 2
    .param p1    # Lt3/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lt3/b;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lx3/c$d;->a:Lx3/c;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lx3/c;->A()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lx3/c;->o(Lx3/j;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lx3/c$d;->a:Lx3/c;

    invoke-static {v0}, Lx3/c;->e0(Lx3/c;)Lx3/c$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx3/c$d;->a:Lx3/c;

    invoke-static {v0}, Lx3/c;->e0(Lx3/c;)Lx3/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lx3/c$b;->t0(Lt3/b;)V

    :cond_1
    return-void
.end method
