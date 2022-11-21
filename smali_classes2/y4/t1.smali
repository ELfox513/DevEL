.class public final Ly4/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly4/k1<",
        "Ly4/s1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly4/n1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/n1<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/t1;->a:Ly4/n1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    sget-object v0, Ly4/g1;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ly4/m1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ly4/s1;

    invoke-direct {v1, v0}, Ly4/s1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
