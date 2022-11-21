.class public final Lr4/ia1;
.super Lr4/yc1;
.source "SourceFile"

# interfaces
.implements Lr4/la1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/yc1<",
        "Lr4/la1;",
        ">;",
        "Lr4/la1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/la1;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr4/yc1;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final Q(Z)V
    .locals 1

    new-instance p1, Lr4/ha1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lr4/ha1;-><init>(Z)V

    invoke-virtual {p0, p1}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method
