.class public final Lb5/vf;
.super Lb5/j;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "internal.appMetadata"

    invoke-direct {p0, p1}, Lb5/j;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lb5/vf;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a(Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/v4;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;)",
            "Lb5/q;"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lb5/vf;->d:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lb5/x6;->b(Ljava/lang/Object;)Lb5/q;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lb5/q;->c:Lb5/q;

    return-object p1
.end method
