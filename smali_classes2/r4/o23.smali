.class public final Lr4/o23;
.super Lr4/r23;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/r23<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic p:Lr4/w23;


# direct methods
.method public constructor <init>(Lr4/w23;)V
    .locals 1

    iput-object p1, p0, Lr4/o23;->p:Lr4/w23;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lr4/r23;-><init>(Lr4/w23;Lr4/u23;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lr4/t23;

    iget-object v1, p0, Lr4/o23;->p:Lr4/w23;

    invoke-direct {v0, v1, p1}, Lr4/t23;-><init>(Lr4/w23;I)V

    return-object v0
.end method
