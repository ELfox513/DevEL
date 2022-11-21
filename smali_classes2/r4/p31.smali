.class public final Lr4/p31;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lr4/h83<",
            "+",
            "Lr4/i31;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lr4/h83<",
            "+",
            "Lr4/i31;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/p31;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lr4/i31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr4/p31;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lr4/g42;)Lr4/q12;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/g42<",
            "+",
            "Lr4/i31;",
            ">;)",
            "Lr4/q12<",
            "Lr4/p31;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/r12;

    sget-object v1, Lr4/n31;->a:Lr4/p03;

    invoke-direct {v0, p0, v1}, Lr4/r12;-><init>(Lr4/q12;Lr4/p03;)V

    return-object v0
.end method

.method public static b(Lr4/q12;)Lr4/q12;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/q12<",
            "+",
            "Lr4/i31;",
            ">;)",
            "Lr4/q12<",
            "Lr4/p31;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/r12;

    sget-object v1, Lr4/o31;->a:Lr4/p03;

    invoke-direct {v0, p0, v1}, Lr4/r12;-><init>(Lr4/q12;Lr4/p03;)V

    return-object v0
.end method
