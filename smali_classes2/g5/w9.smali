.class public final Lg5/w9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lg5/pa;

.field public final synthetic b:Lg5/ba;


# direct methods
.method public constructor <init>(Lg5/ba;Lg5/pa;)V
    .locals 0

    iput-object p1, p0, Lg5/w9;->b:Lg5/ba;

    iput-object p2, p0, Lg5/w9;->a:Lg5/pa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg5/w9;->b:Lg5/ba;

    iget-object v1, p0, Lg5/w9;->a:Lg5/pa;

    iget-object v1, v1, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {v1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg5/ba;->U(Ljava/lang/String;)Lg5/h;

    move-result-object v0

    invoke-virtual {v0}, Lg5/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg5/w9;->a:Lg5/pa;

    iget-object v0, v0, Lg5/pa;->G:Ljava/lang/String;

    invoke-static {v0}, Lg5/h;->b(Ljava/lang/String;)Lg5/h;

    move-result-object v0

    invoke-virtual {v0}, Lg5/h;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg5/w9;->b:Lg5/ba;

    iget-object v1, p0, Lg5/w9;->a:Lg5/pa;

    invoke-virtual {v0, v1}, Lg5/ba;->R(Lg5/pa;)Lg5/g5;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g5;->f0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lg5/w9;->b:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    const-string v1, "Analytics storage consent denied. Returning null app instance id"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
