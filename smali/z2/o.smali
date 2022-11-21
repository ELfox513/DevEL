.class public final Lz2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lr4/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz2/s;


# direct methods
.method public constructor <init>(Lz2/s;)V
    .locals 0

    iput-object p1, p0, Lz2/o;->a:Lz2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lz2/o;->a:Lz2/s;

    invoke-static {v0}, Lz2/s;->l7(Lz2/s;)Lr4/im0;

    move-result-object v0

    iget-object v0, v0, Lr4/im0;->a:Ljava/lang/String;

    iget-object v1, p0, Lz2/o;->a:Lz2/s;

    invoke-static {v1}, Lz2/s;->n7(Lz2/s;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lr4/t;->v(Ljava/lang/String;Landroid/content/Context;Z)Lr4/t;

    move-result-object v0

    new-instance v1, Lr4/u;

    invoke-direct {v1, v0}, Lr4/u;-><init>(Lr4/q;)V

    return-object v1
.end method
