.class public abstract Lh2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lh2/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh2/m;",
            ">;)",
            "Lh2/j;"
        }
    .end annotation

    new-instance v0, Lh2/d;

    invoke-direct {v0, p0}, Lh2/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b()Ll6/a;
    .locals 2

    new-instance v0, Ln6/d;

    invoke-direct {v0}, Ln6/d;-><init>()V

    sget-object v1, Lh2/b;->a:Lm6/a;

    invoke-virtual {v0, v1}, Ln6/d;->j(Lm6/a;)Ln6/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln6/d;->k(Z)Ln6/d;

    move-result-object v0

    invoke-virtual {v0}, Ln6/d;->i()Ll6/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh2/m;",
            ">;"
        }
    .end annotation
.end method
