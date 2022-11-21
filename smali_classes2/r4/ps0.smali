.class public final synthetic Lr4/ps0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lf4/a;


# direct methods
.method public constructor <init>(Lf4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ps0;->a:Lf4/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/ps0;->a:Lf4/a;

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v1

    invoke-interface {v1, v0}, Lr4/qe0;->U(Lf4/a;)V

    return-void
.end method
