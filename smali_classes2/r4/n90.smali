.class public final Lr4/n90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/zm0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/zm0<",
        "Lr4/j80;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/o90;


# direct methods
.method public constructor <init>(Lr4/o90;)V
    .locals 0

    iput-object p1, p0, Lr4/n90;->a:Lr4/o90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lr4/j80;

    sget-object v0, Lr4/qm0;->e:Lr4/i83;

    new-instance v1, Lr4/m90;

    invoke-direct {v1, p0, p1}, Lr4/m90;-><init>(Lr4/n90;Lr4/j80;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
