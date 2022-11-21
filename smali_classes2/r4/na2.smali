.class public final Lr4/na2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# instance fields
.field public final a:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lr4/h83;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/na2;->a:Lr4/h83;

    iput-object p2, p0, Lr4/na2;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83;"
        }
    .end annotation

    iget-object v0, p0, Lr4/na2;->a:Lr4/h83;

    sget-object v1, Lr4/la2;->a:Lr4/e73;

    iget-object v2, p0, Lr4/na2;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
