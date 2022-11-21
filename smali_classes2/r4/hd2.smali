.class public final Lr4/hd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/id2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Lr4/hp2;


# direct methods
.method public constructor <init>(Lr4/i83;Lr4/hp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hd2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/hd2;->b:Lr4/hp2;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/id2;
    .locals 3

    new-instance v0, Lr4/id2;

    iget-object v1, p0, Lr4/hd2;->b:Lr4/hp2;

    invoke-static {v1}, Lh3/p;->d(Lr4/hp2;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requester_type_2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, v1}, Lr4/id2;-><init>(Z)V

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/id2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/hd2;->a:Lr4/i83;

    new-instance v1, Lr4/gd2;

    invoke-direct {v1, p0}, Lr4/gd2;-><init>(Lr4/hd2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
