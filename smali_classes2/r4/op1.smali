.class public final synthetic Lr4/op1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qt0;


# instance fields
.field public final a:Lr4/vm0;


# direct methods
.method public constructor <init>(Lr4/vm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/op1;->a:Lr4/vm0;

    return-void
.end method


# virtual methods
.method public final R(Z)V
    .locals 2

    iget-object v0, p0, Lr4/op1;->a:Lr4/vm0;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "Ad Web View failed to load."

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
