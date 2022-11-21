.class public Lx5/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/l;->g(Le6/e;)Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lj5/i<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le6/e;

.field public final synthetic b:Lx5/l;


# direct methods
.method public constructor <init>(Lx5/l;Le6/e;)V
    .locals 0

    iput-object p1, p0, Lx5/l$a;->b:Lx5/l;

    iput-object p2, p0, Lx5/l$a;->a:Le6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx5/l$a;->b:Lx5/l;

    iget-object v1, p0, Lx5/l$a;->a:Le6/e;

    invoke-static {v0, v1}, Lx5/l;->a(Lx5/l;Le6/e;)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx5/l$a;->a()Lj5/i;

    move-result-object v0

    return-object v0
.end method
