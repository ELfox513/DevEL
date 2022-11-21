.class public final Lr4/vi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/wi2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;


# direct methods
.method public constructor <init>(Lr4/i83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vi2;->a:Lr4/i83;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/wi2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/vi2;->a:Lr4/i83;

    sget-object v1, Lr4/ui2;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
