.class public final Lr4/oh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/ph2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Landroid/content/Context;

.field public final c:Lr4/wo;


# direct methods
.method public constructor <init>(Lr4/wo;Lr4/i83;Landroid/content/Context;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/oh2;->c:Lr4/wo;

    iput-object p2, p0, Lr4/oh2;->a:Lr4/i83;

    iput-object p3, p0, Lr4/oh2;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/ph2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/oh2;->a:Lr4/i83;

    new-instance v1, Lr4/nh2;

    invoke-direct {v1, p0}, Lr4/nh2;-><init>(Lr4/oh2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
