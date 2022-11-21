.class public final synthetic Lr4/aa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/ca2;


# direct methods
.method public constructor <init>(Lr4/ca2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/aa2;->a:Lr4/ca2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/aa2;->a:Lr4/ca2;

    iget-object v0, v0, Lr4/ca2;->c:Lr4/da2;

    invoke-static {v0}, Lr4/da2;->d(Lr4/da2;)Lr4/q92;

    move-result-object v0

    invoke-virtual {v0}, Lr4/q92;->d()Lr4/y81;

    move-result-object v0

    invoke-interface {v0}, Lr4/y81;->d()V

    return-void
.end method
