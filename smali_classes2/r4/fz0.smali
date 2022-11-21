.class public final Lr4/fz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/u50<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/iz0;


# direct methods
.method public constructor <init>(Lr4/iz0;)V
    .locals 0

    iput-object p1, p0, Lr4/fz0;->a:Lr4/iz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lr4/fz0;->a:Lr4/iz0;

    invoke-static {p1, p2}, Lr4/iz0;->g(Lr4/iz0;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lr4/fz0;->a:Lr4/iz0;

    invoke-static {p1}, Lr4/iz0;->a(Lr4/iz0;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lr4/ez0;

    invoke-direct {p2, p0}, Lr4/ez0;-><init>(Lr4/fz0;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
