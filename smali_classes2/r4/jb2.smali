.class public final Lr4/jb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/kb2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Lr4/hp2;

.field public final c:Lr4/im0;

.field public final d:Lr4/rl0;


# direct methods
.method public constructor <init>(Lr4/i83;Lr4/hp2;Lr4/im0;Lr4/rl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/jb2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/jb2;->b:Lr4/hp2;

    iput-object p3, p0, Lr4/jb2;->c:Lr4/im0;

    iput-object p4, p0, Lr4/jb2;->d:Lr4/rl0;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/kb2;
    .locals 4

    new-instance v0, Lr4/kb2;

    iget-object v1, p0, Lr4/jb2;->b:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->j:Lr4/eu;

    iget-object v2, p0, Lr4/jb2;->c:Lr4/im0;

    iget-object v3, p0, Lr4/jb2;->d:Lr4/rl0;

    invoke-virtual {v3}, Lr4/rl0;->i()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lr4/kb2;-><init>(Lr4/eu;Lr4/im0;Z)V

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/kb2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/jb2;->a:Lr4/i83;

    new-instance v1, Lr4/ib2;

    invoke-direct {v1, p0}, Lr4/ib2;-><init>(Lr4/jb2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
