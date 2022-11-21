.class public Lr4/r73;
.super Lr4/s73;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/s73<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/h83;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/s73;-><init>()V

    iput-object p1, p0, Lr4/r73;->a:Lr4/h83;

    return-void
.end method


# virtual methods
.method public final bridge synthetic f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/r73;->a:Lr4/h83;

    return-object v0
.end method

.method public final bridge synthetic h()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lr4/r73;->a:Lr4/h83;

    return-object v0
.end method

.method public final j()Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/r73;->a:Lr4/h83;

    return-object v0
.end method
