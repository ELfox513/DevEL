.class public final Lg5/o9;
.super Lg5/n;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lg5/p9;


# direct methods
.method public constructor <init>(Lg5/p9;Lg5/x5;)V
    .locals 0

    iput-object p1, p0, Lg5/o9;->e:Lg5/p9;

    invoke-direct {p0, p2}, Lg5/n;-><init>(Lg5/x5;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lg5/o9;->e:Lg5/p9;

    invoke-virtual {v0}, Lg5/p9;->h()V

    iget-object v0, p0, Lg5/o9;->e:Lg5/p9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lg5/o9;->e:Lg5/p9;

    iget-object v0, v0, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->v()V

    return-void
.end method
