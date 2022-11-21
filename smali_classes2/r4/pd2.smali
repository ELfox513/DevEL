.class public final Lr4/pd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/qd2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Lr4/iv1;


# direct methods
.method public constructor <init>(Lr4/i83;Lr4/iv1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pd2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/pd2;->b:Lr4/iv1;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/qd2;
    .locals 4

    new-instance v0, Lr4/qd2;

    iget-object v1, p0, Lr4/pd2;->b:Lr4/iv1;

    invoke-virtual {v1}, Lr4/iv1;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lr4/pd2;->b:Lr4/iv1;

    invoke-virtual {v2}, Lr4/iv1;->d()Z

    move-result v2

    invoke-static {}, Lz2/t;->n()Lb3/c0;

    move-result-object v3

    invoke-virtual {v3}, Lb3/c0;->k()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lr4/qd2;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/qd2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/pd2;->a:Lr4/i83;

    new-instance v1, Lr4/od2;

    invoke-direct {v1, p0}, Lr4/od2;-><init>(Lr4/pd2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
