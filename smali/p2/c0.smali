.class public final Lp2/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/b<",
        "Lp2/b0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lr2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lr2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lp2/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lp2/h0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Lr2/a;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;",
            "Lr7/a<",
            "Lp2/d;",
            ">;",
            "Lr7/a<",
            "Lp2/h0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/c0;->a:Lr7/a;

    iput-object p2, p0, Lp2/c0;->b:Lr7/a;

    iput-object p3, p0, Lp2/c0;->c:Lr7/a;

    iput-object p4, p0, Lp2/c0;->d:Lr7/a;

    return-void
.end method

.method public static a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Lp2/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Lr2/a;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;",
            "Lr7/a<",
            "Lp2/d;",
            ">;",
            "Lr7/a<",
            "Lp2/h0;",
            ">;)",
            "Lp2/c0;"
        }
    .end annotation

    new-instance v0, Lp2/c0;

    invoke-direct {v0, p0, p1, p2, p3}, Lp2/c0;-><init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V

    return-object v0
.end method

.method public static c(Lr2/a;Lr2/a;Ljava/lang/Object;Ljava/lang/Object;)Lp2/b0;
    .locals 1

    new-instance v0, Lp2/b0;

    check-cast p2, Lp2/d;

    check-cast p3, Lp2/h0;

    invoke-direct {v0, p0, p1, p2, p3}, Lp2/b0;-><init>(Lr2/a;Lr2/a;Lp2/d;Lp2/h0;)V

    return-object v0
.end method


# virtual methods
.method public b()Lp2/b0;
    .locals 4

    iget-object v0, p0, Lp2/c0;->a:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/a;

    iget-object v1, p0, Lp2/c0;->b:Lr7/a;

    invoke-interface {v1}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/a;

    iget-object v2, p0, Lp2/c0;->c:Lr7/a;

    invoke-interface {v2}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lp2/c0;->d:Lr7/a;

    invoke-interface {v3}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lp2/c0;->c(Lr2/a;Lr2/a;Ljava/lang/Object;Ljava/lang/Object;)Lp2/b0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lp2/c0;->b()Lp2/b0;

    move-result-object v0

    return-object v0
.end method
