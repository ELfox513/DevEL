.class public final Lr4/ro0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/co0;

.field public b:Z


# direct methods
.method public constructor <init>(Lr4/co0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/ro0;->b:Z

    iput-object p1, p0, Lr4/ro0;->a:Lr4/co0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/ro0;->b:Z

    iget-object v0, p0, Lr4/ro0;->a:Lr4/co0;

    invoke-virtual {v0}, Lr4/co0;->o()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/ro0;->b:Z

    invoke-virtual {p0}, Lr4/ro0;->c()V

    return-void
.end method

.method public final c()V
    .locals 3

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lr4/ro0;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/ro0;->a:Lr4/co0;

    invoke-virtual {v0}, Lr4/co0;->o()V

    invoke-virtual {p0}, Lr4/ro0;->c()V

    :cond_0
    return-void
.end method
