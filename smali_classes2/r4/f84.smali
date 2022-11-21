.class public final Lr4/f84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/q84;

.field public final b:Lr4/w84;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lr4/q84;Lr4/w84;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f84;->a:Lr4/q84;

    iput-object p2, p0, Lr4/f84;->b:Lr4/w84;

    iput-object p3, p0, Lr4/f84;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/f84;->a:Lr4/q84;

    invoke-virtual {v0}, Lr4/q84;->A()Z

    iget-object v0, p0, Lr4/f84;->b:Lr4/w84;

    invoke-virtual {v0}, Lr4/w84;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/f84;->a:Lr4/q84;

    iget-object v1, p0, Lr4/f84;->b:Lr4/w84;

    iget-object v1, v1, Lr4/w84;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lr4/q84;->I(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/f84;->a:Lr4/q84;

    iget-object v1, p0, Lr4/f84;->b:Lr4/w84;

    iget-object v1, v1, Lr4/w84;->c:Lr4/z84;

    invoke-virtual {v0, v1}, Lr4/q84;->J(Lr4/z84;)V

    :goto_0
    iget-object v0, p0, Lr4/f84;->b:Lr4/w84;

    iget-boolean v0, v0, Lr4/w84;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/f84;->a:Lr4/q84;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lr4/q84;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lr4/f84;->a:Lr4/q84;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lr4/q84;->j(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lr4/f84;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
