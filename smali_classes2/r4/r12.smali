.class public final Lr4/r12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DelegateT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "TAdapterT;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/q12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/q12<",
            "TDelegateT;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/p03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/p03<",
            "TDelegateT;TAdapterT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/q12;Lr4/p03;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/q12<",
            "TDelegateT;>;",
            "Lr4/p03<",
            "TDelegateT;TAdapterT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/r12;->a:Lr4/q12;

    iput-object p2, p0, Lr4/r12;->b:Lr4/p03;

    return-void
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;)Z
    .locals 1

    iget-object v0, p0, Lr4/r12;->a:Lr4/q12;

    invoke-interface {v0, p1, p2}, Lr4/q12;->a(Lr4/bp2;Lr4/no2;)Z

    move-result p1

    return p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            ")",
            "Lr4/h83<",
            "TAdapterT;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/r12;->a:Lr4/q12;

    invoke-interface {v0, p1, p2}, Lr4/q12;->b(Lr4/bp2;Lr4/no2;)Lr4/h83;

    move-result-object p1

    iget-object p2, p0, Lr4/r12;->b:Lr4/p03;

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    invoke-static {p1, p2, v0}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
