.class public final Lr4/yc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/zc2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/i83;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/i83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yc2;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/yc2;->b:Lr4/i83;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/zc2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/yc2;->b:Lr4/i83;

    new-instance v1, Lr4/xc2;

    invoke-direct {v1, p0}, Lr4/xc2;-><init>(Lr4/yc2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
