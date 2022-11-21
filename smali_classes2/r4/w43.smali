.class public Lr4/w43;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public synthetic constructor <init>(Lr4/v43;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lr4/u43;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lr4/u43<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p0, Lr4/p43;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lr4/p43;-><init>(I)V

    return-object p0
.end method

.method public static b(Ljava/util/Comparator;)Lr4/u43;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lr4/u43<",
            "TK0;>;"
        }
    .end annotation

    new-instance v0, Lr4/q43;

    invoke-direct {v0, p0}, Lr4/q43;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
