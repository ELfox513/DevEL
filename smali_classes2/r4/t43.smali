.class public final Lr4/t43;
.super Lr4/s43;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/u43;


# direct methods
.method public constructor <init>(Lr4/u43;I)V
    .locals 0

    iput-object p1, p0, Lr4/t43;->a:Lr4/u43;

    invoke-direct {p0}, Lr4/s43;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lr4/d43;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lr4/d43<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/t43;->a:Lr4/u43;

    invoke-virtual {v0}, Lr4/u43;->a()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lr4/r43;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lr4/r43;-><init>(I)V

    new-instance v2, Lr4/x43;

    invoke-direct {v2, v0, v1}, Lr4/x43;-><init>(Ljava/util/Map;Lr4/m13;)V

    return-object v2
.end method
