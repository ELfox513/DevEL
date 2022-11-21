.class public final Lr4/v00;
.super Lr4/u00;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/u00<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lr4/u00;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static f(Ljava/lang/String;Z)Lr4/u00;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lr4/u00<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p1, Lr4/v00;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lr4/v00;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object p1
.end method
