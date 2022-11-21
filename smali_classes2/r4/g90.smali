.class public final Lr4/g90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/zm0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/zm0<",
        "Lr4/q90;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr4/j90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lr4/q90;

    const-string v0, "Ending javascript session."

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    check-cast p1, Lr4/r90;

    invoke-virtual {p1}, Lr4/r90;->a()V

    return-void
.end method
