.class public Lx5/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/j;->R(Lj5/i;)Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj5/h<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj5/i;

.field public final synthetic b:Lx5/j;


# direct methods
.method public constructor <init>(Lx5/j;Lj5/i;)V
    .locals 0

    iput-object p1, p0, Lx5/j$e;->b:Lx5/j;

    iput-object p2, p0, Lx5/j$e;->a:Lj5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lj5/i;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lx5/j$e;->b(Ljava/lang/Boolean;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Boolean;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx5/j$e;->b:Lx5/j;

    invoke-static {v0}, Lx5/j;->k(Lx5/j;)Lx5/h;

    move-result-object v0

    new-instance v1, Lx5/j$e$a;

    invoke-direct {v1, p0, p1}, Lx5/j$e$a;-><init>(Lx5/j$e;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lx5/h;->h(Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
