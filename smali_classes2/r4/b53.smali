.class public abstract Lr4/b53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lr4/b53;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lr4/b53<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lr4/z43;->a:Lr4/z43;

    return-object v0
.end method

.method public static c(Ljava/util/Comparator;)Lr4/b53;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lr4/b53<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lr4/b53;

    if-eqz v0, :cond_0

    check-cast p0, Lr4/b53;

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/y23;

    invoke-direct {v0, p0}, Lr4/y23;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Lr4/b53;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lr4/b53<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Lr4/l53;

    invoke-direct {v0, p0}, Lr4/l53;-><init>(Lr4/b53;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method
