.class public abstract Lf2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)Lf2/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lf2/c<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lf2/a;

    sget-object v1, Lf2/d;->a:Lf2/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lf2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lf2/d;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lf2/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lf2/c<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lf2/a;

    sget-object v1, Lf2/d;->d:Lf2/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lf2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lf2/d;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract c()Lf2/d;
.end method
