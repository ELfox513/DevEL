.class public final Lr4/nc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ba3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/ba3<",
        "Lr4/h93;",
        "Lr4/h93;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lr4/h93;",
            ">;"
        }
    .end annotation

    const-class v0, Lr4/h93;

    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lr4/h93;",
            ">;"
        }
    .end annotation

    const-class v0, Lr4/h93;

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/aa3;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lr4/mc3;

    invoke-direct {v0, p1}, Lr4/mc3;-><init>(Lr4/aa3;)V

    return-object v0
.end method
