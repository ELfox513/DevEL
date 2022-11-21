.class public final Lh3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/e73<",
        "Lr4/og0;",
        "Lh3/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lr4/rw1;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lr4/rw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/h;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lh3/h;->b:Lr4/rw1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lr4/h83;
    .locals 2

    check-cast p1, Lr4/og0;

    iget-object v0, p0, Lh3/h;->b:Lr4/rw1;

    invoke-virtual {v0, p1}, Lr4/rw1;->a(Lr4/og0;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lh3/g;

    invoke-direct {v1, p1}, Lh3/g;-><init>(Lr4/og0;)V

    iget-object p1, p0, Lh3/h;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
