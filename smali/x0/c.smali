.class public Lx0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/m;


# instance fields
.field public final c:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Lw0/m$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lh1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh1/d<",
            "Lw0/m$b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Lx0/c;->c:Landroidx/lifecycle/m;

    invoke-static {}, Lh1/d;->u()Lh1/d;

    move-result-object v0

    iput-object v0, p0, Lx0/c;->d:Lh1/d;

    sget-object v0, Lw0/m;->b:Lw0/m$b$b;

    invoke-virtual {p0, v0}, Lx0/c;->a(Lw0/m$b;)V

    return-void
.end method


# virtual methods
.method public a(Lw0/m$b;)V
    .locals 1

    iget-object v0, p0, Lx0/c;->c:Landroidx/lifecycle/m;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/m;->j(Ljava/lang/Object;)V

    instance-of v0, p1, Lw0/m$b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/c;->d:Lh1/d;

    check-cast p1, Lw0/m$b$c;

    invoke-virtual {v0, p1}, Lh1/d;->q(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lw0/m$b$a;

    if-eqz v0, :cond_1

    check-cast p1, Lw0/m$b$a;

    iget-object v0, p0, Lx0/c;->d:Lh1/d;

    invoke-virtual {p1}, Lw0/m$b$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh1/d;->r(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
